opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 56723"

opt pagewidth 120

	opt lm

	processor	16F88
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
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "c:\sed_tools\xc8\include\pic16f88.h"
INDF equ 00h ;# 
# 55 "c:\sed_tools\xc8\include\pic16f88.h"
TMR0 equ 01h ;# 
# 61 "c:\sed_tools\xc8\include\pic16f88.h"
PCL equ 02h ;# 
# 67 "c:\sed_tools\xc8\include\pic16f88.h"
STATUS equ 03h ;# 
# 154 "c:\sed_tools\xc8\include\pic16f88.h"
FSR equ 04h ;# 
# 160 "c:\sed_tools\xc8\include\pic16f88.h"
PORTA equ 05h ;# 
# 221 "c:\sed_tools\xc8\include\pic16f88.h"
PORTB equ 06h ;# 
# 282 "c:\sed_tools\xc8\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 301 "c:\sed_tools\xc8\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 378 "c:\sed_tools\xc8\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 433 "c:\sed_tools\xc8\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 466 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 472 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 478 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 484 "c:\sed_tools\xc8\include\pic16f88.h"
T1CON equ 010h ;# 
# 555 "c:\sed_tools\xc8\include\pic16f88.h"
TMR2 equ 011h ;# 
# 561 "c:\sed_tools\xc8\include\pic16f88.h"
T2CON equ 012h ;# 
# 631 "c:\sed_tools\xc8\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 637 "c:\sed_tools\xc8\include\pic16f88.h"
SSPCON equ 014h ;# 
# 706 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 712 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 718 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 724 "c:\sed_tools\xc8\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 781 "c:\sed_tools\xc8\include\pic16f88.h"
RCSTA equ 018h ;# 
# 875 "c:\sed_tools\xc8\include\pic16f88.h"
TXREG equ 019h ;# 
# 881 "c:\sed_tools\xc8\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 887 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 893 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 988 "c:\sed_tools\xc8\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1057 "c:\sed_tools\xc8\include\pic16f88.h"
TRISA equ 085h ;# 
# 1118 "c:\sed_tools\xc8\include\pic16f88.h"
TRISB equ 086h ;# 
# 1179 "c:\sed_tools\xc8\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1234 "c:\sed_tools\xc8\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1267 "c:\sed_tools\xc8\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1300 "c:\sed_tools\xc8\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1370 "c:\sed_tools\xc8\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1427 "c:\sed_tools\xc8\include\pic16f88.h"
PR2 equ 092h ;# 
# 1433 "c:\sed_tools\xc8\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1439 "c:\sed_tools\xc8\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1607 "c:\sed_tools\xc8\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1687 "c:\sed_tools\xc8\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1693 "c:\sed_tools\xc8\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1748 "c:\sed_tools\xc8\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1817 "c:\sed_tools\xc8\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1881 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1887 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1934 "c:\sed_tools\xc8\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1991 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1997 "c:\sed_tools\xc8\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2003 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2009 "c:\sed_tools\xc8\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2015 "c:\sed_tools\xc8\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2065 "c:\sed_tools\xc8\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 49 "c:\sed_tools\xc8\include\pic16f88.h"
INDF equ 00h ;# 
# 55 "c:\sed_tools\xc8\include\pic16f88.h"
TMR0 equ 01h ;# 
# 61 "c:\sed_tools\xc8\include\pic16f88.h"
PCL equ 02h ;# 
# 67 "c:\sed_tools\xc8\include\pic16f88.h"
STATUS equ 03h ;# 
# 154 "c:\sed_tools\xc8\include\pic16f88.h"
FSR equ 04h ;# 
# 160 "c:\sed_tools\xc8\include\pic16f88.h"
PORTA equ 05h ;# 
# 221 "c:\sed_tools\xc8\include\pic16f88.h"
PORTB equ 06h ;# 
# 282 "c:\sed_tools\xc8\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 301 "c:\sed_tools\xc8\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 378 "c:\sed_tools\xc8\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 433 "c:\sed_tools\xc8\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 466 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 472 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 478 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 484 "c:\sed_tools\xc8\include\pic16f88.h"
T1CON equ 010h ;# 
# 555 "c:\sed_tools\xc8\include\pic16f88.h"
TMR2 equ 011h ;# 
# 561 "c:\sed_tools\xc8\include\pic16f88.h"
T2CON equ 012h ;# 
# 631 "c:\sed_tools\xc8\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 637 "c:\sed_tools\xc8\include\pic16f88.h"
SSPCON equ 014h ;# 
# 706 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 712 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 718 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 724 "c:\sed_tools\xc8\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 781 "c:\sed_tools\xc8\include\pic16f88.h"
RCSTA equ 018h ;# 
# 875 "c:\sed_tools\xc8\include\pic16f88.h"
TXREG equ 019h ;# 
# 881 "c:\sed_tools\xc8\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 887 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 893 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 988 "c:\sed_tools\xc8\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1057 "c:\sed_tools\xc8\include\pic16f88.h"
TRISA equ 085h ;# 
# 1118 "c:\sed_tools\xc8\include\pic16f88.h"
TRISB equ 086h ;# 
# 1179 "c:\sed_tools\xc8\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1234 "c:\sed_tools\xc8\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1267 "c:\sed_tools\xc8\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1300 "c:\sed_tools\xc8\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1370 "c:\sed_tools\xc8\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1427 "c:\sed_tools\xc8\include\pic16f88.h"
PR2 equ 092h ;# 
# 1433 "c:\sed_tools\xc8\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1439 "c:\sed_tools\xc8\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1607 "c:\sed_tools\xc8\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1687 "c:\sed_tools\xc8\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1693 "c:\sed_tools\xc8\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1748 "c:\sed_tools\xc8\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1817 "c:\sed_tools\xc8\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1881 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1887 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1934 "c:\sed_tools\xc8\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1991 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1997 "c:\sed_tools\xc8\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2003 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2009 "c:\sed_tools\xc8\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2015 "c:\sed_tools\xc8\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2065 "c:\sed_tools\xc8\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 49 "d:\sed_tools\xc8\include\pic16f88.h"
INDF equ 00h ;# 
# 55 "d:\sed_tools\xc8\include\pic16f88.h"
TMR0 equ 01h ;# 
# 61 "d:\sed_tools\xc8\include\pic16f88.h"
PCL equ 02h ;# 
# 67 "d:\sed_tools\xc8\include\pic16f88.h"
STATUS equ 03h ;# 
# 154 "d:\sed_tools\xc8\include\pic16f88.h"
FSR equ 04h ;# 
# 160 "d:\sed_tools\xc8\include\pic16f88.h"
PORTA equ 05h ;# 
# 221 "d:\sed_tools\xc8\include\pic16f88.h"
PORTB equ 06h ;# 
# 282 "d:\sed_tools\xc8\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 301 "d:\sed_tools\xc8\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 378 "d:\sed_tools\xc8\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 433 "d:\sed_tools\xc8\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 466 "d:\sed_tools\xc8\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 472 "d:\sed_tools\xc8\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 478 "d:\sed_tools\xc8\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 484 "d:\sed_tools\xc8\include\pic16f88.h"
T1CON equ 010h ;# 
# 555 "d:\sed_tools\xc8\include\pic16f88.h"
TMR2 equ 011h ;# 
# 561 "d:\sed_tools\xc8\include\pic16f88.h"
T2CON equ 012h ;# 
# 631 "d:\sed_tools\xc8\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 637 "d:\sed_tools\xc8\include\pic16f88.h"
SSPCON equ 014h ;# 
# 706 "d:\sed_tools\xc8\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 712 "d:\sed_tools\xc8\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 718 "d:\sed_tools\xc8\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 724 "d:\sed_tools\xc8\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 781 "d:\sed_tools\xc8\include\pic16f88.h"
RCSTA equ 018h ;# 
# 875 "d:\sed_tools\xc8\include\pic16f88.h"
TXREG equ 019h ;# 
# 881 "d:\sed_tools\xc8\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 887 "d:\sed_tools\xc8\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 893 "d:\sed_tools\xc8\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 988 "d:\sed_tools\xc8\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1057 "d:\sed_tools\xc8\include\pic16f88.h"
TRISA equ 085h ;# 
# 1118 "d:\sed_tools\xc8\include\pic16f88.h"
TRISB equ 086h ;# 
# 1179 "d:\sed_tools\xc8\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1234 "d:\sed_tools\xc8\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1267 "d:\sed_tools\xc8\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1300 "d:\sed_tools\xc8\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1370 "d:\sed_tools\xc8\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1427 "d:\sed_tools\xc8\include\pic16f88.h"
PR2 equ 092h ;# 
# 1433 "d:\sed_tools\xc8\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1439 "d:\sed_tools\xc8\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1607 "d:\sed_tools\xc8\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1687 "d:\sed_tools\xc8\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1693 "d:\sed_tools\xc8\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1748 "d:\sed_tools\xc8\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1817 "d:\sed_tools\xc8\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1881 "d:\sed_tools\xc8\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1887 "d:\sed_tools\xc8\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1934 "d:\sed_tools\xc8\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1991 "d:\sed_tools\xc8\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1997 "d:\sed_tools\xc8\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2003 "d:\sed_tools\xc8\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2009 "d:\sed_tools\xc8\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2015 "d:\sed_tools\xc8\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2065 "d:\sed_tools\xc8\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 49 "c:\sed_tools\xc8\include\pic16f88.h"
INDF equ 00h ;# 
# 55 "c:\sed_tools\xc8\include\pic16f88.h"
TMR0 equ 01h ;# 
# 61 "c:\sed_tools\xc8\include\pic16f88.h"
PCL equ 02h ;# 
# 67 "c:\sed_tools\xc8\include\pic16f88.h"
STATUS equ 03h ;# 
# 154 "c:\sed_tools\xc8\include\pic16f88.h"
FSR equ 04h ;# 
# 160 "c:\sed_tools\xc8\include\pic16f88.h"
PORTA equ 05h ;# 
# 221 "c:\sed_tools\xc8\include\pic16f88.h"
PORTB equ 06h ;# 
# 282 "c:\sed_tools\xc8\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 301 "c:\sed_tools\xc8\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 378 "c:\sed_tools\xc8\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 433 "c:\sed_tools\xc8\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 466 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 472 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 478 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 484 "c:\sed_tools\xc8\include\pic16f88.h"
T1CON equ 010h ;# 
# 555 "c:\sed_tools\xc8\include\pic16f88.h"
TMR2 equ 011h ;# 
# 561 "c:\sed_tools\xc8\include\pic16f88.h"
T2CON equ 012h ;# 
# 631 "c:\sed_tools\xc8\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 637 "c:\sed_tools\xc8\include\pic16f88.h"
SSPCON equ 014h ;# 
# 706 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 712 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 718 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 724 "c:\sed_tools\xc8\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 781 "c:\sed_tools\xc8\include\pic16f88.h"
RCSTA equ 018h ;# 
# 875 "c:\sed_tools\xc8\include\pic16f88.h"
TXREG equ 019h ;# 
# 881 "c:\sed_tools\xc8\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 887 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 893 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 988 "c:\sed_tools\xc8\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1057 "c:\sed_tools\xc8\include\pic16f88.h"
TRISA equ 085h ;# 
# 1118 "c:\sed_tools\xc8\include\pic16f88.h"
TRISB equ 086h ;# 
# 1179 "c:\sed_tools\xc8\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1234 "c:\sed_tools\xc8\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1267 "c:\sed_tools\xc8\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1300 "c:\sed_tools\xc8\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1370 "c:\sed_tools\xc8\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1427 "c:\sed_tools\xc8\include\pic16f88.h"
PR2 equ 092h ;# 
# 1433 "c:\sed_tools\xc8\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1439 "c:\sed_tools\xc8\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1607 "c:\sed_tools\xc8\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1687 "c:\sed_tools\xc8\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1693 "c:\sed_tools\xc8\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1748 "c:\sed_tools\xc8\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1817 "c:\sed_tools\xc8\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1881 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1887 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1934 "c:\sed_tools\xc8\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1991 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1997 "c:\sed_tools\xc8\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2003 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2009 "c:\sed_tools\xc8\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2015 "c:\sed_tools\xc8\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2065 "c:\sed_tools\xc8\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 49 "c:\sed_tools\xc8\include\pic16f88.h"
INDF equ 00h ;# 
# 55 "c:\sed_tools\xc8\include\pic16f88.h"
TMR0 equ 01h ;# 
# 61 "c:\sed_tools\xc8\include\pic16f88.h"
PCL equ 02h ;# 
# 67 "c:\sed_tools\xc8\include\pic16f88.h"
STATUS equ 03h ;# 
# 154 "c:\sed_tools\xc8\include\pic16f88.h"
FSR equ 04h ;# 
# 160 "c:\sed_tools\xc8\include\pic16f88.h"
PORTA equ 05h ;# 
# 221 "c:\sed_tools\xc8\include\pic16f88.h"
PORTB equ 06h ;# 
# 282 "c:\sed_tools\xc8\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 301 "c:\sed_tools\xc8\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 378 "c:\sed_tools\xc8\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 433 "c:\sed_tools\xc8\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 466 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 472 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 478 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 484 "c:\sed_tools\xc8\include\pic16f88.h"
T1CON equ 010h ;# 
# 555 "c:\sed_tools\xc8\include\pic16f88.h"
TMR2 equ 011h ;# 
# 561 "c:\sed_tools\xc8\include\pic16f88.h"
T2CON equ 012h ;# 
# 631 "c:\sed_tools\xc8\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 637 "c:\sed_tools\xc8\include\pic16f88.h"
SSPCON equ 014h ;# 
# 706 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 712 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 718 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 724 "c:\sed_tools\xc8\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 781 "c:\sed_tools\xc8\include\pic16f88.h"
RCSTA equ 018h ;# 
# 875 "c:\sed_tools\xc8\include\pic16f88.h"
TXREG equ 019h ;# 
# 881 "c:\sed_tools\xc8\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 887 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 893 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 988 "c:\sed_tools\xc8\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1057 "c:\sed_tools\xc8\include\pic16f88.h"
TRISA equ 085h ;# 
# 1118 "c:\sed_tools\xc8\include\pic16f88.h"
TRISB equ 086h ;# 
# 1179 "c:\sed_tools\xc8\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1234 "c:\sed_tools\xc8\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1267 "c:\sed_tools\xc8\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1300 "c:\sed_tools\xc8\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1370 "c:\sed_tools\xc8\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1427 "c:\sed_tools\xc8\include\pic16f88.h"
PR2 equ 092h ;# 
# 1433 "c:\sed_tools\xc8\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1439 "c:\sed_tools\xc8\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1607 "c:\sed_tools\xc8\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1687 "c:\sed_tools\xc8\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1693 "c:\sed_tools\xc8\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1748 "c:\sed_tools\xc8\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1817 "c:\sed_tools\xc8\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1881 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1887 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1934 "c:\sed_tools\xc8\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1991 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1997 "c:\sed_tools\xc8\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2003 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2009 "c:\sed_tools\xc8\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2015 "c:\sed_tools\xc8\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2065 "c:\sed_tools\xc8\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 49 "c:\sed_tools\xc8\include\pic16f88.h"
INDF equ 00h ;# 
# 55 "c:\sed_tools\xc8\include\pic16f88.h"
TMR0 equ 01h ;# 
# 61 "c:\sed_tools\xc8\include\pic16f88.h"
PCL equ 02h ;# 
# 67 "c:\sed_tools\xc8\include\pic16f88.h"
STATUS equ 03h ;# 
# 154 "c:\sed_tools\xc8\include\pic16f88.h"
FSR equ 04h ;# 
# 160 "c:\sed_tools\xc8\include\pic16f88.h"
PORTA equ 05h ;# 
# 221 "c:\sed_tools\xc8\include\pic16f88.h"
PORTB equ 06h ;# 
# 282 "c:\sed_tools\xc8\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 301 "c:\sed_tools\xc8\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 378 "c:\sed_tools\xc8\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 433 "c:\sed_tools\xc8\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 466 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 472 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 478 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 484 "c:\sed_tools\xc8\include\pic16f88.h"
T1CON equ 010h ;# 
# 555 "c:\sed_tools\xc8\include\pic16f88.h"
TMR2 equ 011h ;# 
# 561 "c:\sed_tools\xc8\include\pic16f88.h"
T2CON equ 012h ;# 
# 631 "c:\sed_tools\xc8\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 637 "c:\sed_tools\xc8\include\pic16f88.h"
SSPCON equ 014h ;# 
# 706 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 712 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 718 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 724 "c:\sed_tools\xc8\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 781 "c:\sed_tools\xc8\include\pic16f88.h"
RCSTA equ 018h ;# 
# 875 "c:\sed_tools\xc8\include\pic16f88.h"
TXREG equ 019h ;# 
# 881 "c:\sed_tools\xc8\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 887 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 893 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 988 "c:\sed_tools\xc8\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1057 "c:\sed_tools\xc8\include\pic16f88.h"
TRISA equ 085h ;# 
# 1118 "c:\sed_tools\xc8\include\pic16f88.h"
TRISB equ 086h ;# 
# 1179 "c:\sed_tools\xc8\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1234 "c:\sed_tools\xc8\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1267 "c:\sed_tools\xc8\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1300 "c:\sed_tools\xc8\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1370 "c:\sed_tools\xc8\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1427 "c:\sed_tools\xc8\include\pic16f88.h"
PR2 equ 092h ;# 
# 1433 "c:\sed_tools\xc8\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1439 "c:\sed_tools\xc8\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1607 "c:\sed_tools\xc8\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1687 "c:\sed_tools\xc8\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1693 "c:\sed_tools\xc8\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1748 "c:\sed_tools\xc8\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1817 "c:\sed_tools\xc8\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1881 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1887 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1934 "c:\sed_tools\xc8\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1991 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1997 "c:\sed_tools\xc8\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2003 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2009 "c:\sed_tools\xc8\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2015 "c:\sed_tools\xc8\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2065 "c:\sed_tools\xc8\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 49 "c:\sed_tools\xc8\include\pic16f88.h"
INDF equ 00h ;# 
# 55 "c:\sed_tools\xc8\include\pic16f88.h"
TMR0 equ 01h ;# 
# 61 "c:\sed_tools\xc8\include\pic16f88.h"
PCL equ 02h ;# 
# 67 "c:\sed_tools\xc8\include\pic16f88.h"
STATUS equ 03h ;# 
# 154 "c:\sed_tools\xc8\include\pic16f88.h"
FSR equ 04h ;# 
# 160 "c:\sed_tools\xc8\include\pic16f88.h"
PORTA equ 05h ;# 
# 221 "c:\sed_tools\xc8\include\pic16f88.h"
PORTB equ 06h ;# 
# 282 "c:\sed_tools\xc8\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 301 "c:\sed_tools\xc8\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 378 "c:\sed_tools\xc8\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 433 "c:\sed_tools\xc8\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 466 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 472 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 478 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 484 "c:\sed_tools\xc8\include\pic16f88.h"
T1CON equ 010h ;# 
# 555 "c:\sed_tools\xc8\include\pic16f88.h"
TMR2 equ 011h ;# 
# 561 "c:\sed_tools\xc8\include\pic16f88.h"
T2CON equ 012h ;# 
# 631 "c:\sed_tools\xc8\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 637 "c:\sed_tools\xc8\include\pic16f88.h"
SSPCON equ 014h ;# 
# 706 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 712 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 718 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 724 "c:\sed_tools\xc8\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 781 "c:\sed_tools\xc8\include\pic16f88.h"
RCSTA equ 018h ;# 
# 875 "c:\sed_tools\xc8\include\pic16f88.h"
TXREG equ 019h ;# 
# 881 "c:\sed_tools\xc8\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 887 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 893 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 988 "c:\sed_tools\xc8\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1057 "c:\sed_tools\xc8\include\pic16f88.h"
TRISA equ 085h ;# 
# 1118 "c:\sed_tools\xc8\include\pic16f88.h"
TRISB equ 086h ;# 
# 1179 "c:\sed_tools\xc8\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1234 "c:\sed_tools\xc8\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1267 "c:\sed_tools\xc8\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1300 "c:\sed_tools\xc8\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1370 "c:\sed_tools\xc8\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1427 "c:\sed_tools\xc8\include\pic16f88.h"
PR2 equ 092h ;# 
# 1433 "c:\sed_tools\xc8\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1439 "c:\sed_tools\xc8\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1607 "c:\sed_tools\xc8\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1687 "c:\sed_tools\xc8\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1693 "c:\sed_tools\xc8\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1748 "c:\sed_tools\xc8\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1817 "c:\sed_tools\xc8\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1881 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1887 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1934 "c:\sed_tools\xc8\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1991 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1997 "c:\sed_tools\xc8\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2003 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2009 "c:\sed_tools\xc8\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2015 "c:\sed_tools\xc8\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2065 "c:\sed_tools\xc8\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 49 "c:\sed_tools\xc8\include\pic16f88.h"
INDF equ 00h ;# 
# 55 "c:\sed_tools\xc8\include\pic16f88.h"
TMR0 equ 01h ;# 
# 61 "c:\sed_tools\xc8\include\pic16f88.h"
PCL equ 02h ;# 
# 67 "c:\sed_tools\xc8\include\pic16f88.h"
STATUS equ 03h ;# 
# 154 "c:\sed_tools\xc8\include\pic16f88.h"
FSR equ 04h ;# 
# 160 "c:\sed_tools\xc8\include\pic16f88.h"
PORTA equ 05h ;# 
# 221 "c:\sed_tools\xc8\include\pic16f88.h"
PORTB equ 06h ;# 
# 282 "c:\sed_tools\xc8\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 301 "c:\sed_tools\xc8\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 378 "c:\sed_tools\xc8\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 433 "c:\sed_tools\xc8\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 466 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 472 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 478 "c:\sed_tools\xc8\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 484 "c:\sed_tools\xc8\include\pic16f88.h"
T1CON equ 010h ;# 
# 555 "c:\sed_tools\xc8\include\pic16f88.h"
TMR2 equ 011h ;# 
# 561 "c:\sed_tools\xc8\include\pic16f88.h"
T2CON equ 012h ;# 
# 631 "c:\sed_tools\xc8\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 637 "c:\sed_tools\xc8\include\pic16f88.h"
SSPCON equ 014h ;# 
# 706 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 712 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 718 "c:\sed_tools\xc8\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 724 "c:\sed_tools\xc8\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 781 "c:\sed_tools\xc8\include\pic16f88.h"
RCSTA equ 018h ;# 
# 875 "c:\sed_tools\xc8\include\pic16f88.h"
TXREG equ 019h ;# 
# 881 "c:\sed_tools\xc8\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 887 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 893 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 988 "c:\sed_tools\xc8\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1057 "c:\sed_tools\xc8\include\pic16f88.h"
TRISA equ 085h ;# 
# 1118 "c:\sed_tools\xc8\include\pic16f88.h"
TRISB equ 086h ;# 
# 1179 "c:\sed_tools\xc8\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1234 "c:\sed_tools\xc8\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1267 "c:\sed_tools\xc8\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1300 "c:\sed_tools\xc8\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1370 "c:\sed_tools\xc8\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1427 "c:\sed_tools\xc8\include\pic16f88.h"
PR2 equ 092h ;# 
# 1433 "c:\sed_tools\xc8\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1439 "c:\sed_tools\xc8\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1607 "c:\sed_tools\xc8\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1687 "c:\sed_tools\xc8\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1693 "c:\sed_tools\xc8\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1748 "c:\sed_tools\xc8\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1817 "c:\sed_tools\xc8\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1881 "c:\sed_tools\xc8\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1887 "c:\sed_tools\xc8\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1934 "c:\sed_tools\xc8\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1991 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1997 "c:\sed_tools\xc8\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2003 "c:\sed_tools\xc8\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2009 "c:\sed_tools\xc8\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2015 "c:\sed_tools\xc8\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2065 "c:\sed_tools\xc8\include\pic16f88.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_LCD_enviaCadena
	FNCALL	_main,_LCD_envia_4bits
	FNCALL	_main,_espera01Almohadilla
	FNCALL	_main,_esperaAlmohadillaValor
	FNCALL	_main,_esperaPrimerValor
	FNCALL	_main,_esperaPrimeraTecla
	FNCALL	_main,_esperaPulsarTecla
	FNCALL	_main,_esperaSegundoValor
	FNCALL	_main,_esperaSoltarTecla
	FNCALL	_main,_esperaTercerValor
	FNCALL	_main,_estado10
	FNCALL	_main,_estado100
	FNCALL	_main,_estado50
	FNCALL	_main,_init_ADC
	FNCALL	_main,_init_Timer0
	FNCALL	_main,_init_Timer1
	FNCALL	_main,_init_Timer2
	FNCALL	_main,_init_librerias
	FNCALL	_main,_init_procesoHisteresis
	FNCALL	_main,_init_procesoSecuencia
	FNCALL	_main,_init_procesoTeclado
	FNCALL	_main,_init_registros
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_init_librerias,_LCD_ini
	FNCALL	_init_librerias,_LCD_mensaje_opciones_inicial
	FNCALL	_init_librerias,_TECLADO_ini
	FNCALL	_LCD_ini,_LCD_enciende
	FNCALL	_LCD_ini,_LCD_envia_4bits
	FNCALL	_LCD_enciende,_LCD_envia_4bits
	FNCALL	_esperaTercerValor,_LCD_envia_4bits
	FNCALL	_esperaTercerValor,_LCD_mensaje_opciones_inicial
	FNCALL	_esperaTercerValor,___wmul
	FNCALL	_esperaSoltarTecla,_TECLADO_pulsado
	FNCALL	_esperaSegundoValor,_LCD_envia_4bits
	FNCALL	_esperaSegundoValor,_LCD_mensaje_opciones_inicial
	FNCALL	_esperaSegundoValor,___wmul
	FNCALL	_esperaPulsarTecla,_TECLADO_leer
	FNCALL	_esperaPrimeraTecla,_LCD_enviaCadena
	FNCALL	_esperaPrimeraTecla,_LCD_envia_4bits
	FNCALL	_esperaPrimeraTecla,_LCD_mensaje_opciones2
	FNCALL	_esperaPrimerValor,_LCD_envia_4bits
	FNCALL	_esperaAlmohadillaValor,_LCD_mensaje_opciones_inicial
	FNCALL	_espera01Almohadilla,_LCD_mensaje_opciones2
	FNCALL	_espera01Almohadilla,_LCD_mensaje_opciones_inicial
	FNCALL	_LCD_mensaje_opciones_inicial,_LCD_enviaCadena
	FNCALL	_LCD_mensaje_opciones_inicial,_LCD_envia_4bits
	FNCALL	_LCD_mensaje_opciones2,_LCD_enviaCadena
	FNCALL	_LCD_mensaje_opciones2,_LCD_envia_4bits
	FNCALL	_LCD_enviaCadena,_LCD_envia_4bits
	FNROOT	_main
	FNCALL	_rutinaInterrupcion,_control_PI
	FNCALL	intlevel1,_rutinaInterrupcion
	global	intlevel1
	FNROOT	intlevel1
	global	_sentido
	global	_start
	global	_cuenta_1s
	global	_cuenta_ints_T0
	global	_tiempo_1s
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"procesoSecuencia.c"
	line	22

;initializer for _sentido
	retlw	01h
	retlw	0

	line	21

;initializer for _start
	retlw	01h
	retlw	0

psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"interrupcion.c"
	line	13

;initializer for _cuenta_1s
	retlw	010h
	retlw	0

	line	12

;initializer for _cuenta_ints_T0
	retlw	04h
	retlw	0

	file	"trabajo.c"
	line	34

;initializer for _tiempo_1s
	retlw	01h
	retlw	0

	global	_tabla_3col
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
	file	"TECLADO.c"
	line	27
_tabla_3col:
	retlw	01h
	retlw	02h
	retlw	03h
	retlw	04h
	retlw	05h
	retlw	06h
	retlw	07h
	retlw	08h
	retlw	09h
	retlw	0Ah
	retlw	0
	retlw	0Bh
	global __end_of_tabla_3col
__end_of_tabla_3col:
	global	_dpowers
psect	strings
	file	"d:\sed_tools\xc8\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_tabla_3col
	global	_dpowers
	global	_estado
	global	_ADC_resultado
	global	_LCD_BUS_PORT_PUNTERO
	global	_LCD_BUS_PORT_TRIS_PUNTERO
	global	_LCD_E_PORT_PUNTERO
	global	_LCD_RS_PORT_PUNTERO
	global	_REBOTES_lectura
	global	_TECLADO_PORT_FIL_PUNTERO
	global	_max_duty
	global	_num_pulsos_ref
	global	_salidaPI
	global	_valor
	global	_valor_TMR1
	global	_LCD_BUS_PORT_PINES
	global	_LCD_E
	global	_LCD_RS
	global	_LCD_var_TRIS
	global	_LCD_var_cursor
	global	_TECLADO_COL_PINES
	global	_TECLADO_FIL_PINES
	global	_TECLADO_banderas
	global	_TECLADO_config
	global	_TECLADO_dato
	global	_nuevaTecla
	global	_tecla
	global	_LCD_E_PORT_TRIS_PUNTERO
	global	_LCD_RS_PORT_TRIS_PUNTERO
	global	_TECLADO_PORT_COL_PUNTERO
	global	_Ton
	global	_error
	global	_errorAnt
	global	_cadena
	global	_TMR1
_TMR1	set	0xE
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_INTCON
_INTCON	set	0xB
	global	_T2CON
_T2CON	set	0x12
	global	_TMR0
_TMR0	set	0x1
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_GIE
_GIE	set	0x5F
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_PEIE
_PEIE	set	0x5E
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_RBIF
_RBIF	set	0x58
	global	_T1CKPS0
_T1CKPS0	set	0x84
	global	_T1CKPS1
_T1CKPS1	set	0x85
	global	_T1OSCEN
_T1OSCEN	set	0x83
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_TMR1CS
_TMR1CS	set	0x81
	global	_TMR1IF
_TMR1IF	set	0x60
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_nT1SYNC
_nT1SYNC	set	0x82
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ANSEL
_ANSEL	set	0x9B
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_OSCCON
_OSCCON	set	0x8F
	global	_PR2
_PR2	set	0x92
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_IOFS
_IOFS	set	0x47A
	global	_TMR1IE
_TMR1IE	set	0x460
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_nRBPU
_nRBPU	set	0x40F
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	79	;'O'
	retlw	80	;'P'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	42	;'*'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	86	;'V'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	58	;':'
	retlw	32	;' '
	retlw	95	;'_'
	retlw	95	;'_'
	retlw	95	;'_'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	0
psect	strings
	
STR_1:	
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	52	;'4'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_5:	
	retlw	49	;'1'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	49	;'1'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	48	;'0'
	retlw	58	;':'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	48	;'0'
	retlw	58	;':'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_CCPMX$RB3
__CFG_CCPMX$RB3 equ 0x0
global __CFG_DEBUG$OFF
__CFG_DEBUG$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$INTOSCIO
__CFG_FOSC$INTOSCIO equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
	file	"obj\trabajo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_estado:
       ds      3

_ADC_resultado:
       ds      2

_LCD_BUS_PORT_PUNTERO:
       ds      2

_LCD_BUS_PORT_TRIS_PUNTERO:
       ds      2

_LCD_E_PORT_PUNTERO:
       ds      2

_LCD_RS_PORT_PUNTERO:
       ds      2

_REBOTES_lectura:
       ds      2

_TECLADO_PORT_FIL_PUNTERO:
       ds      2

_max_duty:
       ds      2

_num_pulsos_ref:
       ds      2

_salidaPI:
       ds      2

_valor:
       ds      2

_valor_TMR1:
       ds      2

_LCD_BUS_PORT_PINES:
       ds      1

_LCD_E:
       ds      1

_LCD_RS:
       ds      1

_LCD_var_TRIS:
       ds      1

_LCD_var_cursor:
       ds      1

_TECLADO_COL_PINES:
       ds      1

_TECLADO_FIL_PINES:
       ds      1

_TECLADO_banderas:
       ds      1

_TECLADO_config:
       ds      1

_TECLADO_dato:
       ds      1

_nuevaTecla:
       ds      1

_tecla:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"procesoSecuencia.c"
	line	22
_sentido:
       ds      2

psect	dataBANK0
	file	"procesoSecuencia.c"
	line	21
_start:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_LCD_E_PORT_TRIS_PUNTERO:
       ds      2

_LCD_RS_PORT_TRIS_PUNTERO:
       ds      2

_TECLADO_PORT_COL_PUNTERO:
       ds      2

_Ton:
       ds      2

_error:
       ds      2

_errorAnt:
       ds      2

_cadena:
       ds      20

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"interrupcion.c"
	line	13
_cuenta_1s:
       ds      2

psect	dataBANK1
	file	"interrupcion.c"
	line	12
_cuenta_ints_T0:
       ds      2

psect	dataBANK1
	file	"trabajo.c"
	line	34
_tiempo_1s:
       ds      2

	file	"obj\trabajo.as"
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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+027h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+020h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
	fcall	__pidataBANK1+5		;fetch initializer
	movwf	__pdataBANK1+5&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_registros:	; 0 bytes @ 0x0
?_init_Timer0:	; 0 bytes @ 0x0
?_init_Timer1:	; 0 bytes @ 0x0
?_init_Timer2:	; 0 bytes @ 0x0
?_init_ADC:	; 0 bytes @ 0x0
?_init_procesoTeclado:	; 0 bytes @ 0x0
?_init_procesoSecuencia:	; 0 bytes @ 0x0
?_init_procesoHisteresis:	; 0 bytes @ 0x0
?_init_librerias:	; 0 bytes @ 0x0
?_LCD_envia_4bits:	; 0 bytes @ 0x0
?_estado100:	; 0 bytes @ 0x0
?_estado10:	; 0 bytes @ 0x0
?_estado50:	; 0 bytes @ 0x0
?_esperaPrimeraTecla:	; 0 bytes @ 0x0
?_esperaPrimerValor:	; 0 bytes @ 0x0
?_espera01Almohadilla:	; 0 bytes @ 0x0
?_esperaSegundoValor:	; 0 bytes @ 0x0
?_esperaTercerValor:	; 0 bytes @ 0x0
?_esperaAlmohadillaValor:	; 0 bytes @ 0x0
?_esperaPulsarTecla:	; 0 bytes @ 0x0
?_esperaSoltarTecla:	; 0 bytes @ 0x0
?_TECLADO_ini:	; 0 bytes @ 0x0
?_LCD_enciende:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_main:	; 0 bytes @ 0x0
?_LCD_mensaje_opciones_inicial:	; 0 bytes @ 0x0
?_LCD_mensaje_opciones2:	; 0 bytes @ 0x0
?_rutinaInterrupcion:	; 0 bytes @ 0x0
?_TECLADO_leer:	; 1 bytes @ 0x0
?_TECLADO_pulsado:	; 1 bytes @ 0x0
	global	?_control_PI
?_control_PI:	; 2 bytes @ 0x0
	global	control_PI@error
control_PI@error:	; 2 bytes @ 0x0
	ds	2
??_control_PI:	; 0 bytes @ 0x2
	ds	6
??_rutinaInterrupcion:	; 0 bytes @ 0x8
	ds	6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_init_registros:	; 0 bytes @ 0x0
??_init_Timer0:	; 0 bytes @ 0x0
??_init_Timer1:	; 0 bytes @ 0x0
??_init_Timer2:	; 0 bytes @ 0x0
??_init_ADC:	; 0 bytes @ 0x0
??_init_procesoTeclado:	; 0 bytes @ 0x0
??_init_procesoSecuencia:	; 0 bytes @ 0x0
??_init_procesoHisteresis:	; 0 bytes @ 0x0
??_LCD_envia_4bits:	; 0 bytes @ 0x0
??_estado100:	; 0 bytes @ 0x0
??_estado10:	; 0 bytes @ 0x0
??_estado50:	; 0 bytes @ 0x0
??_TECLADO_leer:	; 0 bytes @ 0x0
??_TECLADO_pulsado:	; 0 bytes @ 0x0
??_TECLADO_ini:	; 0 bytes @ 0x0
??_isdigit:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	_isdigit$624
_isdigit$624:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_esperaSoltarTecla:	; 0 bytes @ 0x2
	global	TECLADO_leer@i
TECLADO_leer@i:	; 1 bytes @ 0x2
	global	LCD_envia_4bits@LCD_var_TRIS
LCD_envia_4bits@LCD_var_TRIS:	; 1 bytes @ 0x2
	global	_TECLADO_ini$349
_TECLADO_ini$349:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	LCD_envia_4bits@a
LCD_envia_4bits@a:	; 1 bytes @ 0x3
	global	TECLADO_leer@bit_a_testear
TECLADO_leer@bit_a_testear:	; 2 bytes @ 0x3
	ds	1
??___lwdiv:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
	global	TECLADO_ini@config
TECLADO_ini@config:	; 1 bytes @ 0x4
	global	LCD_envia_4bits@dato
LCD_envia_4bits@dato:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
?_LCD_enviaCadena:	; 0 bytes @ 0x5
??_esperaPrimerValor:	; 0 bytes @ 0x5
??_esperaPulsarTecla:	; 0 bytes @ 0x5
??_LCD_enciende:	; 0 bytes @ 0x5
	global	LCD_enviaCadena@cadena
LCD_enviaCadena@cadena:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
??_LCD_enviaCadena:	; 0 bytes @ 0x7
	global	LCD_enciende@config
LCD_enciende@config:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	_esperaPrimerValor$188
_esperaPrimerValor$188:	; 2 bytes @ 0x7
	ds	1
?_LCD_ini:	; 0 bytes @ 0x8
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	LCD_ini@RS_PIN
LCD_ini@RS_PIN:	; 1 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	1
	global	LCD_ini@E_PIN
LCD_ini@E_PIN:	; 1 bytes @ 0x9
	global	_esperaPrimerValor$189
_esperaPrimerValor$189:	; 2 bytes @ 0x9
	global	_LCD_enviaCadena$418
_LCD_enviaCadena$418:	; 2 bytes @ 0x9
	ds	1
??_LCD_ini:	; 0 bytes @ 0xA
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
	global	_esperaPrimerValor$190
_esperaPrimerValor$190:	; 2 bytes @ 0xB
	global	_LCD_enviaCadena$419
_LCD_enviaCadena$419:	; 2 bytes @ 0xB
	ds	1
??___lwmod:	; 0 bytes @ 0xC
	global	_LCD_ini$395
_LCD_ini$395:	; 2 bytes @ 0xC
	ds	1
	global	LCD_enviaCadena@i
LCD_enviaCadena@i:	; 1 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
??_LCD_mensaje_opciones_inicial:	; 0 bytes @ 0xE
??_LCD_mensaje_opciones2:	; 0 bytes @ 0xE
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xE
	global	LCD_ini@config
LCD_ini@config:	; 1 bytes @ 0xE
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xE
	ds	2
	global	_LCD_mensaje_opciones_inicial$175
_LCD_mensaje_opciones_inicial$175:	; 2 bytes @ 0x10
	global	_LCD_mensaje_opciones2$178
_LCD_mensaje_opciones2$178:	; 2 bytes @ 0x10
	ds	2
??_init_librerias:	; 0 bytes @ 0x12
??_esperaPrimeraTecla:	; 0 bytes @ 0x12
??_espera01Almohadilla:	; 0 bytes @ 0x12
??_esperaSegundoValor:	; 0 bytes @ 0x12
??_esperaTercerValor:	; 0 bytes @ 0x12
??_esperaAlmohadillaValor:	; 0 bytes @ 0x12
	ds	1
??_sprintf:	; 0 bytes @ 0x13
	ds	1
	global	_esperaPrimeraTecla$184
_esperaPrimeraTecla$184:	; 2 bytes @ 0x14
	global	_esperaSegundoValor$192
_esperaSegundoValor$192:	; 2 bytes @ 0x14
	global	_esperaTercerValor$196
_esperaTercerValor$196:	; 2 bytes @ 0x14
	ds	2
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	global	_esperaSegundoValor$193
_esperaSegundoValor$193:	; 2 bytes @ 0x16
	global	_esperaTercerValor$197
_esperaTercerValor$197:	; 2 bytes @ 0x16
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x17
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x18
	global	_esperaSegundoValor$194
_esperaSegundoValor$194:	; 2 bytes @ 0x18
	global	_esperaTercerValor$198
_esperaTercerValor$198:	; 2 bytes @ 0x18
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x19
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1D
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1E
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x20
	ds	1
??_main:	; 0 bytes @ 0x21
	ds	2
	global	_main$103
_main$103:	; 2 bytes @ 0x23
	ds	2
;!
;!Data Sizes:
;!    Strings     86
;!    Constant    22
;!    Data        10
;!    BSS         71
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     37      80
;!    BANK1            80      0      38
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 16
;!		 -> STR_1(CODE[16]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 20
;!		 -> cadena(BANK1[20]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S443$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    LCD_enviaCadena@cadena	PTR const unsigned char  size(2) Largest target is 20
;!		 -> STR_7(CODE[17]), STR_6(CODE[9]), STR_5(CODE[9]), STR_4(CODE[9]), 
;!		 -> STR_3(CODE[9]), STR_2(CODE[17]), cadena(BANK1[20]), 
;!
;!    LCD_E_PORT_TRIS_PUNTERO	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), TRISB(SFR1[1]), TRISA(SFR1[1]), 
;!
;!    LCD_RS_PORT_TRIS_PUNTERO	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), TRISB(SFR1[1]), TRISA(SFR1[1]), 
;!
;!    LCD_BUS_PORT_TRIS_PUNTERO	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), TRISB(SFR1[1]), TRISA(SFR1[1]), 
;!
;!    LCD_E_PORT_PUNTERO	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTB(SFR0[1]), PORTA(SFR0[1]), 
;!
;!    LCD_BUS_PORT_PUNTERO	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTB(SFR0[1]), PORTA(SFR0[1]), 
;!
;!    TECLADO_PORT_COL_PUNTERO	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTB(SFR0[1]), PORTA(SFR0[1]), 
;!
;!    TECLADO_PORT_FIL_PUNTERO	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTB(SFR0[1]), PORTA(SFR0[1]), 
;!
;!    LCD_RS_PORT_PUNTERO	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTB(SFR0[1]), PORTA(SFR0[1]), 
;!
;!    estado	PTR FTN()void [3] size(1) Largest target is 0
;!		 -> esperaSoltarTecla(), esperaPulsarTecla(), esperaAlmohadillaValor(), esperaTercerValor(), 
;!		 -> esperaSegundoValor(), espera01Almohadilla(), esperaPrimerValor(), esperaPrimeraTecla(), 
;!		 -> estado50(), estado10(), estado100(), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _rutinaInterrupcion in COMMON
;!
;!    _rutinaInterrupcion->_control_PI
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _init_librerias->_LCD_mensaje_opciones_inicial
;!    _LCD_ini->_LCD_enciende
;!    _LCD_enciende->_LCD_envia_4bits
;!    _esperaTercerValor->_LCD_mensaje_opciones_inicial
;!    _esperaSoltarTecla->_TECLADO_pulsado
;!    _esperaSegundoValor->_LCD_mensaje_opciones_inicial
;!    _esperaPulsarTecla->_TECLADO_leer
;!    _esperaPrimeraTecla->_LCD_mensaje_opciones2
;!    _esperaPrimerValor->_LCD_envia_4bits
;!    _esperaAlmohadillaValor->_LCD_mensaje_opciones_inicial
;!    _espera01Almohadilla->_LCD_mensaje_opciones2
;!    _espera01Almohadilla->_LCD_mensaje_opciones_inicial
;!    _LCD_mensaje_opciones_inicial->_LCD_enviaCadena
;!    _LCD_mensaje_opciones2->_LCD_enviaCadena
;!    _LCD_enviaCadena->_LCD_envia_4bits
;!
;!Critical Paths under _rutinaInterrupcion in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _rutinaInterrupcion in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _rutinaInterrupcion in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _rutinaInterrupcion in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0   11976
;!                                             33 BANK0      4     4      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;!                _espera01Almohadilla *
;!             _esperaAlmohadillaValor *
;!                  _esperaPrimerValor *
;!                 _esperaPrimeraTecla *
;!                  _esperaPulsarTecla *
;!                 _esperaSegundoValor *
;!                  _esperaSoltarTecla *
;!                  _esperaTercerValor *
;!                           _estado10 *
;!                          _estado100 *
;!                           _estado50 *
;!                           _init_ADC
;!                        _init_Timer0
;!                        _init_Timer1
;!                        _init_Timer2
;!                     _init_librerias
;!             _init_procesoHisteresis
;!              _init_procesoSecuencia
;!                _init_procesoTeclado
;!                     _init_registros
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             19    14      5    1841
;!                                             14 BANK0     19    14      5
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      68
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     265
;!                                              8 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     268
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _init_registros                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoTeclado                                  1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoSecuencia                                1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoHisteresis                               1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_librerias                                       2     2      0    1785
;!                                             18 BANK0      2     2      0
;!                            _LCD_ini
;!       _LCD_mensaje_opciones_inicial
;!                        _TECLADO_ini
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_ini                                          5     5      0     134
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _LCD_ini                                              7     5      2     800
;!                                              8 BANK0      7     5      2
;!                       _LCD_enciende
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_enciende                                         3     3      0     159
;!                                              5 BANK0      3     3      0
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer2                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer1                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer0                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_ADC                                             1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _estado50                                             1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _estado100                                            1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _estado10                                             1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaTercerValor                                    8     8      0    1470
;!                                             18 BANK0      8     8      0
;!                    _LCD_envia_4bits
;!       _LCD_mensaje_opciones_inicial
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (1) _esperaSoltarTecla                                    1     1      0       0
;!                                              2 BANK0      1     1      0
;!                    _TECLADO_pulsado
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_pulsado                                      2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaSegundoValor                                   8     8      0    1470
;!                                             18 BANK0      8     8      0
;!                    _LCD_envia_4bits
;!       _LCD_mensaje_opciones_inicial
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     410
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _esperaPulsarTecla                                    1     1      0      95
;!                                              5 BANK0      1     1      0
;!                       _TECLADO_leer
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_leer                                         5     5      0      95
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaPrimeraTecla                                   4     4      0    1702
;!                                             18 BANK0      4     4      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;!              _LCD_mensaje_opciones2
;! ---------------------------------------------------------------------------------
;! (1) _esperaPrimerValor                                    8     8      0     209
;!                                              5 BANK0      8     8      0
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (1) _esperaAlmohadillaValor                               1     1      0     851
;!                                             18 BANK0      1     1      0
;!       _LCD_mensaje_opciones_inicial
;! ---------------------------------------------------------------------------------
;! (1) _espera01Almohadilla                                  2     2      0    1702
;!                                             18 BANK0      2     2      0
;!              _LCD_mensaje_opciones2
;!       _LCD_mensaje_opciones_inicial
;! ---------------------------------------------------------------------------------
;! (2) _LCD_mensaje_opciones_inicial                         4     4      0     851
;!                                             14 BANK0      4     4      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (2) _LCD_mensaje_opciones2                                4     4      0     851
;!                                             14 BANK0      4     4      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_enviaCadena                                      9     7      2     690
;!                                              5 BANK0      9     7      2
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_envia_4bits                                      5     5      0     137
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _rutinaInterrupcion                                   6     6      0     119
;!                                              8 COMMON     6     6      0
;!                         _control_PI
;! ---------------------------------------------------------------------------------
;! (6) _control_PI                                           8     6      2     119
;!                                              0 COMMON     8     6      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCD_enviaCadena
;!     _LCD_envia_4bits
;!   _LCD_envia_4bits
;!   _espera01Almohadilla *
;!     _LCD_mensaje_opciones2
;!       _LCD_enviaCadena
;!         _LCD_envia_4bits
;!       _LCD_envia_4bits
;!     _LCD_mensaje_opciones_inicial
;!       _LCD_enviaCadena
;!         _LCD_envia_4bits
;!       _LCD_envia_4bits
;!   _esperaAlmohadillaValor *
;!     _LCD_mensaje_opciones_inicial
;!       _LCD_enviaCadena
;!         _LCD_envia_4bits
;!       _LCD_envia_4bits
;!   _esperaPrimerValor *
;!     _LCD_envia_4bits
;!   _esperaPrimeraTecla *
;!     _LCD_enviaCadena
;!       _LCD_envia_4bits
;!     _LCD_envia_4bits
;!     _LCD_mensaje_opciones2
;!       _LCD_enviaCadena
;!         _LCD_envia_4bits
;!       _LCD_envia_4bits
;!   _esperaPulsarTecla *
;!     _TECLADO_leer
;!   _esperaSegundoValor *
;!     _LCD_envia_4bits
;!     _LCD_mensaje_opciones_inicial
;!       _LCD_enviaCadena
;!         _LCD_envia_4bits
;!       _LCD_envia_4bits
;!     ___wmul
;!   _esperaSoltarTecla *
;!     _TECLADO_pulsado
;!   _esperaTercerValor *
;!     _LCD_envia_4bits
;!     _LCD_mensaje_opciones_inicial
;!       _LCD_enviaCadena
;!         _LCD_envia_4bits
;!       _LCD_envia_4bits
;!     ___wmul
;!   _estado10 *
;!   _estado100 *
;!   _estado50 *
;!   _init_ADC *
;!   _init_Timer0 *
;!   _init_Timer1 *
;!   _init_Timer2 *
;!   _init_librerias *
;!     _LCD_ini
;!       _LCD_enciende
;!         _LCD_envia_4bits
;!       _LCD_envia_4bits
;!     _LCD_mensaje_opciones_inicial
;!       _LCD_enviaCadena
;!         _LCD_envia_4bits
;!       _LCD_envia_4bits
;!     _TECLADO_ini
;!   _init_procesoHisteresis *
;!   _init_procesoSecuencia *
;!   _init_procesoTeclado *
;!   _init_registros *
;!   _sprintf *
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     ___wmul
;!     _isdigit
;!
;! _rutinaInterrupcion (ROOT)
;!   _control_PI
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0      26       7       47.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     25      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      84      12        0.0%
;!ABS                  0      0      84       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 59 in file "trabajo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_enviaCadena
;;		_LCD_envia_4bits
;;		_espera01Almohadilla
;;		_esperaAlmohadillaValor
;;		_esperaPrimerValor
;;		_esperaPrimeraTecla
;;		_esperaPulsarTecla
;;		_esperaSegundoValor
;;		_esperaSoltarTecla
;;		_esperaTercerValor
;;		_estado10
;;		_estado100
;;		_estado50
;;		_init_ADC
;;		_init_Timer0
;;		_init_Timer1
;;		_init_Timer2
;;		_init_librerias
;;		_init_procesoHisteresis
;;		_init_procesoSecuencia
;;		_init_procesoTeclado
;;		_init_registros
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"trabajo.c"
	line	59
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"trabajo.c"
	line	59
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	66
	
l3474:	
	fcall	_init_registros
	line	68
	fcall	_init_Timer0
	line	70
	
l3476:	
	fcall	_init_Timer1
	line	72
	
l3478:	
	fcall	_init_Timer2
	line	74
	
l3480:	
	fcall	_init_ADC
	line	76
	
l3482:	
	fcall	_init_procesoTeclado
	line	78
	
l3484:	
	fcall	_init_procesoSecuencia
	line	80
	
l3486:	
	fcall	_init_procesoHisteresis
	line	82
	
l3488:	
	fcall	_init_librerias
	line	84
	
l3490:	
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_num_pulsos_ref)
	movlw	high(064h)
	movwf	((_num_pulsos_ref))+1
	line	86
	
l3492:	
	bsf	(52/8),(52)&7	;volatile
	line	87
	
l3494:	
	bcf	(53/8),(53)&7	;volatile
	line	89
	
l3496:	
	bsf	(95/8),(95)&7	;volatile
	goto	l3498
	line	94
	
l75:	
	line	96
	
l3498:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_estado),w
	fcall	fptable
	line	98
	
l3500:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+_estado+01h),w
	fcall	fptable
	line	100
	
l3502:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+_estado+02h),w
	fcall	fptable
	line	102
	
l3504:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tiempo_1s+1)^080h,w
	iorwf	(_tiempo_1s)^080h,w
	skipnz
	goto	u2861
	goto	u2860
u2861:
	goto	l3498
u2860:
	line	104
	
l3506:	
	clrf	(_tiempo_1s)^080h
	clrf	(_tiempo_1s+1)^080h
	line	105
	
l3508:	
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movf	(_num_pulsos_ref+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_num_pulsos_ref),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(_valor_TMR1+1),w
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(_valor_TMR1),w
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movlw	(_cadena)&0ffh
	fcall	_sprintf
	goto	l3512
	line	106
	
l77:	
	goto	l3512
	
l3510:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_main$103)
	movlw	high(040h)
	movwf	((_main$103))+1
	goto	l3514
	
l79:	
	
l3512:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_main$103)
	clrf	(_main$103+1)
	goto	l3514
	
l81:	
	
l3514:	
	movf	(_main$103),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3516
	
l82:	
	
l3516:	
	comf	(_LCD_RS),w
	movwf	(??_main+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_main+0)+0,w
	andwf	indf,f
	goto	l3518
	
l83:	
	
l3518:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_main+0)+0
	movlw	high(080h)
	movwf	1+(??_main+0)+0
	movlw	04h
	movwf	btemp+1
u2875:
	rlf	(??_main+0)+1,w
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	decfsz	btemp+1,f
	goto	u2875
	movf	0+(??_main+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3520:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3522
	
l84:	
	goto	l3522
	
l85:	
	goto	l3522
	
l86:	
	line	107
	
l3522:	
	movlw	(_cadena&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	(0x0)
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	112
	
l3524:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	116
	
l3526:	
	opt asmopt_off
movlw	33
movwf	(??_main+0)+0,f
u3057:
decfsz	(??_main+0)+0,f
	goto	u3057
opt asmopt_on

	line	121
	
l3528:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(250/8),(250)&7	;volatile
	btfss	(250/8),(250)&7	;volatile
	goto	u2881
	goto	u2880
u2881:
	goto	l3498
u2880:
	line	122
	
l3530:	
	movf	(30),w	;volatile
	clrf	(_ADC_resultado+1)
	addwf	(_ADC_resultado+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ADC_resultado)
	addwf	(_ADC_resultado)

	goto	l3498
	line	123
	
l87:	
	goto	l3498
	line	126
	
l76:	
	goto	l3498
	line	127
	
l88:	
	line	94
	goto	l3498
	
l89:	
	line	128
	
l90:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "d:\sed_tools\xc8\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> cadena(20), 
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  sp              1   29[BANK0 ] PTR unsigned char 
;;		 -> cadena(20), 
;;  _val            4   25[BANK0 ] struct .
;;  width           2   30[BANK0 ] int 
;;  c               1   32[BANK0 ] char 
;;  flag            1   24[BANK0 ] unsigned char 
;;  prec            1   23[BANK0 ] char 
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"d:\sed_tools\xc8\sources\common\doprnt.c"
	line	492
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"d:\sed_tools\xc8\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l3074:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
	goto	l3156
	
l881:	
	line	547
	
l3076:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2221
	goto	u2220
u2221:
	goto	l3082
u2220:
	line	550
	
l3078:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3080:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
	goto	l3156
	line	552
	
l882:	
	line	555
	
l3082:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
	clrf	(sprintf@flag)
	line	606
	
l3084:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u2231
	goto	u2230
u2231:
	goto	l3098
u2230:
	line	607
	
l3086:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l3088
	line	608
	
l884:	
	line	609
	
l3088:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___wmul@multiplier)
	movlw	high(0Ah)
	movwf	((___wmul@multiplier))+1
	movf	(sprintf@width+1),w
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	movf	(sprintf@width),w
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(sprintf@width+1)
	addwf	(sprintf@width+1)
	movf	(0+(?___wmul)),w
	clrf	(sprintf@width)
	addwf	(sprintf@width)

	line	610
	
l3090:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addlw	low(-48)
	movwf	(??_sprintf+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_sprintf+0)+0)+1
	movf	0+(??_sprintf+0)+0,w
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movf	1+(??_sprintf+0)+0,w
	addwf	(sprintf@width+1),f
	
l3092:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l3094:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2241
	goto	u2240
u2241:
	goto	l3088
u2240:
	goto	l3098
	
l885:	
	goto	l3098
	line	617
	
l883:	
	line	644
	goto	l3098
	line	646
	
l887:	
	line	647
	goto	l3158
	line	706
	
l889:	
	goto	l3100
	line	707
	
l890:	
	line	708
	goto	l3100
	line	811
	
l892:	
	line	822
	goto	l3156
	line	831
	
l3096:	
	goto	l3100
	line	644
	
l886:	
	
l3098:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte          219     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3158
	xorlw	100^0	; case 100
	skipnz
	goto	l3100
	xorlw	105^100	; case 105
	skipnz
	goto	l3100
	goto	l3156
	opt asmopt_on

	line	831
	
l891:	
	line	1268
	
l3100:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l3102:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l3104:	
	btfss	(sprintf@_val+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l3110
u2250:
	line	1271
	
l3106:	
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l3108:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l3110
	line	1273
	
l893:	
	line	1314
	
l3110:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l3114
u2260:
	goto	l3122
	
l3112:	
	goto	l3122
	line	1315
	
l894:	
	
l3114:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u2275
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2275:
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l3118
u2270:
	goto	l3122
	line	1316
	
l3116:	
	goto	l3122
	
l896:	
	line	1314
	
l3118:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l3120:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l3114
u2280:
	goto	l3122
	
l895:	
	line	1354
	
l3122:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l897
u2290:
	
l3124:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l897
u2300:
	line	1355
	
l3126:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l897:	
	line	1390
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@width+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u2315
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u2315:

	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l3130
u2310:
	line	1391
	
l3128:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@width),f
	movf	1+(??_sprintf+0)+0,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l3132
	line	1392
	
l898:	
	line	1393
	
l3130:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l3132
	
l899:	
	line	1437
	
l3132:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l3140
u2320:
	goto	l3134
	line	1438
	
l901:	
	line	1439
	
l3134:	
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3136:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1440
	
l3138:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l3134
u2330:
	goto	l3140
	
l902:	
	goto	l3140
	
l900:	
	line	1447
	
l3140:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l3146
u2340:
	line	1448
	
l3142:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3144:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l3146
	
l903:	
	line	1481
	
l3146:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
	goto	l3154
	
l905:	
	line	1498
	
l3148:	
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
l3150:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3152:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l3154
	line	1534
	
l904:	
	line	1483
	
l3154:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l3148
u2350:
	goto	l3156
	
l906:	
	goto	l3156
	line	1542
	
l880:	
	line	545
	
l3156:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l3076
u2360:
	goto	l3158
	
l907:	
	goto	l3158
	line	1544
	
l888:	
	line	1547
	
l3158:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l908
	line	1549
	
l3160:	
	line	1550
;	Return value of _sprintf is never used
	
l908:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "d:\sed_tools\xc8\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"d:\sed_tools\xc8\sources\common\isdigit.c"
	line	8
global __ptext2
__ptext2:	;psect for function _isdigit
psect	text2
	file	"d:\sed_tools\xc8\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 4
; Regs used in _isdigit: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l2956:	
	clrf	(_isdigit$624)
	
l2958:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2021
	goto	u2020
u2021:
	goto	l2964
u2020:
	
l2960:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l2964
u2030:
	
l2962:	
	clrf	(_isdigit$624)
	incf	(_isdigit$624),f
	goto	l2964
	
l1230:	
	
l2964:	
	rrf	(_isdigit$624),w
	
	goto	l1231
	
l2966:	
	line	15
	
l1231:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "d:\sed_tools\xc8\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[BANK0 ] unsigned int 
;;  dividend        2   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"d:\sed_tools\xc8\sources\common\lwmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwmod
psect	text3
	file	"d:\sed_tools\xc8\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2994:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2111
	goto	u2110
u2111:
	goto	l3012
u2110:
	line	14
	
l2996:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3002
	
l1326:	
	line	16
	
l2998:	
	movlw	01h
	
u2125:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2125
	line	17
	
l3000:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3002
	line	18
	
l1325:	
	line	15
	
l3002:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2131
	goto	u2130
u2131:
	goto	l2998
u2130:
	goto	l3004
	
l1327:	
	goto	l3004
	line	19
	
l1328:	
	line	20
	
l3004:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2145
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2145:
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l3008
u2140:
	line	21
	
l3006:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3008
	
l1329:	
	line	22
	
l3008:	
	movlw	01h
	
u2155:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2155
	line	23
	
l3010:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l3004
u2160:
	goto	l3012
	
l1330:	
	goto	l3012
	line	24
	
l1324:	
	line	25
	
l3012:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1331
	
l3014:	
	line	26
	
l1331:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "d:\sed_tools\xc8\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"d:\sed_tools\xc8\sources\common\lwdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"d:\sed_tools\xc8\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2968:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2970:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2041
	goto	u2040
u2041:
	goto	l2990
u2040:
	line	16
	
l2972:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2978
	
l1316:	
	line	18
	
l2974:	
	movlw	01h
	
u2055:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2055
	line	19
	
l2976:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2978
	line	20
	
l1315:	
	line	17
	
l2978:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2061
	goto	u2060
u2061:
	goto	l2974
u2060:
	goto	l2980
	
l1317:	
	goto	l2980
	line	21
	
l1318:	
	line	22
	
l2980:	
	movlw	01h
	
u2075:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2075
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2085
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2085:
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l2986
u2080:
	line	24
	
l2982:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2984:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2986
	line	26
	
l1319:	
	line	27
	
l2986:	
	movlw	01h
	
u2095:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2095
	line	28
	
l2988:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l2980
u2100:
	goto	l2990
	
l1320:	
	goto	l2990
	line	29
	
l1314:	
	line	30
	
l2990:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1321
	
l2992:	
	line	31
	
l1321:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_init_registros

;; *************** function _init_registros *****************
;; Defined at:
;;		line 17 in file "inicializacion.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"inicializacion.c"
	line	17
global __ptext5
__ptext5:	;psect for function _init_registros
psect	text5
	file	"inicializacion.c"
	line	17
	global	__size_of_init_registros
	__size_of_init_registros	equ	__end_of_init_registros-_init_registros
	
_init_registros:	
;incstack = 0
	opt	stack 5
; Regs used in _init_registros: [wreg+status,2]
	line	22
	
l3028:	
	movlw	(066h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	33
	goto	l541
	
l542:	
	
l541:	
	btfss	(1146/8)^080h,(1146)&7	;volatile
	goto	u2211
	goto	u2210
u2211:
	goto	l541
u2210:
	goto	l3030
	
l543:	
	line	36
	
l3030:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	37
	clrf	(6)	;volatile
	line	38
	
l3032:	
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	39
	
l3034:	
	movlw	(03Fh)
	movwf	(133)^080h	;volatile
	line	40
	
l3036:	
	movlw	(0C7h)
	movwf	(134)^080h	;volatile
	line	42
	
l544:	
	return
	opt stack 0
GLOBAL	__end_of_init_registros
	__end_of_init_registros:
	signat	_init_registros,88
	global	_init_procesoTeclado

;; *************** function _init_procesoTeclado *****************
;; Defined at:
;;		line 24 in file "procesoTeclado.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"procesoTeclado.c"
	line	24
global __ptext6
__ptext6:	;psect for function _init_procesoTeclado
psect	text6
	file	"procesoTeclado.c"
	line	24
	global	__size_of_init_procesoTeclado
	__size_of_init_procesoTeclado	equ	__end_of_init_procesoTeclado-_init_procesoTeclado
	
_init_procesoTeclado:	
;incstack = 0
	opt	stack 5
; Regs used in _init_procesoTeclado: [wreg]
	line	26
	
l3064:	
	movlw	((fp__esperaPulsarTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_procesoTeclado+0)+0
	movf	(??_init_procesoTeclado+0)+0,w
	movwf	(_estado)
	line	27
	
l400:	
	return
	opt stack 0
GLOBAL	__end_of_init_procesoTeclado
	__end_of_init_procesoTeclado:
	signat	_init_procesoTeclado,88
	global	_init_procesoSecuencia

;; *************** function _init_procesoSecuencia *****************
;; Defined at:
;;		line 35 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"procesoSecuencia.c"
	line	35
global __ptext7
__ptext7:	;psect for function _init_procesoSecuencia
psect	text7
	file	"procesoSecuencia.c"
	line	35
	global	__size_of_init_procesoSecuencia
	__size_of_init_procesoSecuencia	equ	__end_of_init_procesoSecuencia-_init_procesoSecuencia
	
_init_procesoSecuencia:	
;incstack = 0
	opt	stack 5
; Regs used in _init_procesoSecuencia: [wreg]
	line	37
	
l3066:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_procesoSecuencia+0)+0
	movf	(??_init_procesoSecuencia+0)+0,w
	movwf	(0+_estado+01h)
	line	38
	
l186:	
	return
	opt stack 0
GLOBAL	__end_of_init_procesoSecuencia
	__end_of_init_procesoSecuencia:
	signat	_init_procesoSecuencia,88
	global	_init_procesoHisteresis

;; *************** function _init_procesoHisteresis *****************
;; Defined at:
;;		line 53 in file "procesoHisteresis.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"procesoHisteresis.c"
	line	53
global __ptext8
__ptext8:	;psect for function _init_procesoHisteresis
psect	text8
	file	"procesoHisteresis.c"
	line	53
	global	__size_of_init_procesoHisteresis
	__size_of_init_procesoHisteresis	equ	__end_of_init_procesoHisteresis-_init_procesoHisteresis
	
_init_procesoHisteresis:	
;incstack = 0
	opt	stack 5
; Regs used in _init_procesoHisteresis: [wreg]
	line	55
	
l3068:	
	movlw	((fp__estado100-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_procesoHisteresis+0)+0
	movf	(??_init_procesoHisteresis+0)+0,w
	movwf	(0+_estado+02h)
	line	56
	movlw	low(0F9h)
	movwf	(_max_duty)
	movlw	high(0F9h)
	movwf	((_max_duty))+1
	line	57
	
l105:	
	return
	opt stack 0
GLOBAL	__end_of_init_procesoHisteresis
	__end_of_init_procesoHisteresis:
	signat	_init_procesoHisteresis,88
	global	_init_librerias

;; *************** function _init_librerias *****************
;; Defined at:
;;		line 140 in file "inicializacion.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_ini
;;		_LCD_mensaje_opciones_inicial
;;		_TECLADO_ini
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"inicializacion.c"
	line	140
global __ptext9
__ptext9:	;psect for function _init_librerias
psect	text9
	file	"inicializacion.c"
	line	140
	global	__size_of_init_librerias
	__size_of_init_librerias	equ	__end_of_init_librerias-_init_librerias
	
_init_librerias:	
;incstack = 0
	opt	stack 2
; Regs used in _init_librerias: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	143
	
l3070:	
	movlw	(04Ah)
	fcall	_TECLADO_ini
	line	145
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_librerias+0)+0
	movf	(??_init_librerias+0)+0,w
	movwf	(LCD_ini@RS_PIN)
	movlw	(040h)
	movwf	(??_init_librerias+1)+0
	movf	(??_init_librerias+1)+0,w
	movwf	(LCD_ini@E_PIN)
	movlw	(0)
	fcall	_LCD_ini
	line	147
	
l3072:	
	fcall	_LCD_mensaje_opciones_inicial
	line	148
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of_init_librerias
	__end_of_init_librerias:
	signat	_init_librerias,88
	global	_TECLADO_ini

;; *************** function _TECLADO_ini *****************
;; Defined at:
;;		line 126 in file "TECLADO.c"
;; Parameters:    Size  Location     Type
;;  config          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  config          1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_librerias
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"TECLADO.c"
	line	126
global __ptext10
__ptext10:	;psect for function _TECLADO_ini
psect	text10
	file	"TECLADO.c"
	line	126
	global	__size_of_TECLADO_ini
	__size_of_TECLADO_ini	equ	__end_of_TECLADO_ini-_TECLADO_ini
	
_TECLADO_ini:	
;incstack = 0
	opt	stack 4
; Regs used in _TECLADO_ini: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(TECLADO_ini@config)
	line	128
	
l2836:	
	movf	(TECLADO_ini@config),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_config)	;volatile
	line	130
	
l2838:	
	btfss	(TECLADO_ini@config),(0)&7
	goto	u1791
	goto	u1790
u1791:
	goto	l591
u1790:
	
l2840:	
	movlw	high(6)
	movwf	(_TECLADO_PORT_FIL_PUNTERO+1)
	movlw	low(6)
	movwf	(_TECLADO_PORT_FIL_PUNTERO)
	goto	l593
	
l591:	
	movlw	high(5)
	movwf	(_TECLADO_PORT_FIL_PUNTERO+1)
	movlw	low(5)
	movwf	(_TECLADO_PORT_FIL_PUNTERO)
	
l593:	
	line	131
	btfss	(TECLADO_ini@config),(2)&7
	goto	u1801
	goto	u1800
u1801:
	goto	l2844
u1800:
	
l2842:	
	movlw	low(0F0h)
	movwf	(_TECLADO_ini$349)
	movlw	high(0F0h)
	movwf	((_TECLADO_ini$349))+1
	goto	l597
	
l595:	
	
l2844:	
	movlw	low(0Fh)
	movwf	(_TECLADO_ini$349)
	movlw	high(0Fh)
	movwf	((_TECLADO_ini$349))+1
	
l597:	
	movf	(_TECLADO_ini$349),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_FIL_PINES)
	line	133
	
l2846:	
	btfss	(TECLADO_ini@config),(1)&7
	goto	u1811
	goto	u1810
u1811:
	goto	l599
u1810:
	
l2848:	
	movlw	high(6)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_TECLADO_PORT_COL_PUNTERO+1)^080h
	movlw	low(6)
	movwf	(_TECLADO_PORT_COL_PUNTERO)^080h
	goto	l2858
	
l599:	
	movlw	high(5)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_TECLADO_PORT_COL_PUNTERO+1)^080h
	movlw	low(5)
	movwf	(_TECLADO_PORT_COL_PUNTERO)^080h
	goto	l2858
	
l601:	
	line	135
	goto	l2858
	line	138
	
l603:	
	
l2850:	
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	139
	goto	l604
	line	140
	
l605:	
	
l2852:	
	movlw	(038h)
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	141
	goto	l604
	line	142
	
l606:	
	
l2854:	
	movlw	(0E0h)
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	143
	goto	l604
	line	144
	
l2856:	
	goto	l604
	line	135
	
l602:	
	
l2858:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(TECLADO_ini@config),w
	andlw	038h
	movwf	(??_TECLADO_ini+0)+0
	clrf	(??_TECLADO_ini+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            9     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_TECLADO_ini+0)+0,w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3668
	goto	l604
	opt asmopt_on
	
l3668:	
; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 8 to 24
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           44    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_TECLADO_ini+0)+0,w
	opt asmopt_off
	xorlw	8^0	; case 8
	skipnz
	goto	l2850
	xorlw	16^8	; case 16
	skipnz
	goto	l2852
	xorlw	24^16	; case 24
	skipnz
	goto	l2854
	goto	l604
	opt asmopt_on

	line	144
	
l604:	
	line	150
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1821
	goto	u1820
u1821:
	goto	l2862
u1820:
	line	154
	
l2860:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(133)^080h,f	;volatile
	line	167
	goto	l608
	line	168
	
l607:	
	line	171
	
l2862:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(134)^080h,f	;volatile
	line	175
	
l2864:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_TECLADO_config),(6)&7	;volatile
	goto	u1831
	goto	u1830
u1831:
	goto	l608
u1830:
	line	178
	
l2866:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7	;volatile
	goto	l608
	line	194
	
l609:	
	line	195
	
l608:	
	line	201
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_TECLADO_config),(0)&7	;volatile
	goto	u1841
	goto	u1840
u1841:
	goto	l2870
u1840:
	line	202
	
l2868:	
	comf	(_TECLADO_FIL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l612
	line	203
	
l610:	
	line	204
	
l2870:	
	bcf	status, 5	;RP0=0, select bank0
	comf	(_TECLADO_FIL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l612
	
l611:	
	line	205
	
l612:	
	return
	opt stack 0
GLOBAL	__end_of_TECLADO_ini
	__end_of_TECLADO_ini:
	signat	_TECLADO_ini,4216
	global	_LCD_ini

;; *************** function _LCD_ini *****************
;; Defined at:
;;		line 77 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;  config          1    wreg     unsigned char 
;;  RS_PIN          1    8[BANK0 ] unsigned char 
;;  E_PIN           1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  config          1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_enciende
;;		_LCD_envia_4bits
;; This function is called by:
;;		_init_librerias
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"LCD.c"
	line	77
global __ptext11
__ptext11:	;psect for function _LCD_ini
psect	text11
	file	"LCD.c"
	line	77
	global	__size_of_LCD_ini
	__size_of_LCD_ini	equ	__end_of_LCD_ini-_LCD_ini
	
_LCD_ini:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_ini: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_ini@config)
	line	80
	
l2876:	
	btfss	(LCD_ini@config),(1)&7
	goto	u1851
	goto	u1850
u1851:
	goto	l2880
u1850:
	
l2878:	
	movlw	low(0F0h)
	movwf	(_LCD_ini$395)
	movlw	high(0F0h)
	movwf	((_LCD_ini$395))+1
	goto	l723
	
l721:	
	
l2880:	
	movlw	low(0Fh)
	movwf	(_LCD_ini$395)
	movlw	high(0Fh)
	movwf	((_LCD_ini$395))+1
	
l723:	
	movf	(_LCD_ini$395),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	movwf	(_LCD_BUS_PORT_PINES)
	line	81
	movf	(LCD_ini@E_PIN),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	movwf	(_LCD_E)
	line	82
	movf	(LCD_ini@RS_PIN),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	movwf	(_LCD_RS)
	line	84
	
l2882:	
	btfss	(LCD_ini@config),(0)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l725
u1860:
	
l2884:	
	movlw	high(6)
	movwf	(_LCD_BUS_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_BUS_PORT_PUNTERO)
	goto	l727
	
l725:	
	movlw	high(5)
	movwf	(_LCD_BUS_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_BUS_PORT_PUNTERO)
	
l727:	
	line	85
	btfss	(LCD_ini@config),(2)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l729
u1870:
	
l2886:	
	movlw	high(6)
	movwf	(_LCD_RS_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_RS_PORT_PUNTERO)
	goto	l731
	
l729:	
	movlw	high(5)
	movwf	(_LCD_RS_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_RS_PORT_PUNTERO)
	
l731:	
	line	86
	btfss	(LCD_ini@config),(3)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l733
u1880:
	
l2888:	
	movlw	high(6)
	movwf	(_LCD_E_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_E_PORT_PUNTERO)
	goto	l735
	
l733:	
	movlw	high(5)
	movwf	(_LCD_E_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_E_PORT_PUNTERO)
	
l735:	
	line	87
	btfss	(LCD_ini@config),(0)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l737
u1890:
	
l2890:	
	movlw	high(134)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO+1)
	movlw	low(134)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO)
	goto	l739
	
l737:	
	movlw	high(133)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO+1)
	movlw	low(133)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO)
	
l739:	
	line	88
	btfss	(LCD_ini@config),(2)&7
	goto	u1901
	goto	u1900
u1901:
	goto	l741
u1900:
	
l2892:	
	movlw	high(134)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(134)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO)^080h
	goto	l743
	
l741:	
	movlw	high(133)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(133)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO)^080h
	
l743:	
	line	89
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(LCD_ini@config),(3)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l745
u1910:
	
l2894:	
	movlw	high(134)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_E_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(134)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO)^080h
	goto	l2896
	
l745:	
	movlw	high(133)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_E_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(133)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO)^080h
	goto	l2896
	
l747:	
	line	92
	
l2896:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_LCD_RS_PORT_PUNTERO+1),w
	skipz
	goto	u1925
	movlw	low(5)
	xorwf	(_LCD_RS_PORT_PUNTERO),w
u1925:

	skipz
	goto	u1921
	goto	u1920
u1921:
	goto	l2902
u1920:
	line	93
	
l2898:	
	movlw	(09h)
	subwf	(LCD_ini@RS_PIN),w
	skipnc
	goto	u1931
	goto	u1930
u1931:
	goto	l2906
u1930:
	line	94
	
l2900:	
	comf	(LCD_ini@RS_PIN),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2906
	
l749:	
	line	95
	goto	l2906
	line	96
	
l748:	
	line	97
	
l2902:	
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(LCD_ini@RS_PIN),w
	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l2906
u1940:
	line	98
	
l2904:	
	movf	(LCD_ini@RS_PIN),w
	movwf	(??_LCD_ini+0)+0
	clrc
	rrf	(??_LCD_ini+0)+0,w
	xorlw	0ffh
	movwf	(??_LCD_ini+1)+0
	movf	(??_LCD_ini+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2906
	
l751:	
	goto	l2906
	line	99
	
l750:	
	line	101
	
l2906:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_E_PORT_PUNTERO+1),w
	skipz
	goto	u1955
	movlw	low(5)
	xorwf	(_LCD_E_PORT_PUNTERO),w
u1955:

	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l2912
u1950:
	line	102
	
l2908:	
	movlw	(09h)
	subwf	(LCD_ini@E_PIN),w
	skipnc
	goto	u1961
	goto	u1960
u1961:
	goto	l2916
u1960:
	line	103
	
l2910:	
	comf	(LCD_ini@E_PIN),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2916
	
l753:	
	line	104
	goto	l2916
	line	105
	
l752:	
	line	106
	
l2912:	
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(LCD_ini@E_PIN),w
	skipc
	goto	u1971
	goto	u1970
u1971:
	goto	l2916
u1970:
	line	107
	
l2914:	
	movf	(LCD_ini@E_PIN),w
	movwf	(??_LCD_ini+0)+0
	clrc
	rrf	(??_LCD_ini+0)+0,w
	xorlw	0ffh
	movwf	(??_LCD_ini+1)+0
	movf	(??_LCD_ini+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2916
	
l755:	
	goto	l2916
	line	108
	
l754:	
	line	110
	
l2916:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_BUS_PORT_PUNTERO+1),w
	skipz
	goto	u1985
	movlw	low(5)
	xorwf	(_LCD_BUS_PORT_PUNTERO),w
u1985:

	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l2922
u1980:
	
l2918:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0Fh
	skipz
	goto	u1991
	goto	u1990
u1991:
	goto	l2922
u1990:
	line	111
	
l2920:	
	comf	(_LCD_BUS_PORT_PINES),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2928
	line	112
	
l756:	
	
l2922:	
	movlw	high(6)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_BUS_PORT_PUNTERO+1),w
	skipz
	goto	u2005
	movlw	low(6)
	xorwf	(_LCD_BUS_PORT_PUNTERO),w
u2005:

	skipz
	goto	u2001
	goto	u2000
u2001:
	goto	l2928
u2000:
	
l2924:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0F0h
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l2928
u2010:
	line	113
	
l2926:	
	movlw	(09Fh)
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2928
	
l758:	
	goto	l2928
	line	119
	
l757:	
	
l2928:	
	bcf	status, 5	;RP0=0, select bank0
	comf	(_LCD_E),w
	movwf	(??_LCD_ini+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_LCD_E_PORT_TRIS_PUNTERO)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_E_PORT_TRIS_PUNTERO+1)^080h,0
	bcf	status,7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_LCD_ini+0)+0,w
	andwf	indf,f
	line	120
	
l2930:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_ini+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_LCD_RS_PORT_TRIS_PUNTERO)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_TRIS_PUNTERO+1)^080h,0
	bcf	status,7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_LCD_ini+0)+0,w
	andwf	indf,f
	line	121
	
l2932:	
	movf	(_LCD_BUS_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_BUS_PORT_TRIS_PUNTERO+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	movwf	(_LCD_var_TRIS)
	line	122
	
l2934:	
	comf	(_LCD_E),w
	movwf	(??_LCD_ini+0)+0
	movf	(_LCD_E_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_E_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_ini+0)+0,w
	andwf	indf,f
	line	123
	
l2936:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_ini+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_ini+0)+0,w
	andwf	indf,f
	line	124
	
l2938:	
	opt asmopt_off
movlw	20
movwf	((??_LCD_ini+0)+0+1),f
	movlw	121
movwf	((??_LCD_ini+0)+0),f
u3067:
	decfsz	((??_LCD_ini+0)+0),f
	goto	u3067
	decfsz	((??_LCD_ini+0)+0+1),f
	goto	u3067
	nop2
opt asmopt_on

	line	126
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_LCD_RS),w
	movwf	(??_LCD_ini+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_ini+0)+0,w
	andwf	indf,f
	line	127
	
l2940:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	128
	
l2942:	
	opt asmopt_off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_ini+0)+0+1),f
	movlw	125
movwf	((??_LCD_ini+0)+0),f
u3077:
	decfsz	((??_LCD_ini+0)+0),f
	goto	u3077
	decfsz	((??_LCD_ini+0)+0+1),f
	goto	u3077
opt asmopt_on

	line	129
	
l2944:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	130
	
l2946:	
	opt asmopt_off
movlw	36
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_ini+0)+0,f
u3087:
decfsz	(??_LCD_ini+0)+0,f
	goto	u3087
	nop
opt asmopt_on

	line	131
	
l2948:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	132
	
l2950:	
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_ini+0)+0,f
u3097:
decfsz	(??_LCD_ini+0)+0,f
	goto	u3097
	nop
opt asmopt_on

	line	133
	
l2952:	
	movlw	(02h)
	fcall	_LCD_envia_4bits
	line	135
	
l2954:	
	movlw	(03h)
	fcall	_LCD_enciende
	line	137
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_ini
	__end_of_LCD_ini:
	signat	_LCD_ini,12408
	global	_LCD_enciende

;; *************** function _LCD_enciende *****************
;; Defined at:
;;		line 196 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;  config          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  config          1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_envia_4bits
;; This function is called by:
;;		_LCD_ini
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	196
global __ptext12
__ptext12:	;psect for function _LCD_enciende
psect	text12
	file	"LCD.c"
	line	196
	global	__size_of_LCD_enciende
	__size_of_LCD_enciende	equ	__end_of_LCD_enciende-_LCD_enciende
	
_LCD_enciende:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_enciende: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enciende@config)
	line	198
	
l2628:	
	opt asmopt_off
movlw	7
movwf	((??_LCD_enciende+0)+0+1),f
	movlw	125
movwf	((??_LCD_enciende+0)+0),f
u3107:
	decfsz	((??_LCD_enciende+0)+0),f
	goto	u3107
	decfsz	((??_LCD_enciende+0)+0+1),f
	goto	u3107
opt asmopt_on

	goto	l2630
	line	201
	
l769:	
	
l2630:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_LCD_RS),w
	movwf	(??_LCD_enciende+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enciende+0)+0,w
	andwf	indf,f
	goto	l2632
	
l770:	
	
l2632:	
	movlw	(02h)
	fcall	_LCD_envia_4bits
	
l2634:	
	movlw	(08h)
	fcall	_LCD_envia_4bits
	goto	l2636
	
l771:	
	goto	l2636
	
l772:	
	goto	l2636
	line	203
	
l773:	
	
l2636:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_LCD_RS),w
	movwf	(??_LCD_enciende+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enciende+0)+0,w
	andwf	indf,f
	goto	l2638
	
l774:	
	
l2638:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2640:	
	movlw	(01h)
	fcall	_LCD_envia_4bits
	goto	l2668
	
l775:	
	goto	l2668
	
l776:	
	line	207
	goto	l2668
	line	209
	
l778:	
	goto	l2642
	
l779:	
	
l2642:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_LCD_RS),w
	movwf	(??_LCD_enciende+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enciende+0)+0,w
	andwf	indf,f
	goto	l2644
	
l780:	
	
l2644:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2646:	
	movlw	(0Ch)
	fcall	_LCD_envia_4bits
	goto	l2670
	
l781:	
	goto	l2670
	
l782:	
	goto	l2670
	line	210
	
l784:	
	goto	l2648
	
l785:	
	
l2648:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_LCD_RS),w
	movwf	(??_LCD_enciende+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enciende+0)+0,w
	andwf	indf,f
	goto	l2650
	
l786:	
	
l2650:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2652:	
	movlw	(0Eh)
	fcall	_LCD_envia_4bits
	goto	l2670
	
l787:	
	goto	l2670
	
l788:	
	goto	l2670
	line	211
	
l789:	
	goto	l2654
	
l790:	
	
l2654:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_LCD_RS),w
	movwf	(??_LCD_enciende+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enciende+0)+0,w
	andwf	indf,f
	goto	l2656
	
l791:	
	
l2656:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2658:	
	movlw	(0Dh)
	fcall	_LCD_envia_4bits
	goto	l2670
	
l792:	
	goto	l2670
	
l793:	
	goto	l2670
	line	212
	
l794:	
	goto	l2660
	line	213
	
l795:	
	goto	l2660
	
l796:	
	
l2660:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_LCD_RS),w
	movwf	(??_LCD_enciende+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enciende+0)+0,w
	andwf	indf,f
	goto	l2662
	
l797:	
	
l2662:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2664:	
	movlw	(0Fh)
	fcall	_LCD_envia_4bits
	goto	l2670
	
l798:	
	goto	l2670
	
l799:	
	goto	l2670
	line	214
	
l2666:	
	goto	l2670
	line	207
	
l777:	
	
l2668:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_enciende@config),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           15     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2642
	xorlw	1^0	; case 1
	skipnz
	goto	l2648
	xorlw	2^1	; case 2
	skipnz
	goto	l2654
	xorlw	3^2	; case 3
	skipnz
	goto	l2660
	goto	l2660
	opt asmopt_on

	line	214
	
l783:	
	goto	l2670
	line	218
	
l800:	
	
l2670:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_LCD_RS),w
	movwf	(??_LCD_enciende+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enciende+0)+0,w
	andwf	indf,f
	goto	l2672
	
l801:	
	
l2672:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2674:	
	movlw	(06h)
	fcall	_LCD_envia_4bits
	goto	l2676
	
l802:	
	goto	l2676
	
l803:	
	line	220
	
l2676:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_LCD_var_cursor)
	line	221
	
l804:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_enciende
	__end_of_LCD_enciende:
	signat	_LCD_enciende,4216
	global	_init_Timer2

;; *************** function _init_Timer2 *****************
;; Defined at:
;;		line 89 in file "inicializacion.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"inicializacion.c"
	line	89
global __ptext13
__ptext13:	;psect for function _init_Timer2
psect	text13
	file	"inicializacion.c"
	line	89
	global	__size_of_init_Timer2
	__size_of_init_Timer2	equ	__end_of_init_Timer2-_init_Timer2
	
_init_Timer2:	
;incstack = 0
	opt	stack 5
; Regs used in _init_Timer2: [wreg+status,2]
	line	94
	
l3052:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(23)	;volatile
	line	102
	
l3054:	
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	103
	
l3056:	
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	107
	
l3058:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1121/8)^080h,(1121)&7	;volatile
	line	109
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	110
	
l3060:	
	movlw	(040h)
	movwf	(23)	;volatile
	line	111
	
l553:	
	return
	opt stack 0
GLOBAL	__end_of_init_Timer2
	__end_of_init_Timer2:
	signat	_init_Timer2,88
	global	_init_Timer1

;; *************** function _init_Timer1 *****************
;; Defined at:
;;		line 71 in file "inicializacion.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	71
global __ptext14
__ptext14:	;psect for function _init_Timer1
psect	text14
	file	"inicializacion.c"
	line	71
	global	__size_of_init_Timer1
	__size_of_init_Timer1	equ	__end_of_init_Timer1-_init_Timer1
	
_init_Timer1:	
;incstack = 0
	opt	stack 5
; Regs used in _init_Timer1: [status,2]
	line	76
	
l3042:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(133/8),(133)&7	;volatile
	line	77
	bcf	(132/8),(132)&7	;volatile
	line	78
	bcf	(131/8),(131)&7	;volatile
	line	79
	bcf	(130/8),(130)&7	;volatile
	line	80
	bsf	(129/8),(129)&7	;volatile
	line	81
	bsf	(128/8),(128)&7	;volatile
	line	83
	
l3044:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	84
	
l3046:	
	bcf	(96/8),(96)&7	;volatile
	line	85
	
l3048:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	87
	
l3050:	
	bcf	(94/8),(94)&7	;volatile
	line	88
	
l550:	
	return
	opt stack 0
GLOBAL	__end_of_init_Timer1
	__end_of_init_Timer1:
	signat	_init_Timer1,88
	global	_init_Timer0

;; *************** function _init_Timer0 *****************
;; Defined at:
;;		line 44 in file "inicializacion.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	44
global __ptext15
__ptext15:	;psect for function _init_Timer0
psect	text15
	file	"inicializacion.c"
	line	44
	global	__size_of_init_Timer0
	__size_of_init_Timer0	equ	__end_of_init_Timer0-_init_Timer0
	
_init_Timer0:	
;incstack = 0
	opt	stack 5
; Regs used in _init_Timer0: [wreg]
	line	56
	
l3038:	
	movlw	(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	68
	
l3040:	
	bsf	(93/8),(93)&7	;volatile
	line	69
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	70
	
l547:	
	return
	opt stack 0
GLOBAL	__end_of_init_Timer0
	__end_of_init_Timer0:
	signat	_init_Timer0,88
	global	_init_ADC

;; *************** function _init_ADC *****************
;; Defined at:
;;		line 112 in file "inicializacion.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	112
global __ptext16
__ptext16:	;psect for function _init_ADC
psect	text16
	file	"inicializacion.c"
	line	112
	global	__size_of_init_ADC
	__size_of_init_ADC	equ	__end_of_init_ADC-_init_ADC
	
_init_ADC:	
;incstack = 0
	opt	stack 5
; Regs used in _init_ADC: [wreg]
	line	119
	
l3062:	
	movlw	(07Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	128
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	138
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_init_ADC+0)+0,f
u3117:
decfsz	(??_init_ADC+0)+0,f
	goto	u3117
	nop2	;nop
opt asmopt_on

	line	139
	
l556:	
	return
	opt stack 0
GLOBAL	__end_of_init_ADC
	__end_of_init_ADC:
	signat	_init_ADC,88
	global	_estado50
	global	_estado100
	global	_estado10
	global	_esperaPrimeraTecla
	global	_esperaPrimerValor
	global	_espera01Almohadilla
	global	_esperaSegundoValor
	global	_esperaTercerValor
	global	_esperaAlmohadillaValor
	global	_esperaPulsarTecla
	global	_esperaSoltarTecla

;; *************** function _esperaSoltarTecla *****************
;; Defined at:
;;		line 45 in file "procesoTeclado.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TECLADO_pulsado
;; This function is called by:
;;		_esperaPulsarTecla
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"procesoTeclado.c"
	line	45
global __ptext17
__ptext17:	;psect for function _esperaSoltarTecla
psect	text17
	file	"procesoTeclado.c"
	line	45
	global	__size_of_esperaSoltarTecla
	__size_of_esperaSoltarTecla	equ	__end_of_esperaSoltarTecla-_esperaSoltarTecla
	
_esperaSoltarTecla:	
;incstack = 0
	opt	stack 4
; Regs used in _esperaSoltarTecla: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	47
	
l3456:	
	fcall	_TECLADO_pulsado
	iorlw	0
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l408
u2820:
	line	49
	
l3458:	
	movlw	((fp__esperaPulsarTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSoltarTecla+0)+0
	movf	(??_esperaSoltarTecla+0)+0,w
	movwf	(_estado)
	goto	l408
	line	50
	
l407:	
	line	51
	
l408:	
	return
	opt stack 0
GLOBAL	__end_of_esperaSoltarTecla
	__end_of_esperaSoltarTecla:
	signat	_esperaSoltarTecla,88

;; *************** function _esperaPulsarTecla *****************
;; Defined at:
;;		line 32 in file "procesoTeclado.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TECLADO_leer
;; This function is called by:
;;		_init_procesoTeclado
;;		_esperaSoltarTecla
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	32
global __ptext18
__ptext18:	;psect for function _esperaPulsarTecla
psect	text18
	file	"procesoTeclado.c"
	line	32
	global	__size_of_esperaPulsarTecla
	__size_of_esperaPulsarTecla	equ	__end_of_esperaPulsarTecla-_esperaPulsarTecla
	
_esperaPulsarTecla:	
;incstack = 0
	opt	stack 4
; Regs used in _esperaPulsarTecla: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	34
	
l3450:	
	fcall	_TECLADO_leer
	xorlw	0
	skipnz
	goto	u2811
	goto	u2810
u2811:
	goto	l404
u2810:
	line	36
	
l3452:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TECLADO_dato),w
	movwf	(??_esperaPulsarTecla+0)+0
	movf	(??_esperaPulsarTecla+0)+0,w
	movwf	(_tecla)
	line	37
	
l3454:	
	clrf	(_nuevaTecla)
	incf	(_nuevaTecla),f
	line	38
	movlw	((fp__esperaSoltarTecla-fpbase))&0ffh
	movwf	(??_esperaPulsarTecla+0)+0
	movf	(??_esperaPulsarTecla+0)+0,w
	movwf	(_estado)
	goto	l404
	line	39
	
l403:	
	line	40
	
l404:	
	return
	opt stack 0
GLOBAL	__end_of_esperaPulsarTecla
	__end_of_esperaPulsarTecla:
	signat	_esperaPulsarTecla,88

;; *************** function _esperaAlmohadillaValor *****************
;; Defined at:
;;		line 195 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_mensaje_opciones_inicial
;; This function is called by:
;;		_esperaTercerValor
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"procesoSecuencia.c"
	line	195
global __ptext19
__ptext19:	;psect for function _esperaAlmohadillaValor
psect	text19
	file	"procesoSecuencia.c"
	line	195
	global	__size_of_esperaAlmohadillaValor
	__size_of_esperaAlmohadillaValor	equ	__end_of_esperaAlmohadillaValor-_esperaAlmohadillaValor
	
_esperaAlmohadillaValor:	
;incstack = 0
	opt	stack 2
; Regs used in _esperaAlmohadillaValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	197
	
l3438:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l381
u2790:
	line	199
	
l3440:	
	clrf	(_nuevaTecla)
	line	200
	
l3442:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l381
u2800:
	line	202
	
l3444:	
	movf	(_valor+1),w
	clrf	(_num_pulsos_ref+1)
	addwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	clrf	(_num_pulsos_ref)
	addwf	(_num_pulsos_ref)

	line	203
	
l3446:	
	fcall	_LCD_mensaje_opciones_inicial
	line	204
	
l3448:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaAlmohadillaValor+0)+0
	movf	(??_esperaAlmohadillaValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l381
	line	205
	
l380:	
	goto	l381
	line	206
	
l379:	
	line	207
	
l381:	
	return
	opt stack 0
GLOBAL	__end_of_esperaAlmohadillaValor
	__end_of_esperaAlmohadillaValor:
	signat	_esperaAlmohadillaValor,88

;; *************** function _esperaTercerValor *****************
;; Defined at:
;;		line 171 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_envia_4bits
;;		_LCD_mensaje_opciones_inicial
;;		___wmul
;; This function is called by:
;;		_esperaSegundoValor
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	171
global __ptext20
__ptext20:	;psect for function _esperaTercerValor
psect	text20
	file	"procesoSecuencia.c"
	line	171
	global	__size_of_esperaTercerValor
	__size_of_esperaTercerValor	equ	__end_of_esperaTercerValor-_esperaTercerValor
	
_esperaTercerValor:	
;incstack = 0
	opt	stack 2
; Regs used in _esperaTercerValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	173
	
l3372:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l376
u2700:
	line	175
	
l3374:	
	clrf	(_nuevaTecla)
	line	176
	
l3376:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l3384
u2710:
	line	178
	
l3378:	
	movf	(_valor+1),w
	clrf	(_num_pulsos_ref+1)
	addwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	clrf	(_num_pulsos_ref)
	addwf	(_num_pulsos_ref)

	line	179
	
l3380:	
	fcall	_LCD_mensaje_opciones_inicial
	line	180
	
l3382:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(0+_estado+01h)
	line	181
	goto	l376
	line	182
	
l336:	
	
l3384:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l376
u2720:
	line	184
	
l3386:	
	movf	(_valor+1),w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(_valor),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addwf	(0+(?___wmul)),w
	movwf	(_valor)
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	movwf	((_valor))+1
	goto	l3388
	line	185
	
l339:	
	
l3388:	
	movlw	low(040h)
	movwf	(_esperaTercerValor$196)
	movlw	high(040h)
	movwf	((_esperaTercerValor$196))+1
	goto	l3392
	
l341:	
	
l3390:	
	clrf	(_esperaTercerValor$196)
	clrf	(_esperaTercerValor$196+1)
	goto	l3392
	
l343:	
	
l3392:	
	movf	(_esperaTercerValor$196),w
	iorlw	0Dh
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3394
	
l344:	
	
l3394:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l3396
	
l345:	
	
l3396:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaTercerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2735:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2735
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3398:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3400
	
l346:	
	goto	l3400
	
l347:	
	goto	l3400
	
l348:	
	goto	l3400
	line	186
	
l349:	
	
l3400:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	iorwf	indf,f
	goto	l3402
	
l350:	
	
l3402:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaTercerValor+0)+0)+1
	movlw	04h
	movwf	btemp+1
u2745:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2745
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3404:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3406
	
l351:	
	
l3406:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l3436
u2750:
	
l3408:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l3422
u2760:
	goto	l3412
	
l354:	
	goto	l3412
	
l3410:	
	movlw	low(040h)
	movwf	(_esperaTercerValor$197)
	movlw	high(040h)
	movwf	((_esperaTercerValor$197))+1
	goto	l3414
	
l356:	
	
l3412:	
	clrf	(_esperaTercerValor$197)
	clrf	(_esperaTercerValor$197+1)
	goto	l3414
	
l358:	
	
l3414:	
	movf	(_esperaTercerValor$197),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3416
	
l359:	
	
l3416:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l3418
	
l360:	
	
l3418:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaTercerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2775:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2775
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3420:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3434
	
l361:	
	goto	l3434
	
l362:	
	goto	l3434
	
l363:	
	goto	l3434
	
l353:	
	goto	l3422
	
l365:	
	
l3422:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaTercerValor$198)
	movlw	high(040h)
	movwf	((_esperaTercerValor$198))+1
	goto	l3426
	
l367:	
	
l3424:	
	clrf	(_esperaTercerValor$198)
	clrf	(_esperaTercerValor$198+1)
	goto	l3426
	
l369:	
	
l3426:	
	movf	(_esperaTercerValor$198),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3428
	
l370:	
	
l3428:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l3430
	
l371:	
	
l3430:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaTercerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2785:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2785
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3432:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3434
	
l372:	
	goto	l3434
	
l373:	
	goto	l3434
	
l374:	
	goto	l3434
	
l364:	
	
l3434:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l3436
	
l352:	
	goto	l3436
	
l375:	
	line	187
	
l3436:	
	movlw	((fp__esperaAlmohadillaValor-fpbase))&0ffh
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l376
	line	188
	
l338:	
	goto	l376
	line	189
	
l337:	
	goto	l376
	
l335:	
	line	190
	
l376:	
	return
	opt stack 0
GLOBAL	__end_of_esperaTercerValor
	__end_of_esperaTercerValor:
	signat	_esperaTercerValor,88

;; *************** function _esperaSegundoValor *****************
;; Defined at:
;;		line 147 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_envia_4bits
;;		_LCD_mensaje_opciones_inicial
;;		___wmul
;; This function is called by:
;;		_esperaPrimerValor
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	147
global __ptext21
__ptext21:	;psect for function _esperaSegundoValor
psect	text21
	file	"procesoSecuencia.c"
	line	147
	global	__size_of_esperaSegundoValor
	__size_of_esperaSegundoValor	equ	__end_of_esperaSegundoValor-_esperaSegundoValor
	
_esperaSegundoValor:	
;incstack = 0
	opt	stack 2
; Regs used in _esperaSegundoValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	149
	
l3306:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l332
u2610:
	line	151
	
l3308:	
	clrf	(_nuevaTecla)
	line	152
	
l3310:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2621
	goto	u2620
u2621:
	goto	l3318
u2620:
	line	154
	
l3312:	
	movf	(_valor+1),w
	clrf	(_num_pulsos_ref+1)
	addwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	clrf	(_num_pulsos_ref)
	addwf	(_num_pulsos_ref)

	line	155
	
l3314:	
	fcall	_LCD_mensaje_opciones_inicial
	line	156
	
l3316:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(0+_estado+01h)
	line	157
	goto	l332
	line	158
	
l292:	
	
l3318:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l332
u2630:
	line	160
	
l3320:	
	movf	(_valor+1),w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(_valor),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addwf	(0+(?___wmul)),w
	movwf	(_valor)
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	movwf	((_valor))+1
	goto	l3322
	line	161
	
l295:	
	
l3322:	
	movlw	low(040h)
	movwf	(_esperaSegundoValor$192)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$192))+1
	goto	l3326
	
l297:	
	
l3324:	
	clrf	(_esperaSegundoValor$192)
	clrf	(_esperaSegundoValor$192+1)
	goto	l3326
	
l299:	
	
l3326:	
	movf	(_esperaSegundoValor$192),w
	iorlw	0Ch
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3328
	
l300:	
	
l3328:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l3330
	
l301:	
	
l3330:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaSegundoValor+0)+0
	movlw	04h
	movwf	btemp+1
u2645:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2645
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3332:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3334
	
l302:	
	goto	l3334
	
l303:	
	goto	l3334
	
l304:	
	goto	l3334
	line	162
	
l305:	
	
l3334:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	iorwf	indf,f
	goto	l3336
	
l306:	
	
l3336:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaSegundoValor+0)+0)+1
	movlw	04h
	movwf	btemp+1
u2655:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2655
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3338:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3340
	
l307:	
	
l3340:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l3370
u2660:
	
l3342:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l3356
u2670:
	goto	l3346
	
l310:	
	goto	l3346
	
l3344:	
	movlw	low(040h)
	movwf	(_esperaSegundoValor$193)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$193))+1
	goto	l3348
	
l312:	
	
l3346:	
	clrf	(_esperaSegundoValor$193)
	clrf	(_esperaSegundoValor$193+1)
	goto	l3348
	
l314:	
	
l3348:	
	movf	(_esperaSegundoValor$193),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3350
	
l315:	
	
l3350:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l3352
	
l316:	
	
l3352:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaSegundoValor+0)+0
	movlw	04h
	movwf	btemp+1
u2685:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2685
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3354:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3368
	
l317:	
	goto	l3368
	
l318:	
	goto	l3368
	
l319:	
	goto	l3368
	
l309:	
	goto	l3356
	
l321:	
	
l3356:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaSegundoValor$194)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$194))+1
	goto	l3360
	
l323:	
	
l3358:	
	clrf	(_esperaSegundoValor$194)
	clrf	(_esperaSegundoValor$194+1)
	goto	l3360
	
l325:	
	
l3360:	
	movf	(_esperaSegundoValor$194),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3362
	
l326:	
	
l3362:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l3364
	
l327:	
	
l3364:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaSegundoValor+0)+0
	movlw	04h
	movwf	btemp+1
u2695:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2695
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3366:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3368
	
l328:	
	goto	l3368
	
l329:	
	goto	l3368
	
l330:	
	goto	l3368
	
l320:	
	
l3368:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l3370
	
l308:	
	goto	l3370
	
l331:	
	line	163
	
l3370:	
	movlw	((fp__esperaTercerValor-fpbase))&0ffh
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l332
	line	164
	
l294:	
	goto	l332
	line	165
	
l293:	
	goto	l332
	
l291:	
	line	166
	
l332:	
	return
	opt stack 0
GLOBAL	__end_of_esperaSegundoValor
	__end_of_esperaSegundoValor:
	signat	_esperaSegundoValor,88

;; *************** function _espera01Almohadilla *****************
;; Defined at:
;;		line 86 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_mensaje_opciones2
;;		_LCD_mensaje_opciones_inicial
;; This function is called by:
;;		_esperaPrimeraTecla
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	86
global __ptext22
__ptext22:	;psect for function _espera01Almohadilla
psect	text22
	file	"procesoSecuencia.c"
	line	86
	global	__size_of_espera01Almohadilla
	__size_of_espera01Almohadilla	equ	__end_of_espera01Almohadilla-_espera01Almohadilla
	
_espera01Almohadilla:	
;incstack = 0
	opt	stack 2
; Regs used in _espera01Almohadilla: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	88
	
l3216:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l246
u2470:
	line	90
	
l3218:	
	clrf	(_nuevaTecla)
	line	91
	
l3220:	
	movf	(_tecla),f
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l3226
u2480:
	line	93
	
l3222:	
	movf	(_start+1),w
	iorwf	(_start),w
	movlw	0
	skipnz
	movlw	1
	movwf	(??_espera01Almohadilla+0)+0
	clrf	(??_espera01Almohadilla+0)+0+1
	movf	0+(??_espera01Almohadilla+0)+0,w
	movwf	(_start)
	movf	1+(??_espera01Almohadilla+0)+0,w
	movwf	(_start+1)
	line	94
	
l3224:	
	fcall	_LCD_mensaje_opciones2
	line	95
	goto	l246
	line	96
	
l237:	
	
l3226:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	xorlw	01h
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l3232
u2490:
	line	98
	
l3228:	
	movf	(_sentido+1),w
	iorwf	(_sentido),w
	movlw	0
	skipnz
	movlw	1
	movwf	(??_espera01Almohadilla+0)+0
	clrf	(??_espera01Almohadilla+0)+0+1
	movf	0+(??_espera01Almohadilla+0)+0,w
	movwf	(_sentido)
	movf	1+(??_espera01Almohadilla+0)+0,w
	movwf	(_sentido+1)
	line	99
	
l3230:	
	fcall	_LCD_mensaje_opciones2
	line	100
	goto	l246
	line	101
	
l239:	
	
l3232:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l246
u2500:
	line	103
	
l3234:	
	movf	(_start+1),w
	iorwf	(_start),w
	skipnz
	goto	u2511
	goto	u2510
u2511:
	goto	l3238
u2510:
	line	104
	
l3236:	
	movlw	(040h)
	movwf	(23)	;volatile
	goto	l3242
	line	105
	
l242:	
	line	107
	
l3238:	
	clrf	(23)	;volatile
	line	108
	
l3240:	
	bcf	(51/8),(51)&7	;volatile
	goto	l3242
	line	109
	
l243:	
	line	110
	
l3242:	
	movf	(_sentido+1),w
	iorwf	(_sentido),w
	skipnz
	goto	u2521
	goto	u2520
u2521:
	goto	l244
u2520:
	line	112
	
l3244:	
	bsf	(52/8),(52)&7	;volatile
	line	113
	bcf	(53/8),(53)&7	;volatile
	line	114
	goto	l3246
	line	115
	
l244:	
	line	117
	bcf	(52/8),(52)&7	;volatile
	line	118
	bsf	(53/8),(53)&7	;volatile
	goto	l3246
	line	119
	
l245:	
	line	120
	
l3246:	
	fcall	_LCD_mensaje_opciones_inicial
	line	121
	
l3248:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_espera01Almohadilla+0)+0
	movf	(??_espera01Almohadilla+0)+0,w
	movwf	(0+_estado+01h)
	goto	l246
	line	122
	
l241:	
	goto	l246
	line	123
	
l240:	
	goto	l246
	
l238:	
	goto	l246
	
l236:	
	line	124
	
l246:	
	return
	opt stack 0
GLOBAL	__end_of_espera01Almohadilla
	__end_of_espera01Almohadilla:
	signat	_espera01Almohadilla,88

;; *************** function _esperaPrimerValor *****************
;; Defined at:
;;		line 129 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_envia_4bits
;; This function is called by:
;;		_esperaPrimeraTecla
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	129
global __ptext23
__ptext23:	;psect for function _esperaPrimerValor
psect	text23
	file	"procesoSecuencia.c"
	line	129
	global	__size_of_esperaPrimerValor
	__size_of_esperaPrimerValor	equ	__end_of_esperaPrimerValor-_esperaPrimerValor
	
_esperaPrimerValor:	
;incstack = 0
	opt	stack 4
; Regs used in _esperaPrimerValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	131
	
l3250:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l288
u2530:
	line	133
	
l3252:	
	clrf	(_nuevaTecla)
	line	134
	
l3254:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l288
u2540:
	line	136
	
l3256:	
	movf	(_tecla),w
	movwf	(??_esperaPrimerValor+0)+0
	clrf	(??_esperaPrimerValor+0)+0+1
	movf	0+(??_esperaPrimerValor+0)+0,w
	movwf	(_valor)
	movf	1+(??_esperaPrimerValor+0)+0,w
	movwf	(_valor+1)
	line	137
	
l251:	
	movlw	low(040h)
	movwf	(_esperaPrimerValor$188)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$188))+1
	goto	l3260
	
l253:	
	
l3258:	
	clrf	(_esperaPrimerValor$188)
	clrf	(_esperaPrimerValor$188+1)
	goto	l3260
	
l255:	
	
l3260:	
	movf	(_esperaPrimerValor$188),w
	iorlw	0Bh
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3262
	
l256:	
	
l3262:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l3264
	
l257:	
	
l3264:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2555:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2555
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3266:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3268
	
l258:	
	goto	l3268
	
l259:	
	goto	l3268
	
l260:	
	goto	l3268
	line	138
	
l261:	
	
l3268:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	iorwf	indf,f
	goto	l3270
	
l262:	
	
l3270:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaPrimerValor+0)+0)+1
	movlw	04h
	movwf	btemp+1
u2565:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2565
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3272:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3274
	
l263:	
	
l3274:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l3304
u2570:
	
l3276:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l3290
u2580:
	goto	l3280
	
l266:	
	goto	l3280
	
l3278:	
	movlw	low(040h)
	movwf	(_esperaPrimerValor$189)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$189))+1
	goto	l3282
	
l268:	
	
l3280:	
	clrf	(_esperaPrimerValor$189)
	clrf	(_esperaPrimerValor$189+1)
	goto	l3282
	
l270:	
	
l3282:	
	movf	(_esperaPrimerValor$189),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3284
	
l271:	
	
l3284:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l3286
	
l272:	
	
l3286:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2595:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2595
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3288:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3302
	
l273:	
	goto	l3302
	
l274:	
	goto	l3302
	
l275:	
	goto	l3302
	
l265:	
	goto	l3290
	
l277:	
	
l3290:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaPrimerValor$190)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$190))+1
	goto	l3294
	
l279:	
	
l3292:	
	clrf	(_esperaPrimerValor$190)
	clrf	(_esperaPrimerValor$190+1)
	goto	l3294
	
l281:	
	
l3294:	
	movf	(_esperaPrimerValor$190),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3296
	
l282:	
	
l3296:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l3298
	
l283:	
	
l3298:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2605:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2605
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3300:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3302
	
l284:	
	goto	l3302
	
l285:	
	goto	l3302
	
l286:	
	goto	l3302
	
l276:	
	
l3302:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l3304
	
l264:	
	goto	l3304
	
l287:	
	line	139
	
l3304:	
	movlw	((fp__esperaSegundoValor-fpbase))&0ffh
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l288
	line	140
	
l250:	
	goto	l288
	line	141
	
l249:	
	line	142
	
l288:	
	return
	opt stack 0
GLOBAL	__end_of_esperaPrimerValor
	__end_of_esperaPrimerValor:
	signat	_esperaPrimerValor,88

;; *************** function _esperaPrimeraTecla *****************
;; Defined at:
;;		line 65 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_enviaCadena
;;		_LCD_envia_4bits
;;		_LCD_mensaje_opciones2
;; This function is called by:
;;		_init_procesoSecuencia
;;		_espera01Almohadilla
;;		_esperaSegundoValor
;;		_esperaTercerValor
;;		_esperaAlmohadillaValor
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	65
global __ptext24
__ptext24:	;psect for function _esperaPrimeraTecla
psect	text24
	file	"procesoSecuencia.c"
	line	65
	global	__size_of_esperaPrimeraTecla
	__size_of_esperaPrimeraTecla	equ	__end_of_esperaPrimeraTecla-_esperaPrimeraTecla
	
_esperaPrimeraTecla:	
;incstack = 0
	opt	stack 2
; Regs used in _esperaPrimeraTecla: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	67
	
l3188:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l233
u2430:
	line	69
	
l3190:	
	clrf	(_nuevaTecla)
	line	70
	
l3192:	
	movf	(_tecla),w
	xorlw	0Ah
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l3210
u2440:
	goto	l3194
	line	72
	
l221:	
	
l3194:	
	movlw	low(040h)
	movwf	(_esperaPrimeraTecla$184)
	movlw	high(040h)
	movwf	((_esperaPrimeraTecla$184))+1
	goto	l3198
	
l223:	
	
l3196:	
	clrf	(_esperaPrimeraTecla$184)
	clrf	(_esperaPrimeraTecla$184+1)
	goto	l3198
	
l225:	
	
l3198:	
	movf	(_esperaPrimeraTecla$184),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3200
	
l226:	
	
l3200:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimeraTecla+0)+0,w
	andwf	indf,f
	goto	l3202
	
l227:	
	
l3202:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimeraTecla+0)+0
	movlw	04h
	movwf	btemp+1
u2455:
	rlf	(??_esperaPrimeraTecla+0)+1,w
	rrf	(??_esperaPrimeraTecla+0)+1,f
	rrf	(??_esperaPrimeraTecla+0)+0,f
	decfsz	btemp+1,f
	goto	u2455
	movf	0+(??_esperaPrimeraTecla+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3204:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3206
	
l228:	
	goto	l3206
	
l229:	
	goto	l3206
	
l230:	
	line	73
	
l3206:	
	movlw	low((STR_7-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	74
	
l3208:	
	movlw	((fp__esperaPrimerValor-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(0+_estado+01h)
	line	75
	goto	l233
	line	76
	
l220:	
	
l3210:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l233
u2460:
	line	78
	
l3212:	
	fcall	_LCD_mensaje_opciones2
	line	79
	
l3214:	
	movlw	((fp__espera01Almohadilla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(0+_estado+01h)
	goto	l233
	line	80
	
l232:	
	goto	l233
	line	81
	
l231:	
	goto	l233
	
l219:	
	line	82
	
l233:	
	return
	opt stack 0
GLOBAL	__end_of_esperaPrimeraTecla
	__end_of_esperaPrimeraTecla:
	signat	_esperaPrimeraTecla,88

;; *************** function _estado10 *****************
;; Defined at:
;;		line 71 in file "procesoHisteresis.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_estado100
;;		_estado50
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"procesoHisteresis.c"
	line	71
global __ptext25
__ptext25:	;psect for function _estado10
psect	text25
	file	"procesoHisteresis.c"
	line	71
	global	__size_of_estado10
	__size_of_estado10	equ	__end_of_estado10-_estado10
	
_estado10:	
;incstack = 0
	opt	stack 5
; Regs used in _estado10: [wreg+btemp+1]
	line	74
	
l3168:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0199h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(0199h)
	subwf	(_ADC_resultado),w
u2385:

	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l3172
u2380:
	line	76
	
l3170:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado10+0)+0
	movf	(??_estado10+0)+0,w
	movwf	(0+_estado+02h)
	line	77
	movlw	low(019h)
	movwf	(_max_duty)
	movlw	high(019h)
	movwf	((_max_duty))+1
	line	78
	goto	l115
	
l113:	
	line	80
	
l3172:	
	movlw	((fp__estado50-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado10+0)+0
	movf	(??_estado10+0)+0,w
	movwf	(0+_estado+02h)
	line	81
	movlw	low(07Dh)
	movwf	(_max_duty)
	movlw	high(07Dh)
	movwf	((_max_duty))+1
	goto	l115
	line	82
	
l114:	
	line	83
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_estado10
	__end_of_estado10:
	signat	_estado10,88

;; *************** function _estado100 *****************
;; Defined at:
;;		line 60 in file "procesoHisteresis.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_procesoHisteresis
;;		_estado50
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	60
global __ptext26
__ptext26:	;psect for function _estado100
psect	text26
	file	"procesoHisteresis.c"
	line	60
	global	__size_of_estado100
	__size_of_estado100	equ	__end_of_estado100-_estado100
	
_estado100:	
;incstack = 0
	opt	stack 5
; Regs used in _estado100: [wreg+btemp+1]
	line	62
	
l3162:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(065h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(065h)
	subwf	(_ADC_resultado),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l3166
u2370:
	line	63
	
l3164:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado100+0)+0
	movf	(??_estado100+0)+0,w
	movwf	(0+_estado+02h)
	line	64
	movlw	low(019h)
	movwf	(_max_duty)
	movlw	high(019h)
	movwf	((_max_duty))+1
	line	65
	goto	l110
	
l108:	
	line	66
	
l3166:	
	movlw	((fp__estado100-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado100+0)+0
	movf	(??_estado100+0)+0,w
	movwf	(0+_estado+02h)
	line	67
	movlw	low(0F9h)
	movwf	(_max_duty)
	movlw	high(0F9h)
	movwf	((_max_duty))+1
	goto	l110
	line	68
	
l109:	
	line	69
	
l110:	
	return
	opt stack 0
GLOBAL	__end_of_estado100
	__end_of_estado100:
	signat	_estado100,88

;; *************** function _estado50 *****************
;; Defined at:
;;		line 86 in file "procesoHisteresis.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_estado10
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	86
global __ptext27
__ptext27:	;psect for function _estado50
psect	text27
	file	"procesoHisteresis.c"
	line	86
	global	__size_of_estado50
	__size_of_estado50	equ	__end_of_estado50-_estado50
	
_estado50:	
;incstack = 0
	opt	stack 5
; Regs used in _estado50: [wreg+btemp+1]
	line	92
	
l3174:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(01Eh)
	subwf	(_ADC_resultado),w
u2395:

	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l3178
u2390:
	
l3176:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(047h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(047h)
	subwf	(_ADC_resultado),w
u2405:

	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l3180
u2400:
	goto	l3178
	
l120:	
	line	94
	
l3178:	
	movlw	((fp__estado50-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado50+0)+0
	movf	(??_estado50+0)+0,w
	movwf	(0+_estado+02h)
	line	95
	movlw	low(07Dh)
	movwf	(_max_duty)
	movlw	high(07Dh)
	movwf	((_max_duty))+1
	goto	l3180
	line	96
	
l118:	
	line	97
	
l3180:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(047h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2415
	movlw	low(047h)
	subwf	(_ADC_resultado),w
u2415:

	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l3184
u2410:
	line	99
	
l3182:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado50+0)+0
	movf	(??_estado50+0)+0,w
	movwf	(0+_estado+02h)
	line	100
	movlw	low(019h)
	movwf	(_max_duty)
	movlw	high(019h)
	movwf	((_max_duty))+1
	goto	l3184
	line	101
	
l121:	
	line	102
	
l3184:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2425
	movlw	low(01Eh)
	subwf	(_ADC_resultado),w
u2425:

	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l123
u2420:
	line	104
	
l3186:	
	movlw	((fp__estado100-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado50+0)+0
	movf	(??_estado50+0)+0,w
	movwf	(0+_estado+02h)
	line	105
	movlw	low(0F9h)
	movwf	(_max_duty)
	movlw	high(0F9h)
	movwf	((_max_duty))+1
	goto	l123
	line	106
	
l122:	
	line	108
	
l123:	
	return
	opt stack 0
GLOBAL	__end_of_estado50
	__end_of_estado50:
	signat	_estado50,88
	global	_TECLADO_pulsado

;; *************** function _TECLADO_pulsado *****************
;; Defined at:
;;		line 210 in file "TECLADO.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E979
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_esperaSoltarTecla
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"TECLADO.c"
	line	210
global __ptext28
__ptext28:	;psect for function _TECLADO_pulsado
psect	text28
	file	"TECLADO.c"
	line	210
	global	__size_of_TECLADO_pulsado
	__size_of_TECLADO_pulsado	equ	__end_of_TECLADO_pulsado-_TECLADO_pulsado
	
_TECLADO_pulsado:	
;incstack = 0
	opt	stack 4
; Regs used in _TECLADO_pulsado: [wreg-fsr0h+status,2+status,0]
	line	215
	
l2816:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_TECLADO_FIL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	movf	(_TECLADO_PORT_FIL_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_TECLADO_PORT_FIL_PUNTERO+1),0
	bcf	status,7
	movf	(??_TECLADO_pulsado+0)+0,w
	andwf	indf,f
	line	218
	
l2818:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1771
	goto	u1770
u1771:
	goto	l2822
u1770:
	
l2820:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	0+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2824
	
l615:	
	
l2822:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	0+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2824
	
l616:	
	line	219
	
l2824:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_pulsado+0)+0,w
	skipz
	goto	u1785
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_pulsado+0)+0,w
u1785:

	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l617
u1780:
	line	221
	
l2826:	
	bcf	(_TECLADO_banderas),6
	line	222
	
l2828:	
	movlw	(0)
	goto	l618
	
l2830:	
	goto	l618
	line	223
	
l617:	
	line	225
	bsf	(_TECLADO_banderas),6
	line	226
	
l2832:	
	movlw	(01h)
	goto	l618
	
l2834:	
	line	227
	
l618:	
	return
	opt stack 0
GLOBAL	__end_of_TECLADO_pulsado
	__end_of_TECLADO_pulsado:
	signat	_TECLADO_pulsado,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "d:\sed_tools\xc8\sources\common\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_esperaSegundoValor
;;		_esperaTercerValor
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"d:\sed_tools\xc8\sources\common\wmul.c"
	line	3
global __ptext29
__ptext29:	;psect for function ___wmul
psect	text29
	file	"d:\sed_tools\xc8\sources\common\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	31
	
l3016:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3018
	line	32
	
l1345:	
	line	33
	
l3018:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1346
u2170:
	line	34
	
l3020:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1346:	
	line	35
	movlw	01h
	
u2185:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2185
	line	36
	
l3022:	
	movlw	01h
	
u2195:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2195
	line	37
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l3018
u2200:
	goto	l3024
	
l1347:	
	line	40
	
l3024:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1348
	
l3026:	
	line	41
	
l1348:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_TECLADO_leer

;; *************** function _TECLADO_leer *****************
;; Defined at:
;;		line 237 in file "TECLADO.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  bit_a_testea    2    3[BANK0 ] unsigned short 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E979
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_esperaPulsarTecla
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"TECLADO.c"
	line	237
global __ptext30
__ptext30:	;psect for function _TECLADO_leer
psect	text30
	file	"TECLADO.c"
	line	237
	global	__size_of_TECLADO_leer
	__size_of_TECLADO_leer	equ	__end_of_TECLADO_leer-_TECLADO_leer
	
_TECLADO_leer:	
;incstack = 0
	opt	stack 4
; Regs used in _TECLADO_leer: [wreg-fsr0h+status,2+status,0+pclath]
	line	242
	
l2716:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TECLADO_dato)
	line	243
	
l2718:	
	bcf	(_TECLADO_banderas),7
	line	244
	
l2720:	
	bcf	(_TECLADO_banderas),6
	line	252
	
l2722:	
	comf	(_TECLADO_FIL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	movf	(_TECLADO_PORT_FIL_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_TECLADO_PORT_FIL_PUNTERO+1),0
	bcf	status,7
	movf	(??_TECLADO_leer+0)+0,w
	andwf	indf,f
	line	253
	
l2724:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1651
	goto	u1650
u1651:
	goto	l2728
u1650:
	
l2726:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2730
	
l621:	
	
l2728:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2730
	
l622:	
	line	254
	
l2730:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_leer+0)+0,w
	skipz
	goto	u1665
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_leer+0)+0,w
u1665:

	skipz
	goto	u1661
	goto	u1660
u1661:
	goto	l623
u1660:
	line	256
	
l2732:	
	bcf	(_TECLADO_banderas),6
	line	257
	
l2734:	
	movlw	(0)
	goto	l624
	
l2736:	
	goto	l624
	line	258
	
l623:	
	line	260
	bsf	(_TECLADO_banderas),6
	line	271
	goto	l2748
	line	273
	
l626:	
	
l2738:	
	movlw	low(0FEh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FEh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2750
	line	274
	
l628:	
	
l2740:	
	movlw	low(0FBh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FBh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2750
	line	275
	
l629:	
	
l2742:	
	movlw	low(0EFh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0EFh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2750
	line	276
	
l630:	
	
l2744:	
	movlw	low(0FFh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FFh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2750
	line	277
	
l2746:	
	goto	l2750
	line	271
	
l625:	
	
l2748:	
	movf	(_TECLADO_FIL_PINES),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 15 to 240
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	15^0	; case 15
	skipnz
	goto	l2738
	xorlw	60^15	; case 60
	skipnz
	goto	l2740
	xorlw	240^60	; case 240
	skipnz
	goto	l2742
	goto	l2744
	opt asmopt_on

	line	277
	
l627:	
	line	282
	
l2750:	
	clrf	(TECLADO_leer@i)
	
l2752:	
	movlw	(04h)
	subwf	(TECLADO_leer@i),w
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l2756
u1670:
	goto	l2806
	
l2754:	
	goto	l2806
	line	283
	
l631:	
	line	285
	
l2756:	
	movf	(_TECLADO_PORT_FIL_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_TECLADO_PORT_FIL_PUNTERO+1),0
	bcf	status,7
	movf	indf,w
	iorwf	(_TECLADO_FIL_PINES),w
	andwf	(TECLADO_leer@bit_a_testear),w
	movwf	(??_TECLADO_leer+0)+0
	movf	(_TECLADO_PORT_FIL_PUNTERO),w
	movwf	fsr0
	bcf	status,7
	btfsc	(_TECLADO_PORT_FIL_PUNTERO+1),0
	bsf	status,7
	
	movf	(??_TECLADO_leer+0)+0,w
	movwf	indf
	line	288
	
l2758:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l2762
u1680:
	
l2760:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2764
	
l633:	
	
l2762:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2764
	
l634:	
	line	289
	
l2764:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_leer+0)+0,w
	skipz
	goto	u1695
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_leer+0)+0,w
u1695:

	skipnz
	goto	u1691
	goto	u1690
u1691:
	goto	l2768
u1690:
	goto	l2806
	line	290
	
l2766:	
	goto	l2806
	
l635:	
	line	295
	
l2768:	
	movf	(TECLADO_leer@bit_a_testear+1),w
	movwf	(??_TECLADO_leer+0)+0+1
	movf	(TECLADO_leer@bit_a_testear),w
	movwf	(??_TECLADO_leer+0)+0
	clrc
	rlf	(??_TECLADO_leer+0)+0,f
	rlf	(??_TECLADO_leer+0)+1,f
	movlw	low(01h)
	iorwf	0+(??_TECLADO_leer+0)+0,w
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(01h)
	iorwf	1+(??_TECLADO_leer+0)+0,w
	movwf	1+(TECLADO_leer@bit_a_testear)
	line	299
	movlw	(03h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	line	282
	movlw	(01h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(TECLADO_leer@i),f
	
l2770:	
	movlw	(04h)
	subwf	(TECLADO_leer@i),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l2756
u1700:
	goto	l2806
	
l632:	
	line	306
	goto	l2806
	line	311
	
l637:	
	line	312
	
l2772:	
	movlw	06h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1711
	goto	u1710
u1711:
	goto	l2776
u1710:
	goto	l2808
	
l2774:	
	goto	l2808
	line	313
	
l638:	
	
l2776:	
	movlw	05h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l2780
u1720:
	
l2778:	
	movlw	(01h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2808
	line	314
	
l640:	
	
l2780:	
	movlw	03h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1731
	goto	u1730
u1731:
	goto	l2784
u1730:
	
l2782:	
	movlw	(02h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2808
	line	315
	
l642:	
	
l2784:	
	movlw	(0)
	goto	l624
	
l2786:	
	goto	l624
	
l643:	
	goto	l2808
	
l641:	
	goto	l2808
	
l639:	
	line	316
	goto	l2808
	line	317
	
l645:	
	line	318
	
l2788:	
	movlw	0C0h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l2792
u1740:
	goto	l2808
	
l2790:	
	goto	l2808
	line	319
	
l646:	
	
l2792:	
	movlw	0A0h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l2796
u1750:
	
l2794:	
	movlw	(01h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2808
	line	320
	
l648:	
	
l2796:	
	movlw	060h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l2800
u1760:
	
l2798:	
	movlw	(02h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2808
	line	321
	
l650:	
	
l2800:	
	movlw	(0)
	goto	l624
	
l2802:	
	goto	l624
	
l651:	
	goto	l2808
	
l649:	
	goto	l2808
	
l647:	
	line	322
	goto	l2808
	line	324
	
l2804:	
	goto	l2808
	line	306
	
l636:	
	
l2806:	
	movf	(_TECLADO_COL_PINES),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 7 to 224
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	7^0	; case 7
	skipnz
	goto	l2772
	xorlw	224^7	; case 224
	skipnz
	goto	l2788
	goto	l2808
	opt asmopt_on

	line	324
	
l644:	
	line	327
	
l2808:	
	movf	(_TECLADO_dato),w
	addlw	low((_tabla_3col-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	movwf	(_TECLADO_dato)
	line	330
	
l2810:	
	bsf	(_TECLADO_banderas),7
	line	331
	
l2812:	
	movlw	(01h)
	goto	l624
	
l2814:	
	line	332
	
l624:	
	return
	opt stack 0
GLOBAL	__end_of_TECLADO_leer
	__end_of_TECLADO_leer:
	signat	_TECLADO_leer,89
	global	_LCD_mensaje_opciones_inicial

;; *************** function _LCD_mensaje_opciones_inicial *****************
;; Defined at:
;;		line 43 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_enviaCadena
;;		_LCD_envia_4bits
;; This function is called by:
;;		_espera01Almohadilla
;;		_esperaSegundoValor
;;		_esperaTercerValor
;;		_esperaAlmohadillaValor
;;		_init_librerias
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"procesoSecuencia.c"
	line	43
global __ptext31
__ptext31:	;psect for function _LCD_mensaje_opciones_inicial
psect	text31
	file	"procesoSecuencia.c"
	line	43
	global	__size_of_LCD_mensaje_opciones_inicial
	__size_of_LCD_mensaje_opciones_inicial	equ	__end_of_LCD_mensaje_opciones_inicial-_LCD_mensaje_opciones_inicial
	
_LCD_mensaje_opciones_inicial:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_mensaje_opciones_inicial: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l189:	
	
l2678:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_mensaje_opciones_inicial$175)
	movlw	high(040h)
	movwf	((_LCD_mensaje_opciones_inicial$175))+1
	goto	l2682
	
l191:	
	
l2680:	
	clrf	(_LCD_mensaje_opciones_inicial$175)
	clrf	(_LCD_mensaje_opciones_inicial$175+1)
	goto	l2682
	
l193:	
	
l2682:	
	movf	(_LCD_mensaje_opciones_inicial$175),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movf	(??_LCD_mensaje_opciones_inicial+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2684
	
l194:	
	
l2684:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_mensaje_opciones_inicial+0)+0,w
	andwf	indf,f
	goto	l2686
	
l195:	
	
l2686:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_mensaje_opciones_inicial+0)+0
	movlw	04h
	movwf	btemp+1
u1615:
	rlf	(??_LCD_mensaje_opciones_inicial+0)+1,w
	rrf	(??_LCD_mensaje_opciones_inicial+0)+1,f
	rrf	(??_LCD_mensaje_opciones_inicial+0)+0,f
	decfsz	btemp+1,f
	goto	u1615
	movf	0+(??_LCD_mensaje_opciones_inicial+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2688:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2690
	
l196:	
	goto	l2690
	
l197:	
	goto	l2690
	
l198:	
	line	46
	
l2690:	
	movlw	low((STR_2-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	47
	
l199:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_mensaje_opciones_inicial
	__end_of_LCD_mensaje_opciones_inicial:
	signat	_LCD_mensaje_opciones_inicial,88
	global	_LCD_mensaje_opciones2

;; *************** function _LCD_mensaje_opciones2 *****************
;; Defined at:
;;		line 49 in file "procesoSecuencia.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_enviaCadena
;;		_LCD_envia_4bits
;; This function is called by:
;;		_esperaPrimeraTecla
;;		_espera01Almohadilla
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	line	49
global __ptext32
__ptext32:	;psect for function _LCD_mensaje_opciones2
psect	text32
	file	"procesoSecuencia.c"
	line	49
	global	__size_of_LCD_mensaje_opciones2
	__size_of_LCD_mensaje_opciones2	equ	__end_of_LCD_mensaje_opciones2-_LCD_mensaje_opciones2
	
_LCD_mensaje_opciones2:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_mensaje_opciones2: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	51
	
l202:	
	
l2692:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_mensaje_opciones2$178)
	movlw	high(040h)
	movwf	((_LCD_mensaje_opciones2$178))+1
	goto	l2696
	
l204:	
	
l2694:	
	clrf	(_LCD_mensaje_opciones2$178)
	clrf	(_LCD_mensaje_opciones2$178+1)
	goto	l2696
	
l206:	
	
l2696:	
	movf	(_LCD_mensaje_opciones2$178),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movf	(??_LCD_mensaje_opciones2+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2698
	
l207:	
	
l2698:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_mensaje_opciones2+0)+0,w
	andwf	indf,f
	goto	l2700
	
l208:	
	
l2700:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_mensaje_opciones2+0)+0
	movlw	04h
	movwf	btemp+1
u1625:
	rlf	(??_LCD_mensaje_opciones2+0)+1,w
	rrf	(??_LCD_mensaje_opciones2+0)+1,f
	rrf	(??_LCD_mensaje_opciones2+0)+0,f
	decfsz	btemp+1,f
	goto	u1625
	movf	0+(??_LCD_mensaje_opciones2+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2702:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2704
	
l209:	
	goto	l2704
	
l210:	
	goto	l2704
	
l211:	
	line	52
	
l2704:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_start),w
	iorwf	(_start+1),w
	skipz
	goto	u1631
	goto	u1630
u1631:
	goto	l2708
u1630:
	line	53
	
l2706:	
	movlw	low((STR_3-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l2710
	line	54
	
l212:	
	line	55
	
l2708:	
	movlw	low((STR_4-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l2710
	
l213:	
	line	56
	
l2710:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_sentido),w
	iorwf	(_sentido+1),w
	skipz
	goto	u1641
	goto	u1640
u1641:
	goto	l2714
u1640:
	line	57
	
l2712:	
	movlw	low((STR_5-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l216
	line	58
	
l214:	
	line	59
	
l2714:	
	movlw	low((STR_6-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l216
	
l215:	
	line	60
	
l216:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_mensaje_opciones2
	__end_of_LCD_mensaje_opciones2:
	signat	_LCD_mensaje_opciones2,88
	global	_LCD_enviaCadena

;; *************** function _LCD_enviaCadena *****************
;; Defined at:
;;		line 240 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;  cadena          2    5[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(17), STR_6(9), STR_5(9), STR_4(9), 
;;		 -> STR_3(9), STR_2(17), cadena(20), 
;; Auto vars:     Size  Location     Type
;;  i               1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_envia_4bits
;; This function is called by:
;;		_main
;;		_LCD_mensaje_opciones_inicial
;;		_LCD_mensaje_opciones2
;;		_esperaPrimeraTecla
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"LCD.c"
	line	240
global __ptext33
__ptext33:	;psect for function _LCD_enviaCadena
psect	text33
	file	"LCD.c"
	line	240
	global	__size_of_LCD_enviaCadena
	__size_of_LCD_enviaCadena	equ	__end_of_LCD_enviaCadena-_LCD_enviaCadena
	
_LCD_enviaCadena:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_enviaCadena: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	243
	
l2586:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_enviaCadena@i)
	goto	l2626
	line	244
	
l840:	
	goto	l2588
	
l841:	
	
l2588:	
	movf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	iorwf	indf,f
	goto	l2590
	
l842:	
	
l2590:	
	movf	(LCD_enviaCadena@i),w
	addwf	(LCD_enviaCadena@cadena),w
	movwf	fsr0
	movf	(LCD_enviaCadena@cadena+1),w
	skipnc
	incf	(LCD_enviaCadena@cadena+1),w
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LCD_enviaCadena+0)+0
	movlw	04h
u1555:
	clrc
	rrf	(??_LCD_enviaCadena+0)+0,f
	addlw	-1
	skipz
	goto	u1555
	movf	0+(??_LCD_enviaCadena+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2592:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_enviaCadena@i),w
	addwf	(LCD_enviaCadena@cadena),w
	movwf	fsr0
	movf	(LCD_enviaCadena@cadena+1),w
	skipnc
	incf	(LCD_enviaCadena@cadena+1),w
	movwf	btemp+1
	fcall	stringtab
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2594
	
l843:	
	
l2594:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l2624
u1560:
	
l2596:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u1571
	goto	u1570
u1571:
	goto	l2610
u1570:
	goto	l2600
	
l846:	
	goto	l2600
	
l2598:	
	movlw	low(040h)
	movwf	(_LCD_enviaCadena$418)
	movlw	high(040h)
	movwf	((_LCD_enviaCadena$418))+1
	goto	l2602
	
l848:	
	
l2600:	
	clrf	(_LCD_enviaCadena$418)
	clrf	(_LCD_enviaCadena$418+1)
	goto	l2602
	
l850:	
	
l2602:	
	movf	(_LCD_enviaCadena$418),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2604
	
l851:	
	
l2604:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	indf,f
	goto	l2606
	
l852:	
	
l2606:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_enviaCadena+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_enviaCadena+0)+0
	movlw	04h
	movwf	btemp+1
u1585:
	rlf	(??_LCD_enviaCadena+0)+1,w
	rrf	(??_LCD_enviaCadena+0)+1,f
	rrf	(??_LCD_enviaCadena+0)+0,f
	decfsz	btemp+1,f
	goto	u1585
	movf	0+(??_LCD_enviaCadena+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2608:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2622
	
l853:	
	goto	l2622
	
l854:	
	goto	l2622
	
l855:	
	goto	l2622
	
l845:	
	goto	l2610
	
l857:	
	
l2610:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_enviaCadena$419)
	movlw	high(040h)
	movwf	((_LCD_enviaCadena$419))+1
	goto	l2614
	
l859:	
	
l2612:	
	clrf	(_LCD_enviaCadena$419)
	clrf	(_LCD_enviaCadena$419+1)
	goto	l2614
	
l861:	
	
l2614:	
	movf	(_LCD_enviaCadena$419),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2616
	
l862:	
	
l2616:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	indf,f
	goto	l2618
	
l863:	
	
l2618:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_enviaCadena+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_enviaCadena+0)+0
	movlw	04h
	movwf	btemp+1
u1595:
	rlf	(??_LCD_enviaCadena+0)+1,w
	rrf	(??_LCD_enviaCadena+0)+1,f
	rrf	(??_LCD_enviaCadena+0)+0,f
	decfsz	btemp+1,f
	goto	u1595
	movf	0+(??_LCD_enviaCadena+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2620:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2622
	
l864:	
	goto	l2622
	
l865:	
	goto	l2622
	
l866:	
	goto	l2622
	
l856:	
	
l2622:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l2624
	
l844:	
	goto	l2624
	
l867:	
	line	243
	
l2624:	
	movlw	(01h)
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	addwf	(LCD_enviaCadena@i),f
	goto	l2626
	
l839:	
	
l2626:	
	movf	(LCD_enviaCadena@i),w
	addwf	(LCD_enviaCadena@cadena),w
	movwf	fsr0
	movf	(LCD_enviaCadena@cadena+1),w
	skipnc
	incf	(LCD_enviaCadena@cadena+1),w
	movwf	btemp+1
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1601
	goto	u1600
u1601:
	goto	l2588
u1600:
	goto	l869
	
l868:	
	line	245
	
l869:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_enviaCadena
	__end_of_LCD_enviaCadena:
	signat	_LCD_enviaCadena,4216
	global	_LCD_envia_4bits

;; *************** function _LCD_envia_4bits *****************
;; Defined at:
;;		line 148 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;  dato            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dato            1    4[BANK0 ] unsigned char 
;;  a               1    3[BANK0 ] unsigned char 
;;  LCD_var_TRIS    1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_LCD_mensaje_opciones_inicial
;;		_LCD_mensaje_opciones2
;;		_esperaPrimeraTecla
;;		_esperaPrimerValor
;;		_esperaSegundoValor
;;		_esperaTercerValor
;;		_LCD_ini
;;		_LCD_enciende
;;		_LCD_enviaCadena
;;		_LCD_enviaCaracter___
;;		_LCD_envia_8bits_______
;;		_LCD_enviablancos
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	line	148
global __ptext34
__ptext34:	;psect for function _LCD_envia_4bits
psect	text34
	file	"LCD.c"
	line	148
	global	__size_of_LCD_envia_4bits
	__size_of_LCD_envia_4bits	equ	__end_of_LCD_envia_4bits-_LCD_envia_4bits
	
_LCD_envia_4bits:	
;incstack = 0
	opt	stack 3
; Regs used in _LCD_envia_4bits: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_envia_4bits@dato)
	line	151
	
l2564:	
	movf	(_LCD_BUS_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_BUS_PORT_TRIS_PUNTERO+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(??_LCD_envia_4bits+0)+0,w
	movwf	(LCD_envia_4bits@LCD_var_TRIS)
	line	154
	
l2566:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0F0h
	skipz
	goto	u1531
	goto	u1530
u1531:
	goto	l2570
u1530:
	line	156
	
l2568:	
	movf	(LCD_envia_4bits@dato),w
	movwf	(??_LCD_envia_4bits+0)+0
	movlw	(04h)-1
u1545:
	clrc
	rlf	(??_LCD_envia_4bits+0)+0,f
	addlw	-1
	skipz
	goto	u1545
	clrc
	rlf	(??_LCD_envia_4bits+0)+0,w
	andlw	0F0h
	movwf	(??_LCD_envia_4bits+1)+0
	movf	(??_LCD_envia_4bits+1)+0,w
	movwf	(LCD_envia_4bits@dato)
	goto	l2570
	line	157
	
l762:	
	line	159
	
l2570:	
	movf	(_LCD_BUS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_BUS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(??_LCD_envia_4bits+0)+0,w
	movwf	(LCD_envia_4bits@a)
	line	160
	
l2572:	
	comf	(_LCD_BUS_PORT_PINES),w
	andwf	(LCD_envia_4bits@a),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(??_LCD_envia_4bits+0)+0,w
	movwf	(LCD_envia_4bits@a)
	line	161
	
l2574:	
	movf	(LCD_envia_4bits@dato),w
	iorwf	(LCD_envia_4bits@a),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(??_LCD_envia_4bits+0)+0,w
	movwf	(LCD_envia_4bits@dato)
	line	164
	
l2576:	
	comf	(_LCD_BUS_PORT_PINES),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(_LCD_BUS_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_BUS_PORT_TRIS_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_envia_4bits+0)+0,w
	andwf	indf,f
	line	167
	
l2578:	
	movf	(_LCD_BUS_PORT_PUNTERO),w
	movwf	fsr0
	bcf	status,7
	btfsc	(_LCD_BUS_PORT_PUNTERO+1),0
	bsf	status,7
	
	movf	(LCD_envia_4bits@dato),w
	movwf	indf
	line	168
	
l2580:	
	movf	(_LCD_E),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(_LCD_E_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_E_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_envia_4bits+0)+0,w
	iorwf	indf,f
	line	169
	
l2582:	
	comf	(_LCD_E),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(_LCD_E_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_E_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_envia_4bits+0)+0,w
	andwf	indf,f
	line	170
	
l2584:	
	opt asmopt_off
movlw	3
movwf	((??_LCD_envia_4bits+0)+0+1),f
	movlw	151
movwf	((??_LCD_envia_4bits+0)+0),f
u3127:
	decfsz	((??_LCD_envia_4bits+0)+0),f
	goto	u3127
	decfsz	((??_LCD_envia_4bits+0)+0+1),f
	goto	u3127
	nop2
opt asmopt_on

	line	172
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_BUS_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bcf	status,7
	btfsc	(_LCD_BUS_PORT_TRIS_PUNTERO+1),0
	bsf	status,7
	
	movf	(LCD_envia_4bits@LCD_var_TRIS),w
	movwf	indf
	line	173
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_envia_4bits
	__end_of_LCD_envia_4bits:
	signat	_LCD_envia_4bits,4216
	global	_rutinaInterrupcion

;; *************** function _rutinaInterrupcion *****************
;; Defined at:
;;		line 42 in file "interrupcion.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_control_PI
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"interrupcion.c"
	line	42
global __ptext35
__ptext35:	;psect for function _rutinaInterrupcion
psect	text35
	file	"interrupcion.c"
	line	42
	global	__size_of_rutinaInterrupcion
	__size_of_rutinaInterrupcion	equ	__end_of_rutinaInterrupcion-_rutinaInterrupcion
	
_rutinaInterrupcion:	
;incstack = 0
	opt	stack 2
; Regs used in _rutinaInterrupcion: [wreg+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_rutinaInterrupcion+2)
	movf	fsr0,w
	movwf	(??_rutinaInterrupcion+3)
	movf	pclath,w
	movwf	(??_rutinaInterrupcion+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_rutinaInterrupcion+5)
	ljmp	_rutinaInterrupcion
psect	text35
	line	44
	
i1l3532:	
	btfss	(90/8),(90)&7	;volatile
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l3556
u289_20:
	
i1l3534:	
	btfss	(93/8),(93)&7	;volatile
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l3556
u290_20:
	line	46
	
i1l3536:	
	bcf	(90/8),(90)&7	;volatile
	line	47
	
i1l3538:	
	movlw	(0Ch)
	movwf	(1)	;volatile
	line	50
	movlw	04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_cuenta_ints_T0)^080h,w
	iorwf	(_cuenta_ints_T0+1)^080h,w
	skipz
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l3552
u291_20:
	line	52
	
i1l3540:	
	movlw	low(01h)
	addwf	(_cuenta_ints_T0)^080h,f
	skipnc
	incf	(_cuenta_ints_T0+1)^080h,f
	movlw	high(01h)
	addwf	(_cuenta_ints_T0+1)^080h,f
	line	53
	
i1l3542:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14+1),w	;volatile
	clrf	(_valor_TMR1+1)
	addwf	(_valor_TMR1+1)
	movf	(14),w	;volatile
	clrf	(_valor_TMR1)
	addwf	(_valor_TMR1)

	line	54
	
i1l3544:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	57
	
i1l3546:	
	comf	(_valor_TMR1),w
	movwf	(??_rutinaInterrupcion+0)+0
	comf	(_valor_TMR1+1),w
	movwf	((??_rutinaInterrupcion+0)+0+1)
	incf	(??_rutinaInterrupcion+0)+0,f
	skipnz
	incf	((??_rutinaInterrupcion+0)+0+1),f
	movf	(_num_pulsos_ref),w
	addwf	0+(??_rutinaInterrupcion+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_error)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_num_pulsos_ref+1),w
	skipnc
	incf	(_num_pulsos_ref+1),w
	addwf	1+(??_rutinaInterrupcion+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_error)^080h
	line	58
	
i1l3548:	
	movf	(_error+1)^080h,w
	clrf	(control_PI@error+1)
	addwf	(control_PI@error+1)
	movf	(_error)^080h,w
	clrf	(control_PI@error)
	addwf	(control_PI@error)

	fcall	_control_PI
	movf	(1+(?_control_PI)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Ton+1)^080h
	addwf	(_Ton+1)^080h
	movf	(0+(?_control_PI)),w
	clrf	(_Ton)^080h
	addwf	(_Ton)^080h

	line	59
	
i1l3550:	
	movf	(_Ton)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	goto	i1l3552
	line	60
	
i1l451:	
	line	62
	
i1l3552:	
	movlw	010h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_cuenta_1s)^080h,w
	iorwf	(_cuenta_1s+1)^080h,w
	skipz
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l454
u292_20:
	line	64
	
i1l3554:	
	movlw	low(01h)
	addwf	(_cuenta_1s)^080h,f
	skipnc
	incf	(_cuenta_1s+1)^080h,f
	movlw	high(01h)
	addwf	(_cuenta_1s+1)^080h,f
	line	65
	movlw	low(01h)
	movwf	(_tiempo_1s)^080h
	movlw	high(01h)
	movwf	((_tiempo_1s)^080h)+1
	goto	i1l454
	line	66
	
i1l452:	
	line	67
	goto	i1l454
	line	69
	
i1l450:	
	line	72
	
i1l3556:	
	clrf	(11)	;volatile
	line	73
	
i1l3558:	
	bcf	(88/8),(88)&7	;volatile
	goto	i1l454
	line	74
	
i1l453:	
	line	75
	
i1l454:	
	movf	(??_rutinaInterrupcion+5),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_rutinaInterrupcion+4),w
	movwf	pclath
	movf	(??_rutinaInterrupcion+3),w
	movwf	fsr0
	swapf	(??_rutinaInterrupcion+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_rutinaInterrupcion
	__end_of_rutinaInterrupcion:
	signat	_rutinaInterrupcion,88
	global	_control_PI

;; *************** function _control_PI *****************
;; Defined at:
;;		line 25 in file "interrupcion.c"
;; Parameters:    Size  Location     Type
;;  error           2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] short 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rutinaInterrupcion
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	line	25
global __ptext36
__ptext36:	;psect for function _control_PI
psect	text36
	file	"interrupcion.c"
	line	25
	global	__size_of_control_PI
	__size_of_control_PI	equ	__end_of_control_PI-_control_PI
	
_control_PI:	
;incstack = 0
	opt	stack 2
; Regs used in _control_PI: [wreg+status,2+status,0+btemp+1]
	line	30
	
i1l3460:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_errorAnt)^080h,w
	movwf	(??_control_PI+0)+0
	comf	(_errorAnt+1)^080h,w
	movwf	((??_control_PI+0)+0+1)
	incf	(??_control_PI+0)+0,f
	skipnz
	incf	((??_control_PI+0)+0+1),f
	movf	(control_PI@error),w
	addwf	0+(??_control_PI+0)+0,w
	movwf	(??_control_PI+2)+0
	movf	(control_PI@error+1),w
	skipnc
	incf	(control_PI@error+1),w
	addwf	1+(??_control_PI+0)+0,w
	movwf	1+(??_control_PI+2)+0
	clrc
	rlf	(??_control_PI+2)+0,f
	rlf	(??_control_PI+2)+1,f
	clrc
	rlf	(??_control_PI+2)+0,f
	rlf	(??_control_PI+2)+1,f
	movf	(control_PI@error),w
	addwf	0+(??_control_PI+2)+0,w
	movwf	(??_control_PI+4)+0
	movf	(control_PI@error+1),w
	skipnc
	incf	(control_PI@error+1),w
	addwf	1+(??_control_PI+2)+0,w
	movwf	1+(??_control_PI+4)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_salidaPI),w
	addwf	0+(??_control_PI+4)+0,w
	movwf	(_salidaPI)
	movf	(_salidaPI+1),w
	skipnc
	incf	(_salidaPI+1),w
	addwf	1+(??_control_PI+4)+0,w
	movwf	1+(_salidaPI)
	line	31
	movf	(control_PI@error+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_errorAnt+1)^080h
	addwf	(_errorAnt+1)^080h
	movf	(control_PI@error),w
	clrf	(_errorAnt)^080h
	addwf	(_errorAnt)^080h

	line	32
	
i1l3462:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_max_duty+1),w
	movwf	(??_control_PI+0)+0+1
	movf	(_max_duty),w
	movwf	(??_control_PI+0)+0
	swapf	(??_control_PI+0)+0,f
	swapf	(??_control_PI+0)+1,f
	movlw	0f0h
	andwf	(??_control_PI+0)+1,f
	movf	(??_control_PI+0)+0,w
	andlw	0fh
	iorwf	(??_control_PI+0)+1,f
	movlw	0f0h
	andwf	(??_control_PI+0)+0,f
	movf	1+(??_control_PI+0)+0,w
	xorlw	80h
	movwf	(??_control_PI+2)+0
	movf	(_salidaPI+1),w
	xorlw	80h
	subwf	(??_control_PI+2)+0,w
	skipz
	goto	u283_25
	movf	(_salidaPI),w
	subwf	0+(??_control_PI+0)+0,w
u283_25:

	skipnc
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l3466
u283_20:
	line	33
	
i1l3464:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_max_duty+1),w
	movwf	(??_control_PI+0)+0+1
	movf	(_max_duty),w
	movwf	(??_control_PI+0)+0
	swapf	(??_control_PI+0)+0,f
	swapf	(??_control_PI+0)+1,f
	movlw	0f0h
	andwf	(??_control_PI+0)+1,f
	movf	(??_control_PI+0)+0,w
	andlw	0fh
	iorwf	(??_control_PI+0)+1,f
	movlw	0f0h
	andwf	(??_control_PI+0)+0,f
	movf	0+(??_control_PI+0)+0,w
	movwf	(_salidaPI)
	movf	1+(??_control_PI+0)+0,w
	movwf	(_salidaPI+1)
	goto	i1l3466
	
i1l445:	
	line	34
	
i1l3466:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_salidaPI+1),7
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l3470
u284_20:
	line	35
	
i1l3468:	
	clrf	(_salidaPI)
	clrf	(_salidaPI+1)
	goto	i1l3470
	
i1l446:	
	line	36
	
i1l3470:	
	movf	(_salidaPI+1),w
	movwf	(??_control_PI+0)+0+1
	movf	(_salidaPI),w
	movwf	(??_control_PI+0)+0
	movlw	04h
	movwf	btemp+1
u285_25:
	rlf	(??_control_PI+0)+1,w
	rrf	(??_control_PI+0)+1,f
	rrf	(??_control_PI+0)+0,f
	decfsz	btemp+1,f
	goto	u285_25
	movf	0+(??_control_PI+0)+0,w
	movwf	(?_control_PI)
	movf	1+(??_control_PI+0)+0,w
	movwf	(?_control_PI+1)
	goto	i1l447
	
i1l3472:	
	line	37
	
i1l447:	
	return
	opt stack 0
GLOBAL	__end_of_control_PI
	__end_of_control_PI:
	signat	_control_PI,4218
global	___latbits
___latbits	equ	1
	global	fptotal
fptotal equ 32
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable,__fptable
__fptable:
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__estado100:
	ljmp	_estado100
	file ""
	line	#
fp__estado10:
	ljmp	_estado10
	file ""
	line	#
fp__estado50:
	ljmp	_estado50
	file ""
	line	#
fp__espera01Almohadilla:
	ljmp	_espera01Almohadilla
	file ""
	line	#
fp__esperaPrimerValor:
	ljmp	_esperaPrimerValor
	file ""
	line	#
fp__esperaPrimeraTecla:
	ljmp	_esperaPrimeraTecla
	file ""
	line	#
fp__esperaSegundoValor:
	ljmp	_esperaSegundoValor
	file ""
	line	#
fp__esperaTercerValor:
	ljmp	_esperaTercerValor
	file ""
	line	#
fp__esperaAlmohadillaValor:
	ljmp	_esperaAlmohadillaValor
	file ""
	line	#
fp__esperaSoltarTecla:
	ljmp	_esperaSoltarTecla
	file ""
	line	#
fp__esperaPulsarTecla:
	ljmp	_esperaPulsarTecla
	global __end_of__fptable
	__end_of__fptable:
	global __size_of__fptable
	__size_of__fptable	equ	__end_of__fptable-__fptable
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
