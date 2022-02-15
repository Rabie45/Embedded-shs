#include "internet.h"
#include "rf24.h"
#include <string.h>
struct Node node;
struct NetworkInfo networkInfo;
// RF24 radio(CE_PIN, CSN_PIN);
uint8_t receivedPayloadBuffer[32];
uint8_t transmittedPayloadBuffer[32];
RF24DataPipe availablePipeNo;
void internet_setChannel(uint8_t channel)
{
    RF24_setChannel(channel);
}
void internet_process()
{
    while (RF24_available(&availablePipeNo))
    {
        uint8_t size = RF24_getDynamicPayloadSize();
        RF24_read(receivedPayloadBuffer, size);
        internet_rx(receivedPayloadBuffer, size);
    }
}
void internet_setNetworkPipe(uint8_t *pipe)
{
    memcpy(networkInfo.networkPipe, pipe, 5);
    networkInfo.networkPipe[0] = 0x00;
    RF24_openReadingPipe(RF24_DATA_PIPE_1, networkInfo.networkPipe[0] | node.address);
}
void internet_tx(uint8_t *payload, uint8_t size)
{
    struct Packet *packetHeader = (struct Packet *)payload;
    packetHeader->ttl = 32;
    packetHeader->source = node.address;
    internet_relay(payload, size);
}
void internet_rx(uint8_t *payload, uint8_t size)
{
    struct Packet *packetHeader = (struct Packet *)payload;
    if (packetHeader->destination != node.address)
    {
        internet_relay(payload, size);
        return;
    }
    switch (packetHeader->protocol)
    {
    case PROTOCOL_ICMP:
        // println("Received ICMP packet but it is not supported yet!");
        break;
    case PROTOCOL_TCP:
        // println("Received TCP packet but it is not supported yet!");
        break;
    case PROTOCOL_UDP:
        transport_udp_rx(payload, size);
        break;
    default:
        // ignore, unkown protocol
        break;
    }
}
void internet_relay(uint8_t *payload, uint8_t size)
{
    struct Packet *packetHeader = (struct Packet *)payload;
    if (node.address == 0)
    {
        // no address, cannot relay
        // Serial.println("couldn't relay a packet with node.address=0");
        return;
    }
    uint8_t dstMask = internet_calculateMask(packetHeader->destination);
    uint8_t status;
    if (dstMask > node.mask && internet_hasChild(packetHeader->destination))
    {
        if (packetHeader->destination & node.routingMask)
        {
            networkInfo.networkPipe[0] = node.child1;
            RF24_openReadingPipe(RF24_DATA_PIPE_0, networkInfo.networkPipe); // for ack
            RF24_openWritingPipe(networkInfo.networkPipe);
            RF24_closeDataPipe(RF24_DATA_PIPE_ALL);
            RF24_write(payload, size);
            RF24_openReadingPipe(RF24_DATA_PIPE_0, BASE_PIPE); // restore pipe
        }
        else
        {
            networkInfo.networkPipe[0] = node.child0;
            RF24_openReadingPipe(RF24_DATA_PIPE_0, networkInfo.networkPipe); // for ack
            RF24_openWritingPipe(networkInfo.networkPipe);
            RF24_closeDataPipe(RF24_DATA_PIPE_ALL);
            RF24_write(payload, size);
            RF24_openReadingPipe(RF24_DATA_PIPE_0, BASE_PIPE); // restore pipe
        }
    }
    else
    {
        networkInfo.networkPipe[0] = node.address;
        RF24_openReadingPipe(RF24_DATA_PIPE_0, networkInfo.networkPipe); // for ack
        RF24_openWritingPipe(RF24_DATA_PIPE_0);
        RF24_closeDataPipe(RF24_DATA_PIPE_ALL); /////////////////////////
        RF24_write(payload, size);
        RF24_openReadingPipe(RF24_DATA_PIPE_0, BASE_PIPE); // restore pipe
    }
    RF24_startListening(); /////////////////////
}
uint8_t internet_calculateMask(uint8_t address)
{
    uint8_t mask = 0;
    while (address > 1)
    {
        mask = (mask << 1) | 1;
        address >>= 1;
    }
    return mask;
}

void internet_setAddress(uint8_t address)
{
    node.address = address;
    node.mask = internet_calculateMask(address);
    node.routingMask = node.mask + 1;
    node.child0 = (node.address & node.mask) | (node.routingMask << 1);
    node.child1 = (node.address & node.mask) | (node.routingMask << 1) | node.routingMask;
    internet_setNetworkPipe(networkInfo.networkPipe);
}

uint8_t internet_hasChild(uint8_t address)
{
    return (address & node.mask) == (node.address & node.mask);
}
///////////////////////////////
void initializeRF24()
{
    RF24_initialize();
    RF24_openReadingPipe(RF24_DATA_PIPE_0, BASE_PIPE);
    RF24_setDataRate(RF24_DATARATE_1Mbps);
    RF24_setCRCEncoding(RF24_CRC_1_BYTE);
    RF24_enableDynamicPayloadLength(RF24_DATA_PIPE_ALL);
    RF24_setOutputPower(RF24_POWER_MAX);
    RF24_setAutoAck(RF24_DATA_PIPE_ALL, 1); /////////////////////////
    // RF24_setMode(RF24_MODE_RECEIVER);
    RF24_startListening();

    RF24_setPayloadWidth(0, 32);
}
void startListeningBroadcasts()
{
    RF24_setAutoAck(RF24_DATA_PIPE_0, 1);
    RF24_startListening(RF24_MODE_RECEIVER);
}
uint8_t *internet_getTransmissionBuffer()
{
    return transmittedPayloadBuffer;
}
uint8_t *internet_getRecievingBuffer()
{
    return receivedPayloadBuffer;
}

// void internet_setC