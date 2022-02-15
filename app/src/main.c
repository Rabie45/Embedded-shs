/*
Author: Abdallah rabie
https://github.com/Rabie45
Module: -
*/
#include <xc.h>
#include <internet.h>
#include <util.h>

#define LOBBY_CHANNEL 85

const uint8_t NETWORK_PIPE[5] = {0x00, 0xfc, 0xb0, 0xe8, 0xf5};

//  * | | TTL 1-byte | protocol 4-bit  | src 1-byte | dst 1-byte | payload 28-byte |
uint8_t flag = 0;
uint32_t totalReceived = 0;
void main()
{
    initializeRF24();
    internet_setChannel(115);
    internet_setNetworkPipe(NETWORK_PIPE);
    internet_setAddress(2);
    while (1)
    {
        internet_process();
    }
}
void __interrupt() ISR(void)
{
}
void transport_udp_process(uint8_t *payload, uint8_t size, uint8_t port)
{
    

        PROCESS(port, 6, {
                             /* do something*/
                         });
}