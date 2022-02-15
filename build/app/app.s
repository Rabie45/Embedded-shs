subtitle "Microchip MPLAB XC8 C Compiler v2.35 (Free license) build 20211206165544 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 62 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 69 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 76 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 169 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 219 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 281 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 405 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 437 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 457 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 535 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 597 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 637 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 644 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 651 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 658 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 733 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 740 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 811 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 818 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 888 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 895 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 902 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 909 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 967 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1062 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1069 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1076 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1097 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1155 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1258 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1328 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1378 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1440 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1502 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1564 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1621 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1683 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1723 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1757 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1819 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1826 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1833 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2002 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2083 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2090 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2160 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2225 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2232 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2305 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2312 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2319 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2364 "C:\Program Files\Microchip\xc8\v2.35\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_initializeRF24
	FNCALL	_main,_internet_process
	FNCALL	_main,_internet_setAddress
	FNCALL	_main,_internet_setChannel
	FNCALL	_main,_internet_setNetworkPipe
	FNCALL	_internet_setChannel,_RF24_setChannel
	FNCALL	_RF24_setChannel,_writeRegister
	FNCALL	_internet_setAddress,_internet_calculateMask
	FNCALL	_internet_setAddress,_internet_setNetworkPipe
	FNCALL	_internet_setNetworkPipe,_RF24_openReadingPipe
	FNCALL	_internet_setNetworkPipe,_memcpy
	FNCALL	_internet_process,_RF24_available
	FNCALL	_internet_process,_RF24_getDynamicPayloadSize
	FNCALL	_internet_process,_RF24_read
	FNCALL	_internet_process,_internet_rx
	FNCALL	_internet_rx,_internet_relay
	FNCALL	_internet_rx,_transport_udp_rx
	FNCALL	_transport_udp_rx,_transport_udp_process
	FNCALL	_internet_relay,_RF24_closeDataPipe
	FNCALL	_internet_relay,_RF24_openReadingPipe
	FNCALL	_internet_relay,_RF24_openWritingPipe
	FNCALL	_internet_relay,_RF24_startListening
	FNCALL	_internet_relay,_RF24_write
	FNCALL	_internet_relay,_internet_calculateMask
	FNCALL	_internet_relay,_internet_hasChild
	FNCALL	_RF24_write,_SPI_exchangeByte
	FNCALL	_RF24_write,_readStatus
	FNCALL	_RF24_write,_waitMillis
	FNCALL	_RF24_write,_writeRegister
	FNCALL	_RF24_openWritingPipe,_readRegister
	FNCALL	_RF24_openWritingPipe,_writeMultibyteRegister
	FNCALL	_RF24_closeDataPipe,_readRegister
	FNCALL	_RF24_closeDataPipe,_writeRegister
	FNCALL	_RF24_read,_SPI_exchangeByte
	FNCALL	_RF24_read,_readStatus
	FNCALL	_RF24_read,_writeRegister
	FNCALL	_RF24_getDynamicPayloadSize,_SPI_exchangeByte
	FNCALL	_RF24_available,_readStatus
	FNCALL	_initializeRF24,_RF24_enableDynamicPayloadLength
	FNCALL	_initializeRF24,_RF24_initialize
	FNCALL	_initializeRF24,_RF24_openReadingPipe
	FNCALL	_initializeRF24,_RF24_setAutoAck
	FNCALL	_initializeRF24,_RF24_setCRCEncoding
	FNCALL	_initializeRF24,_RF24_setDataRate
	FNCALL	_initializeRF24,_RF24_setOutputPower
	FNCALL	_initializeRF24,_RF24_setPayloadWidth
	FNCALL	_initializeRF24,_RF24_startListening
	FNCALL	_RF24_startListening,_readRegister
	FNCALL	_RF24_startListening,_writeRegister
	FNCALL	_RF24_setPayloadWidth,_writeRegister
	FNCALL	_RF24_setOutputPower,_readRegister
	FNCALL	_RF24_setOutputPower,_writeRegister
	FNCALL	_RF24_setDataRate,_readRegister
	FNCALL	_RF24_setDataRate,_writeRegister
	FNCALL	_RF24_setCRCEncoding,_readRegister
	FNCALL	_RF24_setCRCEncoding,_writeRegister
	FNCALL	_RF24_setAutoAck,_readRegister
	FNCALL	_RF24_setAutoAck,_writeRegister
	FNCALL	_RF24_openReadingPipe,_readRegister
	FNCALL	_RF24_openReadingPipe,_writeMultibyteRegister
	FNCALL	_RF24_openReadingPipe,_writeRegister
	FNCALL	_writeMultibyteRegister,_SPI_exchangeByte
	FNCALL	_RF24_initialize,_readStatus
	FNCALL	_RF24_initialize,_waitMillis
	FNCALL	_RF24_initialize,_writeRegister
	FNCALL	_waitMillis,___wmul
	FNCALL	_waitMillis,_micros
	FNCALL	_readStatus,_SPI_exchangeByte
	FNCALL	_RF24_enableDynamicPayloadLength,_readRegister
	FNCALL	_RF24_enableDynamicPayloadLength,_writeRegister
	FNCALL	_writeRegister,_SPI_exchangeByte
	FNCALL	_readRegister,_SPI_exchangeByte
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"G:/GP/PIC/DHCP/libs/include\internet.h"
	line	13
_BROADCAST_PIPE:
	retlw	0F9h
	retlw	036h
	retlw	0CDh
	retlw	0ACh
	retlw	0E7h
	global __end_of_BROADCAST_PIPE
__end_of_BROADCAST_PIPE:
	global	_NETWORK_PIPE
psect	strings
	file	"G:/GP/PIC/DHCP/app/src/main.c"
	line	12
_NETWORK_PIPE:
	retlw	low(0)
	retlw	0FCh
	retlw	0B0h
	retlw	0E8h
	retlw	0F5h
	global __end_of_NETWORK_PIPE
__end_of_NETWORK_PIPE:
	global	_BASE_PIPE
psect	strings
	file	"G:/GP/PIC/DHCP/libs/include\internet.h"
	line	12
_BASE_PIPE:
	retlw	059h
	retlw	0ECh
	retlw	0ADh
	retlw	0FCh
	retlw	084h
	global __end_of_BASE_PIPE
__end_of_BASE_PIPE:
	global	_NETWORK_PIPE
	global	_BASE_PIPE
	global	_temp1
	global	_temp0
	global	_node
	global	_networkInfo
	global	_availablePipeNo
	global	_receivedPayloadBuffer
	global	_TMR1
_TMR1	set	0xE
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPIF
_SSPIF	set	0x63
	global	_RD3
_RD3	set	0x43
	global	_RD2
_RD2	set	0x42
	global	_TRISD3
_TRISD3	set	0x443
	global	_TRISD2
_TRISD2	set	0x442
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"app.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_temp1:
       ds      1

_temp0:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_node:
       ds      5

_btn1:
       ds      5

__microsMSB:
       ds      4

_totalReceived:
       ds      4

_dubug_getPayLOadSize:
       ds      1

_debug_rf_setup:
       ds      1

_debug_carrier_detect:
       ds      1

_debug_en_aa:
       ds      1

_debug_config_reg:
       ds      1

_debug_channel:
       ds      1

_debug_en_rxaddr:
       ds      1

_debug_status:
       ds      1

_flag:
       ds      1

_networkInfo:
       ds      6

_debug_tx_addr:
       ds      5

_debug_rx_addr_p1:
       ds      5

_debug_rx_addr_p0:
       ds      5

_availablePipeNo:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_transmittedPayloadBuffer:
       ds      32

_receivedPayloadBuffer:
       ds      32

	file	"app.s"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+031h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+040h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initializeRF24:	; 1 bytes @ 0x0
?_internet_setChannel:	; 1 bytes @ 0x0
?_internet_setAddress:	; 1 bytes @ 0x0
?_internet_process:	; 1 bytes @ 0x0
?_RF24_setChannel:	; 1 bytes @ 0x0
?_RF24_getDynamicPayloadSize:	; 1 bytes @ 0x0
?_RF24_available:	; 1 bytes @ 0x0
?_internet_calculateMask:	; 1 bytes @ 0x0
?_internet_hasChild:	; 1 bytes @ 0x0
?_RF24_openWritingPipe:	; 1 bytes @ 0x0
?_RF24_closeDataPipe:	; 1 bytes @ 0x0
?_RF24_startListening:	; 1 bytes @ 0x0
?_RF24_initialize:	; 1 bytes @ 0x0
?_RF24_setDataRate:	; 1 bytes @ 0x0
?_RF24_setCRCEncoding:	; 1 bytes @ 0x0
?_RF24_enableDynamicPayloadLength:	; 1 bytes @ 0x0
?_RF24_setOutputPower:	; 1 bytes @ 0x0
?_waitMillis:	; 1 bytes @ 0x0
?_readStatus:	; 1 bytes @ 0x0
?_SPI_exchangeByte:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
?_readRegister:	; 1 bytes @ 0x0
	ds	2
?_memcpy:	; 1 bytes @ 0x2
??_internet_calculateMask:	; 1 bytes @ 0x2
??_internet_hasChild:	; 1 bytes @ 0x2
??_SPI_exchangeByte:	; 1 bytes @ 0x2
?_transport_udp_process:	; 1 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?_micros
?_micros:	; 4 bytes @ 0x2
	global	transport_udp_process@size
transport_udp_process@size:	; 1 bytes @ 0x2
	global	internet_calculateMask@address
internet_calculateMask@address:	; 1 bytes @ 0x2
	global	SPI_exchangeByte@byte
SPI_exchangeByte@byte:	; 1 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x2
	ds	1
??_RF24_getDynamicPayloadSize:	; 1 bytes @ 0x3
??_readStatus:	; 1 bytes @ 0x3
?_writeRegister:	; 1 bytes @ 0x3
?_writeMultibyteRegister:	; 1 bytes @ 0x3
??_readRegister:	; 1 bytes @ 0x3
	global	transport_udp_process@port
transport_udp_process@port:	; 1 bytes @ 0x3
	global	internet_calculateMask@mask
internet_calculateMask@mask:	; 1 bytes @ 0x3
	global	internet_hasChild@address
internet_hasChild@address:	; 1 bytes @ 0x3
	global	writeRegister@value
writeRegister@value:	; 1 bytes @ 0x3
	global	writeMultibyteRegister@buffer
writeMultibyteRegister@buffer:	; 2 bytes @ 0x3
	ds	1
??_RF24_available:	; 1 bytes @ 0x4
??_writeRegister:	; 1 bytes @ 0x4
??_transport_udp_process:	; 1 bytes @ 0x4
	global	transport_udp_process@payload
transport_udp_process@payload:	; 1 bytes @ 0x4
	global	readRegister@mnemonic_addr
readRegister@mnemonic_addr:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x4
	ds	1
?_transport_udp_rx:	; 1 bytes @ 0x5
	global	writeRegister@mnemonic_addr
writeRegister@mnemonic_addr:	; 1 bytes @ 0x5
	global	writeMultibyteRegister@length
writeMultibyteRegister@length:	; 1 bytes @ 0x5
	global	transport_udp_rx@size
transport_udp_rx@size:	; 1 bytes @ 0x5
	ds	1
??_RF24_setChannel:	; 1 bytes @ 0x6
?_RF24_read:	; 1 bytes @ 0x6
??_memcpy:	; 1 bytes @ 0x6
??_transport_udp_rx:	; 1 bytes @ 0x6
??_RF24_closeDataPipe:	; 1 bytes @ 0x6
??_RF24_startListening:	; 1 bytes @ 0x6
??_RF24_setDataRate:	; 1 bytes @ 0x6
??_RF24_setCRCEncoding:	; 1 bytes @ 0x6
??_RF24_enableDynamicPayloadLength:	; 1 bytes @ 0x6
??_RF24_setOutputPower:	; 1 bytes @ 0x6
?_RF24_setAutoAck:	; 1 bytes @ 0x6
?_RF24_setPayloadWidth:	; 1 bytes @ 0x6
??_micros:	; 1 bytes @ 0x6
??_writeMultibyteRegister:	; 1 bytes @ 0x6
??___wmul:	; 1 bytes @ 0x6
	global	RF24_available@pipeNo
RF24_available@pipeNo:	; 1 bytes @ 0x6
	global	RF24_read@length
RF24_read@length:	; 1 bytes @ 0x6
	global	RF24_setPayloadWidth@width
RF24_setPayloadWidth@width:	; 1 bytes @ 0x6
	global	RF24_setAutoAck@enabledOrDisabled
RF24_setAutoAck@enabledOrDisabled:	; 1 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	ds	1
??_RF24_read:	; 1 bytes @ 0x7
??_RF24_setAutoAck:	; 1 bytes @ 0x7
??_RF24_setPayloadWidth:	; 1 bytes @ 0x7
	global	RF24_setChannel@channel
RF24_setChannel@channel:	; 1 bytes @ 0x7
	global	RF24_setDataRate@rate
RF24_setDataRate@rate:	; 1 bytes @ 0x7
	global	RF24_setOutputPower@power
RF24_setOutputPower@power:	; 1 bytes @ 0x7
	global	RF24_setCRCEncoding@encoding
RF24_setCRCEncoding@encoding:	; 1 bytes @ 0x7
	ds	1
??_internet_setChannel:	; 1 bytes @ 0x8
?_RF24_write:	; 1 bytes @ 0x8
??_RF24_initialize:	; 1 bytes @ 0x8
	global	internet_setChannel@channel
internet_setChannel@channel:	; 1 bytes @ 0x8
	global	writeMultibyteRegister@mnemonic_addr
writeMultibyteRegister@mnemonic_addr:	; 1 bytes @ 0x8
	global	RF24_closeDataPipe@pipe
RF24_closeDataPipe@pipe:	; 1 bytes @ 0x8
	global	RF24_enableDynamicPayloadLength@pipe
RF24_enableDynamicPayloadLength@pipe:	; 1 bytes @ 0x8
	global	RF24_write@length
RF24_write@length:	; 1 bytes @ 0x8
	global	RF24_setPayloadWidth@pipe
RF24_setPayloadWidth@pipe:	; 1 bytes @ 0x8
	global	transport_udp_rx@packetHeader
transport_udp_rx@packetHeader:	; 1 bytes @ 0x8
	ds	1
??_RF24_write:	; 1 bytes @ 0x9
	global	writeMultibyteRegister@i
writeMultibyteRegister@i:	; 1 bytes @ 0x9
	global	transport_udp_rx@payload
transport_udp_rx@payload:	; 1 bytes @ 0x9
	ds	1
??_main:	; 1 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_RF24_openReadingPipe:	; 1 bytes @ 0x0
??_RF24_openWritingPipe:	; 1 bytes @ 0x0
??_waitMillis:	; 1 bytes @ 0x0
	global	RF24_read@buffer
RF24_read@buffer:	; 1 bytes @ 0x0
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0x0
	global	RF24_openReadingPipe@addressBytes
RF24_openReadingPipe@addressBytes:	; 2 bytes @ 0x0
	global	_RF24_setAutoAck$559
_RF24_setAutoAck$559:	; 2 bytes @ 0x0
	ds	1
	global	RF24_openWritingPipe@addressBytes
RF24_openWritingPipe@addressBytes:	; 1 bytes @ 0x1
	global	RF24_read@i
RF24_read@i:	; 1 bytes @ 0x1
	global	memcpy@s
memcpy@s:	; 2 bytes @ 0x1
	ds	1
??_RF24_openReadingPipe:	; 1 bytes @ 0x2
	global	RF24_setAutoAck@pipe
RF24_setAutoAck@pipe:	; 1 bytes @ 0x2
	ds	1
	global	RF24_openReadingPipe@pipe
RF24_openReadingPipe@pipe:	; 1 bytes @ 0x3
	global	memcpy@d1
memcpy@d1:	; 1 bytes @ 0x3
	ds	1
	global	memcpy@d
memcpy@d:	; 1 bytes @ 0x4
	ds	1
?_internet_setNetworkPipe:	; 1 bytes @ 0x5
	global	internet_setNetworkPipe@pipe
internet_setNetworkPipe@pipe:	; 2 bytes @ 0x5
	ds	1
	global	waitMillis@stopTime
waitMillis@stopTime:	; 4 bytes @ 0x6
	ds	1
??_internet_setNetworkPipe:	; 1 bytes @ 0x7
	ds	2
??_internet_setAddress:	; 1 bytes @ 0x9
	ds	1
	global	waitMillis@microSeconds
waitMillis@microSeconds:	; 1 bytes @ 0xA
	ds	1
??_initializeRF24:	; 1 bytes @ 0xB
	global	internet_setAddress@address
internet_setAddress@address:	; 1 bytes @ 0xB
	global	RF24_write@buffer
RF24_write@buffer:	; 1 bytes @ 0xB
	ds	1
?_internet_relay:	; 1 bytes @ 0xC
	global	internet_relay@size
internet_relay@size:	; 1 bytes @ 0xC
	ds	1
??_internet_relay:	; 1 bytes @ 0xD
	ds	1
	global	internet_relay@dstMask
internet_relay@dstMask:	; 1 bytes @ 0xE
	ds	1
	global	internet_relay@packetHeader
internet_relay@packetHeader:	; 1 bytes @ 0xF
	ds	1
	global	internet_relay@payload
internet_relay@payload:	; 1 bytes @ 0x10
	ds	1
?_internet_rx:	; 1 bytes @ 0x11
	global	internet_rx@size
internet_rx@size:	; 1 bytes @ 0x11
	ds	1
??_internet_rx:	; 1 bytes @ 0x12
	ds	2
	global	internet_rx@packetHeader
internet_rx@packetHeader:	; 1 bytes @ 0x14
	ds	1
	global	internet_rx@payload
internet_rx@payload:	; 1 bytes @ 0x15
	ds	1
??_internet_process:	; 1 bytes @ 0x16
	ds	1
	global	internet_process@size
internet_process@size:	; 1 bytes @ 0x17
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    15
;!    Data        0
;!    BSS         115
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     24      73
;!    BANK1            80      0      64
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    transport_udp_process@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    memcpy@d1	PTR void  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    memcpy@d	PTR unsigned char  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    memcpy@s1	PTR const void  size(2) Largest target is 6
;!		 -> networkInfo(BANK0[6]), NETWORK_PIPE(CODE[5]), 
;!
;!    memcpy@s	PTR const unsigned char  size(2) Largest target is 6
;!		 -> networkInfo(BANK0[6]), NETWORK_PIPE(CODE[5]), 
;!
;!    transport_udp_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    transport_udp_rx@packetHeader	PTR struct UDPPacket size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    RF24_write@buffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    RF24_read@buffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    RF24_available@pipeNo	PTR enum E907 size(1) Largest target is 1
;!		 -> availablePipeNo(BANK0[1]), 
;!
;!    RF24_openReadingPipe@addressBytes	PTR unsigned char  size(2) Largest target is 512
;!		 -> BASE_PIPE(CODE[5]), RAM(DATA[512]), networkInfo(BANK0[6]), 
;!
;!    RF24_openWritingPipe@addressBytes	PTR unsigned char  size(1) Largest target is 6
;!		 -> NULL(NULL[0]), networkInfo(BANK0[6]), 
;!
;!    writeMultibyteRegister@buffer	PTR unsigned char  size(2) Largest target is 512
;!		 -> NULL(NULL[0]), BASE_PIPE(CODE[5]), RAM(DATA[512]), networkInfo(BANK0[6]), 
;!
;!    sp__internet_getRecievingBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    sp__internet_getTransmissionBuffer	PTR unsigned char  size(1) Largest target is 32
;!		 -> transmittedPayloadBuffer(BANK1[32]), 
;!
;!    internet_relay@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    internet_relay@packetHeader	PTR struct Packet size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    internet_rx@payload	PTR unsigned char  size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    internet_rx@packetHeader	PTR struct Packet size(1) Largest target is 32
;!		 -> receivedPayloadBuffer(BANK1[32]), 
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 6
;!		 -> networkInfo(BANK0[6]), 
;!
;!    internet_setNetworkPipe@pipe	PTR unsigned char  size(2) Largest target is 6
;!		 -> networkInfo(BANK0[6]), NETWORK_PIPE(CODE[5]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _internet_setChannel->_RF24_setChannel
;!    _RF24_setChannel->_writeRegister
;!    _internet_rx->_transport_udp_rx
;!    _transport_udp_rx->_transport_udp_process
;!    _internet_relay->_RF24_write
;!    _RF24_openWritingPipe->_writeMultibyteRegister
;!    _RF24_closeDataPipe->_writeRegister
;!    _RF24_read->_writeRegister
;!    _RF24_getDynamicPayloadSize->_SPI_exchangeByte
;!    _RF24_available->_readStatus
;!    _RF24_startListening->_writeRegister
;!    _RF24_setPayloadWidth->_writeRegister
;!    _RF24_setOutputPower->_writeRegister
;!    _RF24_setDataRate->_writeRegister
;!    _RF24_setCRCEncoding->_writeRegister
;!    _RF24_setAutoAck->_writeRegister
;!    _RF24_openReadingPipe->_writeMultibyteRegister
;!    _writeMultibyteRegister->_SPI_exchangeByte
;!    _waitMillis->___wmul
;!    _readStatus->_SPI_exchangeByte
;!    _RF24_enableDynamicPayloadLength->_writeRegister
;!    _writeRegister->_SPI_exchangeByte
;!    _readRegister->_SPI_exchangeByte
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_internet_process
;!    _internet_setAddress->_internet_setNetworkPipe
;!    _internet_setNetworkPipe->_memcpy
;!    _internet_process->_internet_rx
;!    _internet_rx->_internet_relay
;!    _internet_relay->_RF24_write
;!    _RF24_write->_waitMillis
;!    _RF24_initialize->_waitMillis
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0   61916
;!                     _initializeRF24
;!                   _internet_process
;!                _internet_setAddress
;!                _internet_setChannel
;!            _internet_setNetworkPipe
;! ---------------------------------------------------------------------------------
;! (1) _internet_setChannel                                  1     1      0    2878
;!                                              8 COMMON     1     1      0
;!                    _RF24_setChannel
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setChannel                                      2     2      0    2847
;!                                              6 COMMON     2     2      0
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (1) _internet_setAddress                                  3     3      0    5310
;!                                              9 BANK0      3     3      0
;!             _internet_calculateMask
;!            _internet_setNetworkPipe
;! ---------------------------------------------------------------------------------
;! (1) _internet_setNetworkPipe                              4     2      2    5179
;!                                              5 BANK0      4     2      2
;!               _RF24_openReadingPipe
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (3) _memcpy                                              10     6      4     424
;!                                              2 COMMON     5     1      4
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _internet_process                                     2     2      0   19748
;!                                             22 BANK0      2     2      0
;!                     _RF24_available
;!         _RF24_getDynamicPayloadSize
;!                          _RF24_read
;!                        _internet_rx
;! ---------------------------------------------------------------------------------
;! (2) _internet_rx                                          5     4      1   16423
;!                                             17 BANK0      5     4      1
;!                     _internet_relay
;!                   _transport_udp_rx
;! ---------------------------------------------------------------------------------
;! (3) _transport_udp_rx                                     5     4      1     422
;!                                              5 COMMON     5     4      1
;!              _transport_udp_process
;! ---------------------------------------------------------------------------------
;! (4) _transport_udp_process                                3     1      2     224
;!                                              2 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (3) _internet_relay                                       6     5      1   15655
;!                                             12 BANK0      5     4      1
;!                 _RF24_closeDataPipe
;!               _RF24_openReadingPipe
;!               _RF24_openWritingPipe
;!                _RF24_startListening
;!                         _RF24_write
;!             _internet_calculateMask
;!                  _internet_hasChild
;! ---------------------------------------------------------------------------------
;! (4) _internet_hasChild                                    2     2      0      22
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _internet_calculateMask                               2     2      0      69
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _RF24_write                                           3     2      1    3696
;!                                              8 COMMON     2     1      1
;!                                             11 BANK0      1     1      0
;!                   _SPI_exchangeByte
;!                         _readStatus
;!                         _waitMillis
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (4) _RF24_openWritingPipe                                 2     2      0     933
;!                                              0 BANK0      2     2      0
;!                       _readRegister
;!             _writeMultibyteRegister
;! ---------------------------------------------------------------------------------
;! (4) _RF24_closeDataPipe                                   3     3      0    2937
;!                                              6 COMMON     3     3      0
;!                       _readRegister
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (2) _RF24_read                                            5     4      1    3131
;!                                              6 COMMON     3     2      1
;!                                              0 BANK0      2     2      0
;!                   _SPI_exchangeByte
;!                         _readStatus
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (2) _RF24_getDynamicPayloadSize                           1     1      0      31
;!                                              3 COMMON     1     1      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_available                                       3     3      0      98
;!                                              4 COMMON     3     3      0
;!                         _readStatus
;! ---------------------------------------------------------------------------------
;! (1) _initializeRF24                                       1     1      0   28801
;!                                             11 BANK0      1     1      0
;!    _RF24_enableDynamicPayloadLength
;!                    _RF24_initialize
;!               _RF24_openReadingPipe
;!                    _RF24_setAutoAck
;!                _RF24_setCRCEncoding
;!                   _RF24_setDataRate
;!                _RF24_setOutputPower
;!               _RF24_setPayloadWidth
;!                _RF24_startListening
;! ---------------------------------------------------------------------------------
;! (4) _RF24_startListening                                  1     1      0    2875
;!                                              6 COMMON     1     1      0
;!                       _readRegister
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setPayloadWidth                                 3     2      1    3182
;!                                              6 COMMON     3     2      1
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setOutputPower                                  2     2      0    2906
;!                                              6 COMMON     2     2      0
;!                       _readRegister
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setDataRate                                     2     2      0    2968
;!                                              6 COMMON     2     2      0
;!                       _readRegister
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setCRCEncoding                                  2     2      0    2937
;!                                              6 COMMON     2     2      0
;!                       _readRegister
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (2) _RF24_setAutoAck                                      6     5      1    3227
;!                                              6 COMMON     3     2      1
;!                                              0 BANK0      3     3      0
;!                       _readRegister
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (2) _RF24_openReadingPipe                                 4     2      2    4544
;!                                              0 BANK0      4     2      2
;!                       _readRegister
;!             _writeMultibyteRegister
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (3) _writeMultibyteRegister                               7     4      3     732
;!                                              3 COMMON     7     4      3
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_initialize                                      1     1      0    3225
;!                                              8 COMMON     1     1      0
;!                         _readStatus
;!                         _waitMillis
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (5) _waitMillis                                          11    11      0     381
;!                                              0 BANK0     11    11      0
;!                             ___wmul
;!                             _micros
;! ---------------------------------------------------------------------------------
;! (6) _micros                                               4     0      4       0
;!                                              2 COMMON     4     0      4
;! ---------------------------------------------------------------------------------
;! (6) ___wmul                                               6     2      4     316
;!                                              2 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (5) _readStatus                                           1     1      0      31
;!                                              3 COMMON     1     1      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (2) _RF24_enableDynamicPayloadLength                      3     3      0    2937
;!                                              6 COMMON     3     3      0
;!                       _readRegister
;!                      _writeRegister
;! ---------------------------------------------------------------------------------
;! (3) _writeRegister                                        3     2      1    2813
;!                                              3 COMMON     3     2      1
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (3) _readRegister                                         2     2      0      62
;!                                              3 COMMON     2     2      0
;!                   _SPI_exchangeByte
;! ---------------------------------------------------------------------------------
;! (4) _SPI_exchangeByte                                     1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _ISR                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initializeRF24
;!     _RF24_enableDynamicPayloadLength
;!       _readRegister
;!         _SPI_exchangeByte
;!       _writeRegister
;!         _SPI_exchangeByte
;!     _RF24_initialize
;!       _readStatus
;!         _SPI_exchangeByte
;!       _waitMillis
;!         ___wmul
;!         _micros
;!       _writeRegister
;!     _RF24_openReadingPipe
;!       _readRegister
;!       _writeMultibyteRegister
;!         _SPI_exchangeByte
;!       _writeRegister
;!     _RF24_setAutoAck
;!       _readRegister
;!       _writeRegister
;!     _RF24_setCRCEncoding
;!       _readRegister
;!       _writeRegister
;!     _RF24_setDataRate
;!       _readRegister
;!       _writeRegister
;!     _RF24_setOutputPower
;!       _readRegister
;!       _writeRegister
;!     _RF24_setPayloadWidth
;!       _writeRegister
;!     _RF24_startListening
;!       _readRegister
;!       _writeRegister
;!   _internet_process
;!     _RF24_available
;!       _readStatus
;!     _RF24_getDynamicPayloadSize
;!       _SPI_exchangeByte
;!     _RF24_read
;!       _SPI_exchangeByte
;!       _readStatus
;!       _writeRegister
;!     _internet_rx
;!       _internet_relay
;!         _RF24_closeDataPipe
;!           _readRegister
;!           _writeRegister
;!         _RF24_openReadingPipe
;!         _RF24_openWritingPipe
;!           _readRegister
;!           _writeMultibyteRegister
;!         _RF24_startListening
;!         _RF24_write
;!           _SPI_exchangeByte
;!           _readStatus
;!           _waitMillis
;!           _writeRegister
;!         _internet_calculateMask
;!         _internet_hasChild
;!       _transport_udp_rx
;!         _transport_udp_process
;!   _internet_setAddress
;!     _internet_calculateMask
;!     _internet_setNetworkPipe
;!       _RF24_openReadingPipe
;!       _memcpy
;!   _internet_setChannel
;!     _RF24_setChannel
;!       _writeRegister
;!   _internet_setNetworkPipe
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      95       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     18      49       5       91.2%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0      40       7       80.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      95      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "G:/GP/PIC/DHCP/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_initializeRF24
;;		_internet_process
;;		_internet_setAddress
;;		_internet_setChannel
;;		_internet_setNetworkPipe
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"G:/GP/PIC/DHCP/app/src/main.c"
	line	17
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"G:/GP/PIC/DHCP/app/src/main.c"
	line	17
	
_main:	
;incstack = 0
	callstack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	19
	
l2324:	
	fcall	_initializeRF24
	line	20
	
l2326:	
	movlw	low(073h)
	fcall	_internet_setChannel
	line	21
	
l2328:	
	movlw	(low((((_NETWORK_PIPE)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_setNetworkPipe@pipe)
	movlw	80h
	movwf	(internet_setNetworkPipe@pipe+1)
	fcall	_internet_setNetworkPipe
	line	22
	
l2330:	
	movlw	low(02h)
	fcall	_internet_setAddress
	line	25
	
l2332:	
	fcall	_internet_process
	goto	l2332
	global	start
	ljmp	start
	callstack 0
	line	28
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_internet_setChannel

;; *************** function _internet_setChannel *****************
;; Defined at:
;;		line 10 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_setChannel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	10
global __ptext1
__ptext1:	;psect for function _internet_setChannel
psect	text1
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	10
	
_internet_setChannel:	
;incstack = 0
	callstack 3
; Regs used in _internet_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(internet_setChannel@channel)
	line	12
	
l2300:	
	movf	(internet_setChannel@channel),w
	fcall	_RF24_setChannel
	line	13
	
l182:	
	return
	callstack 0
GLOBAL	__end_of_internet_setChannel
	__end_of_internet_setChannel:
	signat	_internet_setChannel,4217
	global	_RF24_setChannel

;; *************** function _RF24_setChannel *****************
;; Defined at:
;;		line 85 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_writeRegister
;; This function is called by:
;;		_internet_setChannel
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	85
global __ptext2
__ptext2:	;psect for function _RF24_setChannel
psect	text2
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	85
	
_RF24_setChannel:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setChannel: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setChannel@channel)
	line	87
	
l2132:	
	movlw	low(07Fh)
	movwf	(??_RF24_setChannel+0)+0
	movf	(??_RF24_setChannel+0)+0,w
	andwf	(RF24_setChannel@channel),f
	line	88
	
l2134:	
	movf	(RF24_setChannel@channel),w
	movwf	(??_RF24_setChannel+0)+0
	movf	(??_RF24_setChannel+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(05h)
	fcall	_writeRegister
	line	89
	
l289:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setChannel
	__end_of_RF24_setChannel:
	signat	_RF24_setChannel,4217
	global	_internet_setAddress

;; *************** function _internet_setAddress *****************
;; Defined at:
;;		line 114 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_internet_calculateMask
;;		_internet_setNetworkPipe
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	114
global __ptext3
__ptext3:	;psect for function _internet_setAddress
psect	text3
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	114
	
_internet_setAddress:	
;incstack = 0
	callstack 2
; Regs used in _internet_setAddress: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_setAddress@address)
	line	116
	
l2302:	
	movf	(internet_setAddress@address),w
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	(_node)
	line	117
	
l2304:	
	movf	(internet_setAddress@address),w
	fcall	_internet_calculateMask
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	0+(_node)+01h
	line	118
	
l2306:	
	movf	0+(_node)+01h,w
	addlw	01h
	movwf	(??_internet_setAddress+0)+0
	movf	(??_internet_setAddress+0)+0,w
	movwf	0+(_node)+02h
	line	119
	
l2308:	
	movf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u1155:
	clrc
	rlf	(??_internet_setAddress+0)+0,f
	addlw	-1
	skipz
	goto	u1155
	movf	0+(_node)+01h,w
	andwf	(_node),w
	iorwf	0+(??_internet_setAddress+0)+0,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movwf	0+(_node)+03h
	line	120
	
l2310:	
	movf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+0)+0
	movlw	01h
u1165:
	clrc
	rlf	(??_internet_setAddress+0)+0,f
	addlw	-1
	skipz
	goto	u1165
	movf	0+(_node)+01h,w
	andwf	(_node),w
	iorwf	0+(??_internet_setAddress+0)+0,w
	iorwf	0+(_node)+02h,w
	movwf	(??_internet_setAddress+1)+0
	movf	(??_internet_setAddress+1)+0,w
	movwf	0+(_node)+04h
	line	121
	
l2312:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(internet_setNetworkPipe@pipe)
	movlw	(0x0)
	movwf	(internet_setNetworkPipe@pipe+1)
	fcall	_internet_setNetworkPipe
	line	122
	
l221:	
	return
	callstack 0
GLOBAL	__end_of_internet_setAddress
	__end_of_internet_setAddress:
	signat	_internet_setAddress,4217
	global	_internet_setNetworkPipe

;; *************** function _internet_setNetworkPipe *****************
;; Defined at:
;;		line 23 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  pipe            2    5[BANK0 ] PTR unsigned char 
;;		 -> networkInfo(6), NETWORK_PIPE(5), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_openReadingPipe
;;		_memcpy
;; This function is called by:
;;		_main
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	line	23
global __ptext4
__ptext4:	;psect for function _internet_setNetworkPipe
psect	text4
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	23
	
_internet_setNetworkPipe:	
;incstack = 0
	callstack 3
; Regs used in _internet_setNetworkPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	25
	
l2126:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		movf	(internet_setNetworkPipe@pipe),w
	movwf	(memcpy@s1)
movf	(internet_setNetworkPipe@pipe+1),w
movwf	(memcpy@s1+1)

	movlw	05h
	movwf	(memcpy@n)
	movlw	0
	movwf	((memcpy@n))+1
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_memcpy
	line	26
	
l2128:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_networkInfo)
	line	27
	
l2130:	
	movf	(_networkInfo),w
	iorwf	(_node),w
	movwf	(??_internet_setNetworkPipe+0)+0
	clrf	(??_internet_setNetworkPipe+0)+0+1
		movf	(??_internet_setNetworkPipe+0)+0,w
	movwf	(RF24_openReadingPipe@addressBytes)
movf	(??_internet_setNetworkPipe+0)+1,w
movwf	(RF24_openReadingPipe@addressBytes+1)

	movlw	low(01h)
	fcall	_RF24_openReadingPipe
	line	28
	
l191:	
	return
	callstack 0
GLOBAL	__end_of_internet_setNetworkPipe
	__end_of_internet_setNetworkPipe:
	signat	_internet_setNetworkPipe,4217
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 27 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              1    wreg     PTR void 
;;		 -> networkInfo(6), 
;;  s1              2    2[COMMON] PTR const void 
;;		 -> networkInfo(6), NETWORK_PIPE(5), 
;;  n               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  d1              1    3[BANK0 ] PTR void 
;;		 -> networkInfo(6), 
;;  s               2    1[BANK0 ] PTR const unsigned char 
;;		 -> networkInfo(6), NETWORK_PIPE(5), 
;;  d               1    4[BANK0 ] PTR unsigned char 
;;		 -> networkInfo(6), 
;;  tmp             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       5       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 2
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_setNetworkPipe
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memcpy.c"
	line	27
global __ptext5
__ptext5:	;psect for function _memcpy
psect	text5
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memcpy.c"
	line	27
	
_memcpy:	
;incstack = 0
	callstack 4
; Regs used in _memcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(memcpy@d1)
	line	34
	
l2060:	
		movf	(memcpy@s1),w
	movwf	(memcpy@s)
movf	(memcpy@s1+1),w
movwf	(memcpy@s+1)

	line	35
	
l2062:	
	movf	(memcpy@d1),w
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@d)
	line	36
	goto	l2072
	line	37
	
l2064:	
	movf	(memcpy@s+1),w
	movwf	btemp+1
	movf	(memcpy@s),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	movwf	(memcpy@tmp)
	
l2066:	
	movlw	01h
	addwf	(memcpy@s),f
	skipnc
	incf	(memcpy@s+1),f
	movlw	0
	addwf	(memcpy@s+1),f
	line	38
	
l2068:	
	movf	(memcpy@tmp),w
	movwf	(??_memcpy+0)+0
	movf	(memcpy@d),w
	movwf	fsr0
	movf	(??_memcpy+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2070:	
	movlw	low(01h)
	movwf	(??_memcpy+0)+0
	movf	(??_memcpy+0)+0,w
	addwf	(memcpy@d),f
	line	36
	
l2072:	
	movlw	01h
	subwf	(memcpy@n),f
	movlw	0
	skipc
	decf	(memcpy@n+1),f
	subwf	(memcpy@n+1),f
		incf	(((memcpy@n))),w
	skipz
	goto	u951
	incf	(((memcpy@n+1))),w
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l2064
u950:
	line	41
	
l970:	
	return
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12409
	global	_internet_process

;; *************** function _internet_process *****************
;; Defined at:
;;		line 14 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  size            1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_RF24_available
;;		_RF24_getDynamicPayloadSize
;;		_RF24_read
;;		_internet_rx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	14
global __ptext6
__ptext6:	;psect for function _internet_process
psect	text6
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	14
	
_internet_process:	
;incstack = 0
	callstack 1
; Regs used in _internet_process: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	16
	
l2314:	
	goto	l2322
	line	18
	
l2316:	
	fcall	_RF24_getDynamicPayloadSize
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_process@size)
	line	19
	
l2318:	
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(RF24_read@length)
	movlw	(low(_receivedPayloadBuffer|((0x0)<<8)))&0ffh
	fcall	_RF24_read
	line	20
	
l2320:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_process@size),w
	movwf	(??_internet_process+0)+0
	movf	(??_internet_process+0)+0,w
	movwf	(internet_rx@size)
	movlw	(low(_receivedPayloadBuffer|((0x0)<<8)))&0ffh
	fcall	_internet_rx
	line	16
	
l2322:	
	movlw	(low(_availablePipeNo|((0x0)<<8)))&0ffh
	fcall	_RF24_available
	xorlw	0
	skipz
	goto	u1171
	goto	u1170
u1171:
	goto	l2316
u1170:
	line	22
	
l188:	
	return
	callstack 0
GLOBAL	__end_of_internet_process
	__end_of_internet_process:
	signat	_internet_process,89
	global	_internet_rx

;; *************** function _internet_rx *****************
;; Defined at:
;;		line 36 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  size            1   17[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   21[BANK0 ] PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  packetHeader    1   20[BANK0 ] PTR struct Packet
;;		 -> receivedPayloadBuffer(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_internet_relay
;;		_transport_udp_rx
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	line	36
global __ptext7
__ptext7:	;psect for function _internet_rx
psect	text7
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	36
	
_internet_rx:	
;incstack = 0
	callstack 1
; Regs used in _internet_rx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_rx@payload)
	line	38
	
l2164:	
	movf	(internet_rx@payload),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_rx@packetHeader)
	line	39
	
l2166:	
	movf	(internet_rx@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(_node),w
	skipnz
	goto	u1011
	goto	u1010
u1011:
	goto	l2176
u1010:
	line	41
	
l2168:	
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(internet_relay@size)
	movf	(internet_rx@payload),w
	fcall	_internet_relay
	goto	l198
	line	53
	
l2172:	
	movf	(internet_rx@size),w
	movwf	(??_internet_rx+0)+0
	movf	(??_internet_rx+0)+0,w
	movwf	(transport_udp_rx@size)
	movf	(internet_rx@payload),w
	fcall	_transport_udp_rx
	line	54
	goto	l198
	line	58
	
l2176:	
	incf	(internet_rx@packetHeader),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_internet_rx+0)+0
	clrf	(??_internet_rx+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_internet_rx+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l2354
	goto	l198
	asmopt pop
	
l2354:	
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_internet_rx+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l198
	xorlw	1^0	; case 1
	skipnz
	goto	l2172
	xorlw	2^1	; case 2
	skipnz
	goto	l198
	goto	l198
	asmopt pop

	line	59
	
l198:	
	return
	callstack 0
GLOBAL	__end_of_internet_rx
	__end_of_internet_rx:
	signat	_internet_rx,8313
	global	_transport_udp_rx

;; *************** function _transport_udp_rx *****************
;; Defined at:
;;		line 12 in file "G:/GP/PIC/DHCP/libs/transport.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  size            1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1    9[COMMON] PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  packetHeader    1    8[COMMON] PTR struct UDPPacket
;;		 -> receivedPayloadBuffer(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_transport_udp_process
;; This function is called by:
;;		_internet_rx
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/transport.c"
	line	12
global __ptext8
__ptext8:	;psect for function _transport_udp_rx
psect	text8
	file	"G:/GP/PIC/DHCP/libs/transport.c"
	line	12
	
_transport_udp_rx:	
;incstack = 0
	callstack 3
; Regs used in _transport_udp_rx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(transport_udp_rx@payload)
	line	14
	
l1696:	
	movf	(transport_udp_rx@payload),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_rx@packetHeader)
	line	15
	
l1698:	
	movf	(transport_udp_rx@size),w
	movwf	(??_transport_udp_rx+0)+0
	movf	(??_transport_udp_rx+0)+0,w
	movwf	(transport_udp_process@size)
	movf	(transport_udp_rx@packetHeader),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	swapf	indf,w
	andlw	(1<<4)-1
	movwf	(??_transport_udp_rx+1)+0
	movf	(??_transport_udp_rx+1)+0,w
	movwf	(transport_udp_process@port)
	movf	(transport_udp_rx@payload),w
	fcall	_transport_udp_process
	line	16
	
l456:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_rx
	__end_of_transport_udp_rx:
	signat	_transport_udp_rx,8313
	global	_transport_udp_process

;; *************** function _transport_udp_process *****************
;; Defined at:
;;		line 32 in file "G:/GP/PIC/DHCP/app/src/main.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  size            1    2[COMMON] unsigned char 
;;  port            1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1    4[COMMON] PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_transport_udp_rx
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"G:/GP/PIC/DHCP/app/src/main.c"
	line	32
global __ptext9
__ptext9:	;psect for function _transport_udp_process
psect	text9
	file	"G:/GP/PIC/DHCP/app/src/main.c"
	line	32
	
_transport_udp_process:	
;incstack = 0
	callstack 3
; Regs used in _transport_udp_process: [wreg+status,2+status,0]
	line	35
	
l1550:	
	line	38
	
l39:	
	return
	callstack 0
GLOBAL	__end_of_transport_udp_process
	__end_of_transport_udp_process:
	signat	_transport_udp_process,12409
	global	_internet_relay

;; *************** function _internet_relay *****************
;; Defined at:
;;		line 60 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  payload         1    wreg     PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  size            1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  payload         1   16[BANK0 ] PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  packetHeader    1   15[BANK0 ] PTR struct Packet
;;		 -> receivedPayloadBuffer(32), 
;;  dstMask         1   14[BANK0 ] unsigned char 
;;  status          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_closeDataPipe
;;		_RF24_openReadingPipe
;;		_RF24_openWritingPipe
;;		_RF24_startListening
;;		_RF24_write
;;		_internet_calculateMask
;;		_internet_hasChild
;; This function is called by:
;;		_internet_rx
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	60
global __ptext10
__ptext10:	;psect for function _internet_relay
psect	text10
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	60
	
_internet_relay:	
;incstack = 0
	callstack 1
; Regs used in _internet_relay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(internet_relay@payload)
	line	62
	
l2074:	
	movf	(internet_relay@payload),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(internet_relay@packetHeader)
	line	63
	
l2076:	
	movf	((_node)),w
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l2080
u960:
	goto	l208
	line	69
	
l2080:	
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_internet_calculateMask
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(internet_relay@dstMask)
	line	71
	
l2082:	
	movf	(internet_relay@dstMask),w
	subwf	0+(_node)+01h,w
	skipnc
	goto	u971
	goto	u970
u971:
	goto	l2112
u970:
	
l2084:	
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_internet_hasChild
	xorlw	0
	skipnz
	goto	u981
	goto	u980
u981:
	goto	l2112
u980:
	line	73
	
l2086:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@packetHeader),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andwf	0+(_node)+02h,w
	btfsc	status,2
	goto	u991
	goto	u990
u991:
	goto	l2100
u990:
	line	75
	
l2088:	
	movf	0+(_node)+04h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	76
	
l2090:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@addressBytes)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@addressBytes+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	77
	
l2092:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	78
	
l2094:	
	movlw	low(07h)
	fcall	_RF24_closeDataPipe
	line	79
	
l2096:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@length)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	80
	
l2098:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openReadingPipe@addressBytes)
	movlw	80h
	movwf	(RF24_openReadingPipe@addressBytes+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	81
	goto	l2124
	line	84
	
l2100:	
	movf	0+(_node)+03h,w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	85
	
l2102:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@addressBytes)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@addressBytes+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	86
	
l2104:	
	movlw	(low(_networkInfo|((0x0)<<8)))&0ffh
	fcall	_RF24_openWritingPipe
	line	87
	
l2106:	
	movlw	low(07h)
	fcall	_RF24_closeDataPipe
	line	88
	
l2108:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@length)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	89
	
l2110:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openReadingPipe@addressBytes)
	movlw	80h
	movwf	(RF24_openReadingPipe@addressBytes+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	goto	l2124
	line	94
	
l2112:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(_networkInfo)
	line	95
	
l2114:	
	movlw	(low(_networkInfo|((0x0)<<8))&0ffh)
	movwf	(RF24_openReadingPipe@addressBytes)
	movlw	(0x0)
	movwf	(RF24_openReadingPipe@addressBytes+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	96
	
l2116:	
	movlw	low(0)
	fcall	_RF24_openWritingPipe
	line	97
	
l2118:	
	movlw	low(07h)
	fcall	_RF24_closeDataPipe
	line	98
	
l2120:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(internet_relay@size),w
	movwf	(??_internet_relay+0)+0
	movf	(??_internet_relay+0)+0,w
	movwf	(RF24_write@length)
	movf	(internet_relay@payload),w
	fcall	_RF24_write
	line	99
	
l2122:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openReadingPipe@addressBytes)
	movlw	80h
	movwf	(RF24_openReadingPipe@addressBytes+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	101
	
l2124:	
	fcall	_RF24_startListening
	line	102
	
l208:	
	return
	callstack 0
GLOBAL	__end_of_internet_relay
	__end_of_internet_relay:
	signat	_internet_relay,8313
	global	_internet_hasChild

;; *************** function _internet_hasChild *****************
;; Defined at:
;;		line 124 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	line	124
global __ptext11
__ptext11:	;psect for function _internet_hasChild
psect	text11
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	124
	
_internet_hasChild:	
;incstack = 0
	callstack 3
; Regs used in _internet_hasChild: [wreg+status,2+status,0]
	movwf	(internet_hasChild@address)
	line	126
	
l1582:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_node),w
	andwf	0+(_node)+01h,w
	movwf	(??_internet_hasChild+0)+0
	movf	0+(_node)+01h,w
	andwf	(internet_hasChild@address),w
	xorwf	0+(??_internet_hasChild+0)+0,w
	skipnz
	goto	u521
	goto	u520
u521:
	movlw	1
	goto	u530
u520:
	movlw	0
u530:
	line	127
	
l224:	
	return
	callstack 0
GLOBAL	__end_of_internet_hasChild
	__end_of_internet_hasChild:
	signat	_internet_hasChild,4217
	global	_internet_calculateMask

;; *************** function _internet_calculateMask *****************
;; Defined at:
;;		line 103 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMMON] unsigned char 
;;  mask            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_internet_relay
;;		_internet_setAddress
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	line	103
global __ptext12
__ptext12:	;psect for function _internet_calculateMask
psect	text12
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	103
	
_internet_calculateMask:	
;incstack = 0
	callstack 5
; Regs used in _internet_calculateMask: [wreg+status,2+status,0]
	movwf	(internet_calculateMask@address)
	line	105
	
l1570:	
	clrf	(internet_calculateMask@mask)
	line	106
	goto	l1576
	line	108
	
l1572:	
	setc
	rlf	(internet_calculateMask@mask),f
	line	109
	
l1574:	
	clrc
	rrf	(internet_calculateMask@address),f

	line	106
	
l1576:	
	movlw	low(02h)
	subwf	(internet_calculateMask@address),w
	skipnc
	goto	u511
	goto	u510
u511:
	goto	l1572
u510:
	line	111
	
l1578:	
	movf	(internet_calculateMask@mask),w
	line	112
	
l218:	
	return
	callstack 0
GLOBAL	__end_of_internet_calculateMask
	__end_of_internet_calculateMask:
	signat	_internet_calculateMask,4217
	global	_RF24_write

;; *************** function _RF24_write *****************
;; Defined at:
;;		line 241 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    wreg     PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  length          1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buffer          1   11[BANK0 ] PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;;		_readStatus
;;		_waitMillis
;;		_writeRegister
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	241
global __ptext13
__ptext13:	;psect for function _RF24_write
psect	text13
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	241
	
_RF24_write:	
;incstack = 0
	callstack 1
; Regs used in _RF24_write: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_write@buffer)
	line	243
	
l2030:	
	bcf	(66/8),(66)&7	;volatile
	line	244
	bcf	(67/8),(67)&7	;volatile
	line	245
	
l2032:	
	movlw	low(0A0h)
	fcall	_SPI_exchangeByte
	line	246
	
l2034:	
	clrf	(_temp0)
	goto	l2040
	line	248
	
l2036:	
	movf	(_temp0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(RF24_write@buffer),w
	movwf	(??_RF24_write+0)+0
	movf	0+(??_RF24_write+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SPI_exchangeByte
	line	249
	
l2038:	
	movlw	low(01h)
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	addwf	(_temp0),f
	
l2040:	
	movf	(RF24_write@length),w
	subwf	(_temp0),w
	skipc
	goto	u931
	goto	u930
u931:
	goto	l2036
u930:
	
l350:	
	line	250
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	252
	bsf	(66/8),(66)&7	;volatile
	line	253
	
l2042:	
	movlw	low(0Fh)
	fcall	_waitMillis
	line	254
	
l2044:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	255
	
l2046:	
	fcall	_readStatus
	movwf	(_temp0)
	andlw	030h
	btfsc	status,2
	goto	u941
	goto	u940
u941:
	goto	l2046
u940:
	line	257
	
l2048:	
	movf	(_temp0),w
	movwf	(??_RF24_write+0)+0
	movf	(??_RF24_write+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(07h)
	fcall	_writeRegister
	line	263
	
l355:	
	return
	callstack 0
GLOBAL	__end_of_RF24_write
	__end_of_RF24_write:
	signat	_RF24_write,8313
	global	_RF24_openWritingPipe

;; *************** function _RF24_openWritingPipe *****************
;; Defined at:
;;		line 148 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  addressBytes    1    wreg     PTR unsigned char 
;;		 -> NULL(0), networkInfo(6), 
;; Auto vars:     Size  Location     Type
;;  addressBytes    1    1[BANK0 ] PTR unsigned char 
;;		 -> NULL(0), networkInfo(6), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeMultibyteRegister
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	line	148
global __ptext14
__ptext14:	;psect for function _RF24_openWritingPipe
psect	text14
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	148
	
_RF24_openWritingPipe:	
;incstack = 0
	callstack 1
; Regs used in _RF24_openWritingPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openWritingPipe@addressBytes)
	line	150
	
l2016:	
	movlw	low(03h)
	fcall	_readRegister
	andlw	03h
	addlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_openWritingPipe+0)+0
	movf	(??_RF24_openWritingPipe+0)+0,w
	movwf	(_temp0)
	line	151
	
l2018:	
	movf	(RF24_openWritingPipe@addressBytes),w
	movwf	(writeMultibyteRegister@buffer)
	movlw	(0x0)
	movwf	(writeMultibyteRegister@buffer+1)
	movf	(_temp0),w
	movwf	(??_RF24_openWritingPipe+0)+0
	movf	(??_RF24_openWritingPipe+0)+0,w
	movwf	(writeMultibyteRegister@length)
	movlw	low(010h)
	fcall	_writeMultibyteRegister
	line	152
	
l313:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openWritingPipe
	__end_of_RF24_openWritingPipe:
	signat	_RF24_openWritingPipe,4217
	global	_RF24_closeDataPipe

;; *************** function _RF24_closeDataPipe *****************
;; Defined at:
;;		line 134 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  pipe            1    wreg     enum E907
;; Auto vars:     Size  Location     Type
;;  pipe            1    8[COMMON] enum E907
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeRegister
;; This function is called by:
;;		_internet_relay
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	line	134
global __ptext15
__ptext15:	;psect for function _RF24_closeDataPipe
psect	text15
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	134
	
_RF24_closeDataPipe:	
;incstack = 0
	callstack 1
; Regs used in _RF24_closeDataPipe: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_closeDataPipe@pipe)
	line	136
	
l2020:	
		movlw	7
	xorwf	((RF24_closeDataPipe@pipe)),w
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l2024
u910:
	line	138
	
l2022:	
	clrf	(writeRegister@value)
	movlw	low(02h)
	fcall	_writeRegister
	line	139
	goto	l310
	line	142
	
l2024:	
	movlw	low(02h)
	fcall	_readRegister
	movwf	(??_RF24_closeDataPipe+0)+0
	movf	(??_RF24_closeDataPipe+0)+0,w
	movwf	(_temp0)
	line	143
	
l2026:	
	movlw	low(01h)
	movwf	(??_RF24_closeDataPipe+0)+0
	incf	(RF24_closeDataPipe@pipe),w
	goto	u924
u925:
	clrc
	rlf	(??_RF24_closeDataPipe+0)+0,f
u924:
	addlw	-1
	skipz
	goto	u925
	movf	0+(??_RF24_closeDataPipe+0)+0,w
	xorlw	0ffh
	movwf	(??_RF24_closeDataPipe+1)+0
	movf	(??_RF24_closeDataPipe+1)+0,w
	andwf	(_temp0),f
	line	144
	
l2028:	
	movf	(_temp0),w
	movwf	(??_RF24_closeDataPipe+0)+0
	movf	(??_RF24_closeDataPipe+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(02h)
	fcall	_writeRegister
	line	146
	
l310:	
	return
	callstack 0
GLOBAL	__end_of_RF24_closeDataPipe
	__end_of_RF24_closeDataPipe:
	signat	_RF24_closeDataPipe,4217
	global	_RF24_read

;; *************** function _RF24_read *****************
;; Defined at:
;;		line 228 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    wreg     PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  length          1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buffer          1    0[BANK0 ] PTR unsigned char 
;;		 -> receivedPayloadBuffer(32), 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       2       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_SPI_exchangeByte
;;		_readStatus
;;		_writeRegister
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	line	228
global __ptext16
__ptext16:	;psect for function _RF24_read
psect	text16
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	228
	
_RF24_read:	
;incstack = 0
	callstack 3
; Regs used in _RF24_read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_read@buffer)
	line	231
	
l2148:	
	fcall	_readStatus
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(_temp0)
	line	232
	
l2150:	
	movf	(_temp0),w
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(07h)
	fcall	_writeRegister
	line	233
	
l2152:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	234
	
l2154:	
	movlw	low(061h)
	fcall	_SPI_exchangeByte
	line	235
	
l2156:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(RF24_read@i)
	goto	l2162
	line	237
	
l2158:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_read+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(RF24_read@i),w
	addwf	(RF24_read@buffer),w
	movwf	(??_RF24_read+1)+0
	movf	0+(??_RF24_read+1)+0,w
	movwf	fsr0
	movf	(??_RF24_read+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	238
	
l2160:	
	movlw	low(01h)
	movwf	(??_RF24_read+0)+0
	movf	(??_RF24_read+0)+0,w
	addwf	(RF24_read@i),f
	
l2162:	
	movf	(RF24_read@length),w
	subwf	(RF24_read@i),w
	skipc
	goto	u1001
	goto	u1000
u1001:
	goto	l2158
u1000:
	
l344:	
	line	239
	bsf	(67/8),(67)&7	;volatile
	line	240
	
l345:	
	return
	callstack 0
GLOBAL	__end_of_RF24_read
	__end_of_RF24_read:
	signat	_RF24_read,8313
	global	_RF24_getDynamicPayloadSize

;; *************** function _RF24_getDynamicPayloadSize *****************
;; Defined at:
;;		line 209 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	line	209
global __ptext17
__ptext17:	;psect for function _RF24_getDynamicPayloadSize
psect	text17
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	209
	
_RF24_getDynamicPayloadSize:	
;incstack = 0
	callstack 4
; Regs used in _RF24_getDynamicPayloadSize: [wreg+status,2+status,0+pclath+cstack]
	line	211
	
l2136:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	212
	
l2138:	
	movlw	low(060h)
	fcall	_SPI_exchangeByte
	line	213
	
l2140:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_RF24_getDynamicPayloadSize+0)+0
	movf	(??_RF24_getDynamicPayloadSize+0)+0,w
	movwf	(_temp0)
	line	214
	
l2142:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	215
	
l2144:	
	movf	(_temp0),w
	line	216
	
l335:	
	return
	callstack 0
GLOBAL	__end_of_RF24_getDynamicPayloadSize
	__end_of_RF24_getDynamicPayloadSize:
	signat	_RF24_getDynamicPayloadSize,89
	global	_RF24_available

;; *************** function _RF24_available *****************
;; Defined at:
;;		line 201 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  pipeNo          1    wreg     PTR enum E907
;;		 -> availablePipeNo(1), 
;; Auto vars:     Size  Location     Type
;;  pipeNo          1    6[COMMON] PTR enum E907
;;		 -> availablePipeNo(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readStatus
;; This function is called by:
;;		_internet_process
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	201
global __ptext18
__ptext18:	;psect for function _RF24_available
psect	text18
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	201
	
_RF24_available:	
;incstack = 0
	callstack 3
; Regs used in _RF24_available: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(RF24_available@pipeNo)
	line	203
	
l2182:	
	fcall	_readStatus
	movwf	(??_RF24_available+0)+0
	clrc
	rrf	(??_RF24_available+0)+0,w
	andlw	07h
	movwf	(??_RF24_available+1)+0
	movf	(??_RF24_available+1)+0,w
	movwf	(_temp0)
	line	204
	
l2184:	
	movf	(_temp0),w
	movwf	(??_RF24_available+0)+0
	movf	(RF24_available@pipeNo),w
	movwf	fsr0
	movf	(??_RF24_available+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	206
	
l2186:	
	comf	(_temp0),w
	line	207
	
l332:	
	return
	callstack 0
GLOBAL	__end_of_RF24_available
	__end_of_RF24_available:
	signat	_RF24_available,4217
	global	_initializeRF24

;; *************** function _initializeRF24 *****************
;; Defined at:
;;		line 129 in file "G:/GP/PIC/DHCP/libs/internet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_RF24_enableDynamicPayloadLength
;;		_RF24_initialize
;;		_RF24_openReadingPipe
;;		_RF24_setAutoAck
;;		_RF24_setCRCEncoding
;;		_RF24_setDataRate
;;		_RF24_setOutputPower
;;		_RF24_setPayloadWidth
;;		_RF24_startListening
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	129
global __ptext19
__ptext19:	;psect for function _initializeRF24
psect	text19
	file	"G:/GP/PIC/DHCP/libs/internet.c"
	line	129
	
_initializeRF24:	
;incstack = 0
	callstack 3
; Regs used in _initializeRF24: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	131
	
l2282:	
	fcall	_RF24_initialize
	line	132
	
l2284:	
	movlw	(low((((_BASE_PIPE)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openReadingPipe@addressBytes)
	movlw	80h
	movwf	(RF24_openReadingPipe@addressBytes+1)
	movlw	low(0)
	fcall	_RF24_openReadingPipe
	line	133
	
l2286:	
	movlw	low(01h)
	fcall	_RF24_setDataRate
	line	134
	
l2288:	
	movlw	low(01h)
	fcall	_RF24_setCRCEncoding
	line	135
	
l2290:	
	movlw	low(07h)
	fcall	_RF24_enableDynamicPayloadLength
	line	136
	
l2292:	
	movlw	low(06h)
	fcall	_RF24_setOutputPower
	line	137
	
l2294:	
	clrf	(RF24_setAutoAck@enabledOrDisabled)
	incf	(RF24_setAutoAck@enabledOrDisabled),f
	movlw	low(07h)
	fcall	_RF24_setAutoAck
	line	139
	
l2296:	
	fcall	_RF24_startListening
	line	141
	
l2298:	
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_initializeRF24+0)+0
	movf	(??_initializeRF24+0)+0,w
	movwf	(RF24_setPayloadWidth@width)
	movlw	low(0)
	fcall	_RF24_setPayloadWidth
	line	142
	
l227:	
	return
	callstack 0
GLOBAL	__end_of_initializeRF24
	__end_of_initializeRF24:
	signat	_initializeRF24,89
	global	_RF24_startListening

;; *************** function _RF24_startListening *****************
;; Defined at:
;;		line 68 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeRegister
;; This function is called by:
;;		_internet_relay
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	68
global __ptext20
__ptext20:	;psect for function _RF24_startListening
psect	text20
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	68
	
_RF24_startListening:	
;incstack = 0
	callstack 1
; Regs used in _RF24_startListening: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
l2054:	
	movlw	low(0)
	fcall	_readRegister
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(_temp0)
	line	72
	
l2056:	
	bsf	(_temp0)+(0/8),(0)&7
	line	73
	
l2058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	74
	movf	(_temp0),w
	movwf	(??_RF24_startListening+0)+0
	movf	(??_RF24_startListening+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(0)
	fcall	_writeRegister
	line	75
	
l283:	
	return
	callstack 0
GLOBAL	__end_of_RF24_startListening
	__end_of_RF24_startListening:
	signat	_RF24_startListening,89
	global	_RF24_setPayloadWidth

;; *************** function _RF24_setPayloadWidth *****************
;; Defined at:
;;		line 300 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  pipe            1    wreg     enum E907
;;  width           1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pipe            1    8[COMMON] enum E907
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_writeRegister
;; This function is called by:
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	line	300
global __ptext21
__ptext21:	;psect for function _RF24_setPayloadWidth
psect	text21
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	300
	
_RF24_setPayloadWidth:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setPayloadWidth: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setPayloadWidth@pipe)
	line	302
	
l2276:	
		movlw	7
	xorwf	((RF24_setPayloadWidth@pipe)),w
	btfss	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l2280
u1140:
	line	304
	
l2278:	
	movf	(RF24_setPayloadWidth@width),w
	andlw	03Fh
	movwf	(??_RF24_setPayloadWidth+0)+0
	movf	(??_RF24_setPayloadWidth+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(011h)
	fcall	_writeRegister
	line	305
	movf	(RF24_setPayloadWidth@width),w
	andlw	03Fh
	movwf	(??_RF24_setPayloadWidth+0)+0
	movf	(??_RF24_setPayloadWidth+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(012h)
	fcall	_writeRegister
	line	306
	movf	(RF24_setPayloadWidth@width),w
	andlw	03Fh
	movwf	(??_RF24_setPayloadWidth+0)+0
	movf	(??_RF24_setPayloadWidth+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(013h)
	fcall	_writeRegister
	line	307
	movf	(RF24_setPayloadWidth@width),w
	andlw	03Fh
	movwf	(??_RF24_setPayloadWidth+0)+0
	movf	(??_RF24_setPayloadWidth+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(014h)
	fcall	_writeRegister
	line	308
	movf	(RF24_setPayloadWidth@width),w
	andlw	03Fh
	movwf	(??_RF24_setPayloadWidth+0)+0
	movf	(??_RF24_setPayloadWidth+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(015h)
	fcall	_writeRegister
	line	309
	movf	(RF24_setPayloadWidth@width),w
	andlw	03Fh
	movwf	(??_RF24_setPayloadWidth+0)+0
	movf	(??_RF24_setPayloadWidth+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(016h)
	fcall	_writeRegister
	line	310
	goto	l373
	line	312
	
l2280:	
	movf	(RF24_setPayloadWidth@width),w
	andlw	03Fh
	movwf	(??_RF24_setPayloadWidth+0)+0
	movf	(??_RF24_setPayloadWidth+0)+0,w
	movwf	(writeRegister@value)
	movf	(RF24_setPayloadWidth@pipe),w
	addlw	011h
	fcall	_writeRegister
	line	313
	
l373:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setPayloadWidth
	__end_of_RF24_setPayloadWidth:
	signat	_RF24_setPayloadWidth,8313
	global	_RF24_setOutputPower

;; *************** function _RF24_setOutputPower *****************
;; Defined at:
;;		line 112 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  power           1    wreg     enum E896
;; Auto vars:     Size  Location     Type
;;  power           1    7[COMMON] enum E896
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeRegister
;; This function is called by:
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	112
global __ptext22
__ptext22:	;psect for function _RF24_setOutputPower
psect	text22
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	112
	
_RF24_setOutputPower:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setOutputPower: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setOutputPower@power)
	line	114
	
l2248:	
	movlw	low(06h)
	fcall	_readRegister
	movwf	(??_RF24_setOutputPower+0)+0
	movf	(??_RF24_setOutputPower+0)+0,w
	movwf	(_temp0)
	line	115
	
l2250:	
	movlw	low(0FBh)
	movwf	(??_RF24_setOutputPower+0)+0
	movf	(??_RF24_setOutputPower+0)+0,w
	andwf	(_temp0),f
	line	116
	
l2252:	
	movlw	low(0FDh)
	movwf	(??_RF24_setOutputPower+0)+0
	movf	(??_RF24_setOutputPower+0)+0,w
	andwf	(_temp0),f
	line	117
	movf	(_temp0),w
	iorwf	(RF24_setOutputPower@power),w
	movwf	(??_RF24_setOutputPower+0)+0
	movf	(??_RF24_setOutputPower+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(06h)
	fcall	_writeRegister
	line	118
	
l300:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setOutputPower
	__end_of_RF24_setOutputPower:
	signat	_RF24_setOutputPower,4217
	global	_RF24_setDataRate

;; *************** function _RF24_setDataRate *****************
;; Defined at:
;;		line 91 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  rate            1    wreg     enum E902
;; Auto vars:     Size  Location     Type
;;  rate            1    7[COMMON] enum E902
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeRegister
;; This function is called by:
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	91
global __ptext23
__ptext23:	;psect for function _RF24_setDataRate
psect	text23
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	91
	
_RF24_setDataRate:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setDataRate: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setDataRate@rate)
	line	93
	
l2198:	
	movlw	low(06h)
	fcall	_readRegister
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(_temp0)
	line	94
	
l2200:	
	movf	((RF24_setDataRate@rate)),w
	btfss	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l2206
u1020:
	line	96
	
l2202:	
	bsf	(_temp0)+(5/8),(5)&7
	line	97
	
l2204:	
	movlw	low(0F7h)
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	andwf	(_temp0),f
	line	98
	goto	l2216
	line	99
	
l2206:	
		decf	((RF24_setDataRate@rate)),w
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l2210
u1030:
	line	101
	
l2208:	
	movlw	low(0DFh)
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	andwf	(_temp0),f
	line	102
	movlw	low(0F7h)
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	andwf	(_temp0),f
	line	103
	goto	l2216
	line	104
	
l2210:	
		movlw	2
	xorwf	((RF24_setDataRate@rate)),w
	btfss	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l2216
u1040:
	line	106
	
l2212:	
	movlw	low(0DFh)
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	andwf	(_temp0),f
	line	107
	
l2214:	
	bsf	(_temp0)+(3/8),(3)&7
	line	109
	
l2216:	
	movf	(_temp0),w
	movwf	(??_RF24_setDataRate+0)+0
	movf	(??_RF24_setDataRate+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(06h)
	fcall	_writeRegister
	line	110
	
l297:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setDataRate
	__end_of_RF24_setDataRate:
	signat	_RF24_setDataRate,4217
	global	_RF24_setCRCEncoding

;; *************** function _RF24_setCRCEncoding *****************
;; Defined at:
;;		line 265 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  encoding        1    wreg     enum E916
;; Auto vars:     Size  Location     Type
;;  encoding        1    7[COMMON] enum E916
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeRegister
;; This function is called by:
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	265
global __ptext24
__ptext24:	;psect for function _RF24_setCRCEncoding
psect	text24
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	265
	
_RF24_setCRCEncoding:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setCRCEncoding: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_setCRCEncoding@encoding)
	line	269
	
l2218:	
	movlw	low(0)
	fcall	_readRegister
	movwf	(??_RF24_setCRCEncoding+0)+0
	movf	(??_RF24_setCRCEncoding+0)+0,w
	movwf	(_temp0)
	line	270
	
l2220:	
		decf	((RF24_setCRCEncoding@encoding)),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l2226
u1050:
	line	272
	
l2222:	
	bsf	(_temp0)+(3/8),(3)&7
	line	273
	
l2224:	
	movlw	low(0FBh)
	movwf	(??_RF24_setCRCEncoding+0)+0
	movf	(??_RF24_setCRCEncoding+0)+0,w
	andwf	(_temp0),f
	line	274
	goto	l2232
	line	275
	
l2226:	
		movlw	2
	xorwf	((RF24_setCRCEncoding@encoding)),w
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l361
u1060:
	line	277
	
l2228:	
	bsf	(_temp0)+(3/8),(3)&7
	line	278
	bsf	(_temp0)+(2/8),(2)&7
	line	279
	goto	l2232
	line	283
	
l361:	
	line	284
	
l2232:	
	movf	(_temp0),w
	movwf	(??_RF24_setCRCEncoding+0)+0
	movf	(??_RF24_setCRCEncoding+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(0)
	fcall	_writeRegister
	line	285
	
l363:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setCRCEncoding
	__end_of_RF24_setCRCEncoding:
	signat	_RF24_setCRCEncoding,4217
	global	_RF24_setAutoAck

;; *************** function _RF24_setAutoAck *****************
;; Defined at:
;;		line 314 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  pipe            1    wreg     enum E907
;;  enabledOrDis    1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pipe            1    2[BANK0 ] enum E907
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       3       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeRegister
;; This function is called by:
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=1
	line	314
global __ptext25
__ptext25:	;psect for function _RF24_setAutoAck
psect	text25
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	314
	
_RF24_setAutoAck:	
;incstack = 0
	callstack 3
; Regs used in _RF24_setAutoAck: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_setAutoAck@pipe)
	line	316
	
l2254:	
		movlw	7
	xorwf	((RF24_setAutoAck@pipe)),w
	btfss	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l2266
u1090:
	line	318
	
l2256:	
	movf	((RF24_setAutoAck@enabledOrDisabled)),w
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l2260
u1100:
	
l2258:	
	clrf	(_RF24_setAutoAck$559)
	clrf	(_RF24_setAutoAck$559+1)
	goto	l2262
	
l2260:	
	movlw	03Fh
	movwf	(_RF24_setAutoAck$559)
	movlw	0
	movwf	((_RF24_setAutoAck$559))+1
	
l2262:	
	movf	(_RF24_setAutoAck$559),w
	movwf	(??_RF24_setAutoAck+0)+0
	movf	(??_RF24_setAutoAck+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(01h)
	fcall	_writeRegister
	goto	l381
	line	321
	
l2266:	
	movlw	low(01h)
	fcall	_readRegister
	movwf	(??_RF24_setAutoAck+0)+0
	movf	(??_RF24_setAutoAck+0)+0,w
	movwf	(_temp0)
	line	322
	
l2268:	
	movf	((RF24_setAutoAck@enabledOrDisabled)),w
	btfsc	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l2272
u1110:
	line	324
	
l2270:	
	movlw	low(01h)
	movwf	(??_RF24_setAutoAck+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(RF24_setAutoAck@pipe),w
	goto	u1124
u1125:
	clrc
	rlf	(??_RF24_setAutoAck+0)+0,f
u1124:
	addlw	-1
	skipz
	goto	u1125
	movf	0+(??_RF24_setAutoAck+0)+0,w
	movwf	(??_RF24_setAutoAck+1)+0
	movf	(??_RF24_setAutoAck+1)+0,w
	iorwf	(_temp0),f
	line	325
	goto	l2274
	line	328
	
l2272:	
	movlw	low(01h)
	movwf	(??_RF24_setAutoAck+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(RF24_setAutoAck@pipe),w
	goto	u1134
u1135:
	clrc
	rlf	(??_RF24_setAutoAck+0)+0,f
u1134:
	addlw	-1
	skipz
	goto	u1135
	movf	0+(??_RF24_setAutoAck+0)+0,w
	xorlw	0ffh
	movwf	(??_RF24_setAutoAck+1)+0
	movf	(??_RF24_setAutoAck+1)+0,w
	andwf	(_temp0),f
	line	330
	
l2274:	
	movf	(_temp0),w
	movwf	(??_RF24_setAutoAck+0)+0
	movf	(??_RF24_setAutoAck+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(01h)
	fcall	_writeRegister
	line	331
	
l381:	
	return
	callstack 0
GLOBAL	__end_of_RF24_setAutoAck
	__end_of_RF24_setAutoAck:
	signat	_RF24_setAutoAck,8313
	global	_RF24_openReadingPipe

;; *************** function _RF24_openReadingPipe *****************
;; Defined at:
;;		line 154 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  pipe            1    wreg     enum E907
;;  addressBytes    2    0[BANK0 ] PTR unsigned char 
;;		 -> BASE_PIPE(5), RAM(512), networkInfo(6), 
;; Auto vars:     Size  Location     Type
;;  pipe            1    3[BANK0 ] enum E907
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeMultibyteRegister
;;		_writeRegister
;; This function is called by:
;;		_internet_setNetworkPipe
;;		_internet_relay
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	line	154
global __ptext26
__ptext26:	;psect for function _RF24_openReadingPipe
psect	text26
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	154
	
_RF24_openReadingPipe:	
;incstack = 0
	callstack 3
; Regs used in _RF24_openReadingPipe: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RF24_openReadingPipe@pipe)
	line	156
	
l2000:	
		movlw	7
	xorwf	((RF24_openReadingPipe@pipe)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l2004
u890:
	goto	l317
	line	158
	
l2004:	
	movlw	low(03h)
	fcall	_readRegister
	andlw	03h
	addlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(_temp0)
	line	159
	
l2006:	
	movlw	low(02h)
	subwf	(RF24_openReadingPipe@pipe),w
	skipc
	goto	u901
	goto	u900
u901:
	goto	l2014
u900:
	line	161
	
l2008:	
	movlw	low(0Bh)
	fcall	_readRegister
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(_temp1)
	line	162
	
l2010:	
		movf	(RF24_openReadingPipe@addressBytes),w
	movwf	(writeMultibyteRegister@buffer)
movf	(RF24_openReadingPipe@addressBytes+1),w
movwf	(writeMultibyteRegister@buffer+1)

	movf	(_temp0),w
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(writeMultibyteRegister@length)
	movlw	low(0Bh)
	fcall	_writeMultibyteRegister
	line	163
	
l2012:	
	movf	(_temp1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(0Bh)
	fcall	_writeRegister
	line	164
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(RF24_openReadingPipe@addressBytes+1),w
	movwf	btemp+1
	movf	(RF24_openReadingPipe@addressBytes),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(writeRegister@value)
	movf	(RF24_openReadingPipe@pipe),w
	addlw	0Ah
	fcall	_writeRegister
	line	165
	goto	l317
	line	167
	
l2014:	
		movf	(RF24_openReadingPipe@addressBytes),w
	movwf	(writeMultibyteRegister@buffer)
movf	(RF24_openReadingPipe@addressBytes+1),w
movwf	(writeMultibyteRegister@buffer+1)

	movf	(_temp0),w
	movwf	(??_RF24_openReadingPipe+0)+0
	movf	(??_RF24_openReadingPipe+0)+0,w
	movwf	(writeMultibyteRegister@length)
	movf	(RF24_openReadingPipe@pipe),w
	addlw	0Ah
	fcall	_writeMultibyteRegister
	line	168
	
l317:	
	return
	callstack 0
GLOBAL	__end_of_RF24_openReadingPipe
	__end_of_RF24_openReadingPipe:
	signat	_RF24_openReadingPipe,8313
	global	_writeMultibyteRegister

;; *************** function _writeMultibyteRegister *****************
;; Defined at:
;;		line 29 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  buffer          2    3[COMMON] PTR unsigned char 
;;		 -> NULL(0), BASE_PIPE(5), RAM(512), networkInfo(6), 
;;  length          1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    8[COMMON] unsigned char 
;;  i               1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_openWritingPipe
;;		_RF24_openReadingPipe
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	29
global __ptext27
__ptext27:	;psect for function _writeMultibyteRegister
psect	text27
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	29
	
_writeMultibyteRegister:	
;incstack = 0
	callstack 3
; Regs used in _writeMultibyteRegister: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(writeMultibyteRegister@mnemonic_addr)
	line	31
	
l1976:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	32
	
l1978:	
	movf	(writeMultibyteRegister@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	line	33
	
l1980:	
	clrf	(writeMultibyteRegister@i)
	goto	l1986
	line	35
	
l1982:	
	movf	(writeMultibyteRegister@i),w
	movwf	(??_writeMultibyteRegister+0)+0
	clrf	(??_writeMultibyteRegister+0)+0+1
	movf	0+(??_writeMultibyteRegister+0)+0,w
	addwf	(writeMultibyteRegister@buffer),w
	movwf	fsr0
	movf	1+(??_writeMultibyteRegister+0)+0,w
	skipnc
	incf	1+(??_writeMultibyteRegister+0)+0,w
	addwf	(writeMultibyteRegister@buffer+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	fcall	_SPI_exchangeByte
	line	36
	
l1984:	
	movlw	low(01h)
	movwf	(??_writeMultibyteRegister+0)+0
	movf	(??_writeMultibyteRegister+0)+0,w
	addwf	(writeMultibyteRegister@i),f
	
l1986:	
	movf	(writeMultibyteRegister@length),w
	subwf	(writeMultibyteRegister@i),w
	skipc
	goto	u881
	goto	u880
u881:
	goto	l1982
u880:
	
l267:	
	line	37
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	38
	
l268:	
	return
	callstack 0
GLOBAL	__end_of_writeMultibyteRegister
	__end_of_writeMultibyteRegister:
	signat	_writeMultibyteRegister,12409
	global	_RF24_initialize

;; *************** function _RF24_initialize *****************
;; Defined at:
;;		line 5 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readStatus
;;		_waitMillis
;;		_writeRegister
;; This function is called by:
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	5
global __ptext28
__ptext28:	;psect for function _RF24_initialize
psect	text28
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	5
	
_RF24_initialize:	
;incstack = 0
	callstack 3
; Regs used in _RF24_initialize: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l2190:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1090/8)^080h,(1090)&7	;volatile
	line	8
	bcf	(1091/8)^080h,(1091)&7	;volatile
	line	9
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	10
	bsf	(67/8),(67)&7	;volatile
	line	11
	
l2192:	
	movlw	low(0Ah)
	fcall	_waitMillis
	line	15
	
l2194:	
	fcall	_readStatus
	movwf	(??_RF24_initialize+0)+0
	movf	(??_RF24_initialize+0)+0,w
	movwf	(_temp0)
	line	16
	
l2196:	
	movf	(_temp0),w
	movwf	(??_RF24_initialize+0)+0
	movf	(??_RF24_initialize+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(07h)
	fcall	_writeRegister
	line	17
	
l259:	
	return
	callstack 0
GLOBAL	__end_of_RF24_initialize
	__end_of_RF24_initialize:
	signat	_RF24_initialize,89
	global	_waitMillis

;; *************** function _waitMillis *****************
;; Defined at:
;;		line 16 in file "G:/GP/PIC/DHCP/libs/wait.c"
;; Parameters:    Size  Location     Type
;;  microSeconds    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  microSeconds    1   10[BANK0 ] unsigned char 
;;  stopTime        4    6[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___wmul
;;		_micros
;; This function is called by:
;;		_RF24_initialize
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/wait.c"
	line	16
global __ptext29
__ptext29:	;psect for function _waitMillis
psect	text29
	file	"G:/GP/PIC/DHCP/libs/wait.c"
	line	16
	
_waitMillis:	
;incstack = 0
	callstack 1
; Regs used in _waitMillis: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(waitMillis@microSeconds)
	line	18
	
l1952:	
	movf	(waitMillis@microSeconds),w
	movwf	(??_waitMillis+0)+0
	clrf	(??_waitMillis+0)+0+1
	movf	0+(??_waitMillis+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_waitMillis+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	0E8h
	movwf	(___wmul@multiplicand)
	movlw	03h
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_waitMillis+2)+0)
	movf	(1+(?___wmul)),w
	movwf	((??_waitMillis+2)+0+1)
	movlw	0
	btfsc	((??_waitMillis+2)+0+1),7
	movlw	255
	movwf	((??_waitMillis+2)+0+2)
	movwf	((??_waitMillis+2)+0+3)
	fcall	_micros
	movf	(0+(?_micros)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_waitMillis+2)+0,f
	movf	(1+(?_micros)),w
	skipnc
	incfsz	(1+(?_micros)),w
	goto	u860
	goto	u861
u860:
	addwf	(??_waitMillis+2)+1,f
u861:
	movf	(2+(?_micros)),w
	skipnc
	incfsz	(2+(?_micros)),w
	goto	u862
	goto	u863
u862:
	addwf	(??_waitMillis+2)+2,f
u863:
	movf	(3+(?_micros)),w
	skipnc
	incf	(3+(?_micros)),w
	addwf	(??_waitMillis+2)+3,f
	movf	3+(??_waitMillis+2)+0,w
	movwf	(waitMillis@stopTime+3)
	movf	2+(??_waitMillis+2)+0,w
	movwf	(waitMillis@stopTime+2)
	movf	1+(??_waitMillis+2)+0,w
	movwf	(waitMillis@stopTime+1)
	movf	0+(??_waitMillis+2)+0,w
	movwf	(waitMillis@stopTime)

	line	19
	
l1954:	
	fcall	_micros
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(waitMillis@stopTime+3),w
	subwf	(3+(?_micros)),w
	skipz
	goto	u875
	movf	(waitMillis@stopTime+2),w
	subwf	(2+(?_micros)),w
	skipz
	goto	u875
	movf	(waitMillis@stopTime+1),w
	subwf	(1+(?_micros)),w
	skipz
	goto	u875
	movf	(waitMillis@stopTime),w
	subwf	(0+(?_micros)),w
u875:
	skipc
	goto	u871
	goto	u870
u871:
	goto	l1954
u870:
	line	22
	
l475:	
	return
	callstack 0
GLOBAL	__end_of_waitMillis
	__end_of_waitMillis:
	signat	_waitMillis,4217
	global	_micros

;; *************** function _micros *****************
;; Defined at:
;;		line 30 in file "G:/GP/PIC/DHCP/libs/time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_waitMillis
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,inline,group=1
	file	"G:/GP/PIC/DHCP/libs/time.c"
	line	30
global __ptext30
__ptext30:	;psect for function _micros
psect	text30
	file	"G:/GP/PIC/DHCP/libs/time.c"
	line	30
	
_micros:	
;incstack = 0
	callstack 1
; Regs used in _micros: [wreg]
	line	32
	
l1934:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	movwf	(?_micros)
	movf	(14+1),w	;volatile
	movwf	((?_micros))+1
	clrf	2+((?_micros))
	clrf	3+((?_micros))
	line	33
	
l508:	
	return
	callstack 0
GLOBAL	__end_of_micros
	__end_of_micros:
	signat	_micros,92
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMMON] unsigned int 
;;  multiplicand    2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_waitMillis
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext31
__ptext31:	;psect for function ___wmul
psect	text31
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 1
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1938:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l1940:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u821
	goto	u820
u821:
	goto	l516
u820:
	line	46
	
l1942:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l516:	
	line	47
	movlw	01h
	
u835:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u835
	line	48
	
l1944:	
	movlw	01h
	
u845:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u845
	line	49
	
l1946:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u851
	goto	u850
u851:
	goto	l1940
u850:
	line	52
	
l1948:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l518:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_readStatus

;; *************** function _readStatus *****************
;; Defined at:
;;		line 60 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_initialize
;;		_RF24_available
;;		_RF24_read
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	60
global __ptext32
__ptext32:	;psect for function _readStatus
psect	text32
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	60
	
_readStatus:	
;incstack = 0
	callstack 1
; Regs used in _readStatus: [wreg+pclath+cstack]
	line	62
	
l1956:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	63
	
l1958:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_readStatus+0)+0
	movf	(??_readStatus+0)+0,w
	movwf	(_temp0)
	line	64
	
l1960:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	65
	
l1962:	
	movf	(_temp0),w
	line	66
	
l280:	
	return
	callstack 0
GLOBAL	__end_of_readStatus
	__end_of_readStatus:
	signat	_readStatus,89
	global	_RF24_enableDynamicPayloadLength

;; *************** function _RF24_enableDynamicPayloadLength *****************
;; Defined at:
;;		line 170 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  pipe            1    wreg     enum E907
;; Auto vars:     Size  Location     Type
;;  pipe            1    8[COMMON] enum E907
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_readRegister
;;		_writeRegister
;; This function is called by:
;;		_initializeRF24
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=1
	line	170
global __ptext33
__ptext33:	;psect for function _RF24_enableDynamicPayloadLength
psect	text33
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	170
	
_RF24_enableDynamicPayloadLength:	
;incstack = 0
	callstack 3
; Regs used in _RF24_enableDynamicPayloadLength: [wreg+status,2+status,0+pclath+cstack]
	movwf	(RF24_enableDynamicPayloadLength@pipe)
	line	172
	
l2234:	
	movlw	low(01Dh)
	fcall	_readRegister
	movwf	(??_RF24_enableDynamicPayloadLength+0)+0
	movf	(??_RF24_enableDynamicPayloadLength+0)+0,w
	movwf	(_temp0)
	line	173
	
l2236:	
	bsf	(_temp0)+(2/8),(2)&7
	line	174
	movf	(_temp0),w
	movwf	(??_RF24_enableDynamicPayloadLength+0)+0
	movf	(??_RF24_enableDynamicPayloadLength+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(01Dh)
	fcall	_writeRegister
	line	175
	
l2238:	
		movlw	7
	xorwf	((RF24_enableDynamicPayloadLength@pipe)),w
	btfss	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l2242
u1070:
	line	177
	
l2240:	
	movlw	low(03Fh)
	movwf	(??_RF24_enableDynamicPayloadLength+0)+0
	movf	(??_RF24_enableDynamicPayloadLength+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(01Ch)
	fcall	_writeRegister
	line	178
	goto	l324
	line	181
	
l2242:	
	movlw	low(01Ch)
	fcall	_readRegister
	movwf	(??_RF24_enableDynamicPayloadLength+0)+0
	movf	(??_RF24_enableDynamicPayloadLength+0)+0,w
	movwf	(_temp0)
	line	182
	
l2244:	
	movlw	low(01h)
	movwf	(??_RF24_enableDynamicPayloadLength+0)+0
	incf	(RF24_enableDynamicPayloadLength@pipe),w
	goto	u1084
u1085:
	clrc
	rlf	(??_RF24_enableDynamicPayloadLength+0)+0,f
u1084:
	addlw	-1
	skipz
	goto	u1085
	movf	0+(??_RF24_enableDynamicPayloadLength+0)+0,w
	movwf	(??_RF24_enableDynamicPayloadLength+1)+0
	movf	(??_RF24_enableDynamicPayloadLength+1)+0,w
	iorwf	(_temp0),f
	line	183
	
l2246:	
	movf	(_temp0),w
	movwf	(??_RF24_enableDynamicPayloadLength+0)+0
	movf	(??_RF24_enableDynamicPayloadLength+0)+0,w
	movwf	(writeRegister@value)
	movlw	low(01Ch)
	fcall	_writeRegister
	line	185
	
l324:	
	return
	callstack 0
GLOBAL	__end_of_RF24_enableDynamicPayloadLength
	__end_of_RF24_enableDynamicPayloadLength:
	signat	_RF24_enableDynamicPayloadLength,4217
	global	_writeRegister

;; *************** function _writeRegister *****************
;; Defined at:
;;		line 18 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;;  value           1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_initialize
;;		_RF24_startListening
;;		_RF24_setChannel
;;		_RF24_setDataRate
;;		_RF24_setOutputPower
;;		_RF24_closeDataPipe
;;		_RF24_openReadingPipe
;;		_RF24_enableDynamicPayloadLength
;;		_RF24_read
;;		_RF24_write
;;		_RF24_setCRCEncoding
;;		_RF24_setPayloadWidth
;;		_RF24_setAutoAck
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	line	18
global __ptext34
__ptext34:	;psect for function _writeRegister
psect	text34
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	18
	
_writeRegister:	
;incstack = 0
	callstack 3
; Regs used in _writeRegister: [wreg+status,2+status,0+pclath+cstack]
	movwf	(writeRegister@mnemonic_addr)
	line	20
	
l1966:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	21
	
l1968:	
	movf	(writeRegister@mnemonic_addr),w
	iorlw	020h
	fcall	_SPI_exchangeByte
	movwf	(??_writeRegister+0)+0
	movf	(??_writeRegister+0)+0,w
	movwf	(_temp0)
	line	22
	
l1970:	
	movf	(writeRegister@value),w
	fcall	_SPI_exchangeByte
	line	23
	
l1972:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	27
	
l262:	
	return
	callstack 0
GLOBAL	__end_of_writeRegister
	__end_of_writeRegister:
	signat	_writeRegister,8313
	global	_readRegister

;; *************** function _readRegister *****************
;; Defined at:
;;		line 40 in file "G:/GP/PIC/DHCP/libs/rf24.c"
;; Parameters:    Size  Location     Type
;;  mnemonic_add    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mnemonic_add    1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_SPI_exchangeByte
;; This function is called by:
;;		_RF24_startListening
;;		_RF24_setDataRate
;;		_RF24_setOutputPower
;;		_RF24_closeDataPipe
;;		_RF24_openWritingPipe
;;		_RF24_openReadingPipe
;;		_RF24_enableDynamicPayloadLength
;;		_RF24_setCRCEncoding
;;		_RF24_setAutoAck
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	line	40
global __ptext35
__ptext35:	;psect for function _readRegister
psect	text35
	file	"G:/GP/PIC/DHCP/libs/rf24.c"
	line	40
	
_readRegister:	
;incstack = 0
	callstack 3
; Regs used in _readRegister: [wreg+status,2+status,0+pclath+cstack]
	movwf	(readRegister@mnemonic_addr)
	line	42
	
l1988:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	43
	
l1990:	
	movf	(readRegister@mnemonic_addr),w
	fcall	_SPI_exchangeByte
	line	44
	
l1992:	
	movlw	low(0FFh)
	fcall	_SPI_exchangeByte
	movwf	(??_readRegister+0)+0
	movf	(??_readRegister+0)+0,w
	movwf	(_temp0)
	line	45
	
l1994:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7	;volatile
	line	46
	
l1996:	
	movf	(_temp0),w
	line	47
	
l271:	
	return
	callstack 0
GLOBAL	__end_of_readRegister
	__end_of_readRegister:
	signat	_readRegister,4217
	global	_SPI_exchangeByte

;; *************** function _SPI_exchangeByte *****************
;; Defined at:
;;		line 15 in file "G:/GP/PIC/DHCP/libs/spi_master.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_writeRegister
;;		_writeMultibyteRegister
;;		_readRegister
;;		_readStatus
;;		_RF24_getDynamicPayloadSize
;;		_RF24_read
;;		_RF24_write
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	file	"G:/GP/PIC/DHCP/libs/spi_master.c"
	line	15
global __ptext36
__ptext36:	;psect for function _SPI_exchangeByte
psect	text36
	file	"G:/GP/PIC/DHCP/libs/spi_master.c"
	line	15
	
_SPI_exchangeByte:	
;incstack = 0
	callstack 3
; Regs used in _SPI_exchangeByte: [wreg]
	movwf	(SPI_exchangeByte@byte)
	line	18
	
l1928:	
	movf	(SPI_exchangeByte@byte),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	19
	
l439:	
	btfss	(99/8),(99)&7	;volatile
	goto	u811
	goto	u810
u811:
	goto	l439
u810:
	
l441:	
	line	20
	bcf	(99/8),(99)&7	;volatile
	line	21
	
l1930:	
	movf	(19),w	;volatile
	line	22
	
l442:	
	return
	callstack 0
GLOBAL	__end_of_SPI_exchangeByte
	__end_of_SPI_exchangeByte:
	signat	_SPI_exchangeByte,4217
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 29 in file "G:/GP/PIC/DHCP/app/src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"G:/GP/PIC/DHCP/app/src/main.c"
	line	29
global __ptext37
__ptext37:	;psect for function _ISR
psect	text37
	file	"G:/GP/PIC/DHCP/app/src/main.c"
	line	29
	
_ISR:	
;incstack = 0
	callstack 1
; Regs used in _ISR: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text37
	line	31
	
i1l35:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
