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
	FNCALL	_main,_LCD_enviaCadena
	FNCALL	_main,_LCD_envia_4bits
	FNCALL	_main,_espera01Almohadilla
	FNCALL	_main,_esperaAlmohadillaValor
	FNCALL	_main,_esperaKi
	FNCALL	_main,_esperaKp
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
	FNCALL	_control_PI,i1___wmul
	FNCALL	intlevel1,_rutinaInterrupcion
	global	intlevel1
	FNROOT	intlevel1
	global	_sentido
	global	_start
	global	_Ki
	global	_Kp
	global	_tiempo_1s
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"procesoSecuencia.c"
	line	24

;initializer for _sentido
	retlw	01h
	retlw	0

	line	23

;initializer for _start
	retlw	01h
	retlw	0

psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"interrupcion.c"
	line	15

;initializer for _Ki
	retlw	01h
	retlw	0

	line	14

;initializer for _Kp
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
	file	"c:\sed_tools\xc8\sources\common\doprnt.c"
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
	global	_salidaPI
	global	_valor
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
	global	_cuenta_1s
	global	_cuenta_ints_T0
	global	_error
	global	_errorAnt
	global	_max_duty
	global	_num_pulsos_ref
	global	_valor_TMR1
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
	
STR_8:	
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
	
STR_4:	
	retlw	48	;'0'
	retlw	58	;':'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	80	;'P'
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
	retlw	0
psect	strings
	
STR_5:	
	retlw	49	;'1'
	retlw	58	;':'
	retlw	67	;'C'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	50	;'2'
	retlw	58	;':'
	retlw	75	;'K'
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

_salidaPI:
       ds      2

_valor:
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
	line	24
_sentido:
       ds      2

psect	dataBANK0
	file	"procesoSecuencia.c"
	line	23
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

_cuenta_1s:
       ds      2

_cuenta_ints_T0:
       ds      2

_error:
       ds      2

_errorAnt:
       ds      2

_max_duty:
       ds      2

_num_pulsos_ref:
       ds      2

_valor_TMR1:
       ds      2

_cadena:
       ds      20

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"interrupcion.c"
	line	15
_Ki:
       ds      2

psect	dataBANK1
	file	"interrupcion.c"
	line	14
_Kp:
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
	movlw	low((__pbssBANK0)+021h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+02Ah)
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
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x0
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x1
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x2
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x3
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x7
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x8
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xA
	ds	1
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
?_esperaKp:	; 0 bytes @ 0x0
?_esperaSegundoValor:	; 0 bytes @ 0x0
?_esperaTercerValor:	; 0 bytes @ 0x0
?_esperaAlmohadillaValor:	; 0 bytes @ 0x0
?_esperaKi:	; 0 bytes @ 0x0
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
	global	?i1___wmul
?i1___wmul:	; 2 bytes @ 0x0
	global	i1___wmul@multiplier
i1___wmul@multiplier:	; 2 bytes @ 0x0
	ds	2
	global	i1___wmul@multiplicand
i1___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
??i1___wmul:	; 0 bytes @ 0x4
	global	i1___wmul@product
i1___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?_control_PI
?_control_PI:	; 2 bytes @ 0x6
	global	control_PI@error
control_PI@error:	; 2 bytes @ 0x6
	ds	2
??_control_PI:	; 0 bytes @ 0x8
	ds	6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_rutinaInterrupcion:	; 0 bytes @ 0x0
	ds	6
??_init_registros:	; 0 bytes @ 0x6
??_init_Timer0:	; 0 bytes @ 0x6
??_init_Timer1:	; 0 bytes @ 0x6
??_init_Timer2:	; 0 bytes @ 0x6
??_init_ADC:	; 0 bytes @ 0x6
??_init_procesoTeclado:	; 0 bytes @ 0x6
??_init_procesoSecuencia:	; 0 bytes @ 0x6
??_init_procesoHisteresis:	; 0 bytes @ 0x6
??_LCD_envia_4bits:	; 0 bytes @ 0x6
??_estado100:	; 0 bytes @ 0x6
??_estado10:	; 0 bytes @ 0x6
??_estado50:	; 0 bytes @ 0x6
??_esperaKp:	; 0 bytes @ 0x6
??_esperaKi:	; 0 bytes @ 0x6
??_TECLADO_leer:	; 0 bytes @ 0x6
??_TECLADO_pulsado:	; 0 bytes @ 0x6
??_TECLADO_ini:	; 0 bytes @ 0x6
??_isdigit:	; 0 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	?___wmul
?___wmul:	; 2 bytes @ 0x6
	global	_isdigit$639
_isdigit$639:	; 1 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x6
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x7
	ds	1
??_esperaSoltarTecla:	; 0 bytes @ 0x8
	global	TECLADO_leer@i
TECLADO_leer@i:	; 1 bytes @ 0x8
	global	LCD_envia_4bits@LCD_var_TRIS
LCD_envia_4bits@LCD_var_TRIS:	; 1 bytes @ 0x8
	global	_TECLADO_ini$364
_TECLADO_ini$364:	; 2 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x8
	ds	1
	global	LCD_envia_4bits@a
LCD_envia_4bits@a:	; 1 bytes @ 0x9
	global	TECLADO_leer@bit_a_testear
TECLADO_leer@bit_a_testear:	; 2 bytes @ 0x9
	ds	1
??___lwdiv:	; 0 bytes @ 0xA
??___wmul:	; 0 bytes @ 0xA
	global	TECLADO_ini@config
TECLADO_ini@config:	; 1 bytes @ 0xA
	global	LCD_envia_4bits@dato
LCD_envia_4bits@dato:	; 1 bytes @ 0xA
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0xA
	ds	1
?_LCD_enviaCadena:	; 0 bytes @ 0xB
??_esperaPrimerValor:	; 0 bytes @ 0xB
??_esperaPulsarTecla:	; 0 bytes @ 0xB
??_LCD_enciende:	; 0 bytes @ 0xB
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xB
	global	LCD_enviaCadena@cadena
LCD_enviaCadena@cadena:	; 2 bytes @ 0xB
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xC
	ds	1
??_LCD_enviaCadena:	; 0 bytes @ 0xD
	global	LCD_enciende@config
LCD_enciende@config:	; 1 bytes @ 0xD
	global	_esperaPrimerValor$199
_esperaPrimerValor$199:	; 2 bytes @ 0xD
	ds	1
?_LCD_ini:	; 0 bytes @ 0xE
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xE
	global	LCD_ini@RS_PIN
LCD_ini@RS_PIN:	; 1 bytes @ 0xE
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xE
	ds	1
	global	LCD_ini@E_PIN
LCD_ini@E_PIN:	; 1 bytes @ 0xF
	global	_esperaPrimerValor$200
_esperaPrimerValor$200:	; 2 bytes @ 0xF
	global	_LCD_enviaCadena$433
_LCD_enviaCadena$433:	; 2 bytes @ 0xF
	ds	1
??_LCD_ini:	; 0 bytes @ 0x10
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x10
	ds	1
	global	_esperaPrimerValor$201
_esperaPrimerValor$201:	; 2 bytes @ 0x11
	global	_LCD_enviaCadena$434
_LCD_enviaCadena$434:	; 2 bytes @ 0x11
	ds	1
??___lwmod:	; 0 bytes @ 0x12
	global	_LCD_ini$410
_LCD_ini$410:	; 2 bytes @ 0x12
	ds	1
	global	LCD_enviaCadena@i
LCD_enviaCadena@i:	; 1 bytes @ 0x13
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x13
	ds	1
??_LCD_mensaje_opciones_inicial:	; 0 bytes @ 0x14
??_LCD_mensaje_opciones2:	; 0 bytes @ 0x14
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x14
	global	LCD_ini@config
LCD_ini@config:	; 1 bytes @ 0x14
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x14
	ds	2
	global	_LCD_mensaje_opciones_inicial$185
_LCD_mensaje_opciones_inicial$185:	; 2 bytes @ 0x16
	global	_LCD_mensaje_opciones2$188
_LCD_mensaje_opciones2$188:	; 2 bytes @ 0x16
	ds	2
??_init_librerias:	; 0 bytes @ 0x18
??_esperaPrimeraTecla:	; 0 bytes @ 0x18
??_espera01Almohadilla:	; 0 bytes @ 0x18
??_esperaSegundoValor:	; 0 bytes @ 0x18
??_esperaTercerValor:	; 0 bytes @ 0x18
??_esperaAlmohadillaValor:	; 0 bytes @ 0x18
	ds	1
??_sprintf:	; 0 bytes @ 0x19
	ds	1
	global	_esperaPrimeraTecla$195
_esperaPrimeraTecla$195:	; 2 bytes @ 0x1A
	global	_esperaSegundoValor$203
_esperaSegundoValor$203:	; 2 bytes @ 0x1A
	global	_esperaTercerValor$207
_esperaTercerValor$207:	; 2 bytes @ 0x1A
	ds	2
	global	_esperaSegundoValor$204
_esperaSegundoValor$204:	; 2 bytes @ 0x1C
	global	_esperaTercerValor$208
_esperaTercerValor$208:	; 2 bytes @ 0x1C
	ds	2
	global	_esperaSegundoValor$205
_esperaSegundoValor$205:	; 2 bytes @ 0x1E
	global	_esperaTercerValor$209
_esperaTercerValor$209:	; 2 bytes @ 0x1E
	ds	2
??_main:	; 0 bytes @ 0x20
	ds	2
	global	_main$103
_main$103:	; 2 bytes @ 0x22
	ds	2
;!
;!Data Sizes:
;!    Strings     85
;!    Constant    22
;!    Data        10
;!    BSS         75
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     36      73
;!    BANK1            80     11      59
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
;!    S458$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    LCD_enviaCadena@cadena	PTR const unsigned char  size(2) Largest target is 20
;!		 -> STR_8(CODE[17]), STR_7(CODE[5]), STR_6(CODE[7]), STR_5(CODE[6]), 
;!		 -> STR_4(CODE[8]), STR_3(CODE[9]), STR_2(CODE[17]), cadena(BANK1[20]), 
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
;!		 -> esperaSoltarTecla(), esperaPulsarTecla(), esperaKi(), esperaAlmohadillaValor(), 
;!		 -> esperaTercerValor(), esperaSegundoValor(), esperaKp(), espera01Almohadilla(), 
;!		 -> esperaPrimerValor(), esperaPrimeraTecla(), estado50(), estado10(), 
;!		 -> estado100(), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _rutinaInterrupcion in COMMON
;!
;!    _rutinaInterrupcion->_control_PI
;!    _control_PI->i1___wmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_esperaSegundoValor
;!    _main->_esperaTercerValor
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
;!    _main->_sprintf
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
;! (0) _main                                                 4     4      0   13895
;!                                             32 BANK0      4     4      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;!                _espera01Almohadilla *
;!             _esperaAlmohadillaValor *
;!                           _esperaKi *
;!                           _esperaKp *
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
;! (1) _sprintf                                             19    14      5    2668
;!                                             20 BANK0      8     3      5
;!                                              0 BANK1     11    11      0
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      99
;!                                              6 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     362
;!                                             14 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     371
;!                                              6 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _init_registros                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoTeclado                                  1     1      0       0
;!                                              6 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoSecuencia                                1     1      0       0
;!                                              6 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoHisteresis                               1     1      0       0
;!                                              6 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_librerias                                       2     2      0    1838
;!                                             24 BANK0      2     2      0
;!                            _LCD_ini
;!       _LCD_mensaje_opciones_inicial
;!                        _TECLADO_ini
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_ini                                          5     5      0     134
;!                                              6 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _LCD_ini                                              7     5      2     800
;!                                             14 BANK0      7     5      2
;!                       _LCD_enciende
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_enciende                                         3     3      0     159
;!                                             11 BANK0      3     3      0
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer2                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer1                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer0                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_ADC                                             1     1      0       0
;!                                              6 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _estado50                                             1     1      0       0
;!                                              6 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _estado100                                            1     1      0       0
;!                                              6 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _estado10                                             1     1      0       0
;!                                              6 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaTercerValor                                    8     8      0    1798
;!                                             24 BANK0      8     8      0
;!                    _LCD_envia_4bits
;!       _LCD_mensaje_opciones_inicial
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (1) _esperaSoltarTecla                                    1     1      0       0
;!                                              8 BANK0      1     1      0
;!                    _TECLADO_pulsado
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_pulsado                                      2     2      0       0
;!                                              6 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaSegundoValor                                   8     8      0    1798
;!                                             24 BANK0      8     8      0
;!                    _LCD_envia_4bits
;!       _LCD_mensaje_opciones_inicial
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     646
;!                                              6 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _esperaPulsarTecla                                    1     1      0      95
;!                                             11 BANK0      1     1      0
;!                       _TECLADO_leer
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_leer                                         5     5      0      95
;!                                              6 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaPrimeraTecla                                   4     4      0    1821
;!                                             24 BANK0      4     4      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;!              _LCD_mensaje_opciones2
;! ---------------------------------------------------------------------------------
;! (1) _esperaPrimerValor                                    8     8      0     248
;!                                             11 BANK0      8     8      0
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (1) _esperaKp                                             2     2      0       0
;!                                              6 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaKi                                             2     2      0       0
;!                                              6 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaAlmohadillaValor                               1     1      0     904
;!                                             24 BANK0      1     1      0
;!       _LCD_mensaje_opciones_inicial
;! ---------------------------------------------------------------------------------
;! (1) _espera01Almohadilla                                  2     2      0    1808
;!                                             24 BANK0      2     2      0
;!              _LCD_mensaje_opciones2
;!       _LCD_mensaje_opciones_inicial
;! ---------------------------------------------------------------------------------
;! (2) _LCD_mensaje_opciones_inicial                         4     4      0     904
;!                                             20 BANK0      4     4      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (2) _LCD_mensaje_opciones2                                4     4      0     904
;!                                             20 BANK0      4     4      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_enviaCadena                                      9     7      2     743
;!                                             11 BANK0      9     7      2
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_envia_4bits                                      5     5      0     137
;!                                              6 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _rutinaInterrupcion                                   6     6      0     315
;!                                              0 BANK0      6     6      0
;!                         _control_PI
;! ---------------------------------------------------------------------------------
;! (6) _control_PI                                           8     6      2     315
;!                                              6 COMMON     8     6      2
;!                           i1___wmul
;! ---------------------------------------------------------------------------------
;! (7) i1___wmul                                             6     2      4     196
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
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
;!   _esperaKi *
;!   _esperaKp *
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
;!     i1___wmul
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
;!BANK1               50      B      3B       7       73.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     24      49       5       91.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      92      12        0.0%
;!ABS                  0      0      92       3        0.0%
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LCD_enviaCadena
;;		_LCD_envia_4bits
;;		_espera01Almohadilla
;;		_esperaAlmohadillaValor
;;		_esperaKi
;;		_esperaKp
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
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	66
	
l4259:	
	fcall	_init_registros
	line	68
	fcall	_init_Timer0
	line	70
	
l4261:	
	fcall	_init_Timer1
	line	72
	
l4263:	
	fcall	_init_Timer2
	line	74
	
l4265:	
	fcall	_init_ADC
	line	76
	
l4267:	
	fcall	_init_procesoTeclado
	line	78
	
l4269:	
	fcall	_init_procesoSecuencia
	line	80
	
l4271:	
	fcall	_init_procesoHisteresis
	line	82
	
l4273:	
	fcall	_init_librerias
	line	84
	
l4275:	
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_num_pulsos_ref)^080h
	movlw	high(064h)
	movwf	((_num_pulsos_ref)^080h)+1
	line	86
	
l4277:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	87
	
l4279:	
	bcf	(53/8),(53)&7	;volatile
	line	89
	
l4281:	
	bsf	(95/8),(95)&7	;volatile
	goto	l4283
	line	94
	
l75:	
	line	96
	
l4283:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_estado),w
	fcall	fptable
	line	98
	
l4285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+_estado+01h),w
	fcall	fptable
	line	100
	
l4287:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+_estado+02h),w
	fcall	fptable
	line	102
	
l4289:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tiempo_1s+1)^080h,w
	iorwf	(_tiempo_1s)^080h,w
	skipnz
	goto	u3981
	goto	u3980
u3981:
	goto	l4283
u3980:
	line	104
	
l4291:	
	clrf	(_tiempo_1s)^080h
	clrf	(_tiempo_1s+1)^080h
	line	105
	
l4293:	
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_num_pulsos_ref+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_num_pulsos_ref)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_valor_TMR1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_valor_TMR1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movlw	(_cadena)&0ffh
	fcall	_sprintf
	goto	l4297
	line	106
	
l77:	
	goto	l4297
	
l4295:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_main$103)
	movlw	high(040h)
	movwf	((_main$103))+1
	goto	l4299
	
l79:	
	
l4297:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_main$103)
	clrf	(_main$103+1)
	goto	l4299
	
l81:	
	
l4299:	
	movf	(_main$103),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4301
	
l82:	
	
l4301:	
	comf	(_LCD_RS),w
	movwf	(??_main+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_main+0)+0,w
	andwf	indf,f
	goto	l4303
	
l83:	
	
l4303:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_main+0)+0
	movlw	high(080h)
	movwf	1+(??_main+0)+0
	movlw	04h
	movwf	btemp+1
u3995:
	rlf	(??_main+0)+1,w
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	decfsz	btemp+1,f
	goto	u3995
	movf	0+(??_main+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4305:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4307
	
l84:	
	goto	l4307
	
l85:	
	goto	l4307
	
l86:	
	line	107
	
l4307:	
	movlw	(_cadena&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	(0x0)
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	112
	
l4309:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	116
	
l4311:	
	opt asmopt_off
movlw	33
movwf	(??_main+0)+0,f
u4007:
decfsz	(??_main+0)+0,f
	goto	u4007
opt asmopt_on

	line	121
	
l4313:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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

	goto	l4283
	line	125
	
l76:	
	goto	l4283
	line	126
	
l87:	
	line	94
	goto	l4283
	
l88:	
	line	127
	
l89:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "c:\sed_tools\xc8\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> cadena(20), 
;;  f               1   20[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  sp              1    7[BANK1 ] PTR unsigned char 
;;		 -> cadena(20), 
;;  _val            4    3[BANK1 ] struct .
;;  width           2    8[BANK1 ] int 
;;  c               1   10[BANK1 ] char 
;;  flag            1    2[BANK1 ] unsigned char 
;;  prec            1    1[BANK1 ] char 
;;  ap              1    0[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   20[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8      11       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
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
	file	"c:\sed_tools\xc8\sources\common\doprnt.c"
	line	492
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"c:\sed_tools\xc8\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	line	542
	
l3885:	
	movlw	(?_sprintf+01h)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@ap)^080h
	line	545
	goto	l3967
	
l906:	
	line	547
	
l3887:	
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3401
	goto	u3400
u3401:
	goto	l3893
u3400:
	line	550
	
l3889:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3891:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	551
	goto	l3967
	line	552
	
l907:	
	line	555
	
l3893:	
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	557
	clrf	(sprintf@flag)^080h
	line	606
	
l3895:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3411
	goto	u3410
u3411:
	goto	l3909
u3410:
	line	607
	
l3897:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	goto	l3899
	line	608
	
l909:	
	line	609
	
l3899:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___wmul@multiplier)
	movlw	high(0Ah)
	movwf	((___wmul@multiplier))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width+1)^080h
	addwf	(sprintf@width+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	addwf	(sprintf@width)^080h

	line	610
	
l3901:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@width)^080h,f
	skipnc
	incf	(sprintf@width+1)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@width+1)^080h,f
	
l3903:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l3905:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3421
	goto	u3420
u3421:
	goto	l3899
u3420:
	goto	l3909
	
l910:	
	goto	l3909
	line	617
	
l908:	
	line	644
	goto	l3909
	line	646
	
l912:	
	line	647
	goto	l3969
	line	706
	
l914:	
	goto	l3911
	line	707
	
l915:	
	line	708
	goto	l3911
	line	811
	
l917:	
	line	822
	goto	l3967
	line	831
	
l3907:	
	goto	l3911
	line	644
	
l911:	
	
l3909:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
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
	goto	l3969
	xorlw	100^0	; case 100
	skipnz
	goto	l3911
	xorlw	105^100	; case 105
	skipnz
	goto	l3911
	goto	l3967
	opt asmopt_on

	line	831
	
l916:	
	line	1268
	
l3911:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)^080h
	
l3913:	
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@ap)^080h,f
	line	1270
	
l3915:	
	btfss	(sprintf@_val+1)^080h,7
	goto	u3431
	goto	u3430
u3431:
	goto	l3921
u3430:
	line	1271
	
l3917:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(sprintf@flag)^080h,f
	line	1272
	
l3919:	
	comf	(sprintf@_val)^080h,f
	comf	(sprintf@_val+1)^080h,f
	incf	(sprintf@_val)^080h,f
	skipnz
	incf	(sprintf@_val+1)^080h,f
	goto	l3921
	line	1273
	
l918:	
	line	1314
	
l3921:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	movf	(sprintf@c)^080h,w
	xorlw	05h
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l3925
u3440:
	goto	l3933
	
l3923:	
	goto	l3933
	line	1315
	
l919:	
	
l3925:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3455
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val)^080h,w
u3455:
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l3929
u3450:
	goto	l3933
	line	1316
	
l3927:	
	goto	l3933
	
l921:	
	line	1314
	
l3929:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	
l3931:	
	movf	(sprintf@c)^080h,w
	xorlw	05h
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l3925
u3460:
	goto	l3933
	
l920:	
	line	1354
	
l3933:	
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3471
	goto	u3470
u3471:
	goto	l922
u3470:
	
l3935:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l922
u3480:
	line	1355
	
l3937:	
	movlw	low(-1)
	addwf	(sprintf@width)^080h,f
	skipnc
	incf	(sprintf@width+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^080h,f
	
l922:	
	line	1390
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3495
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3495:

	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l3941
u3490:
	line	1391
	
l3939:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l3943
	line	1392
	
l923:	
	line	1393
	
l3941:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	goto	l3943
	
l924:	
	line	1437
	
l3943:	
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3501
	goto	u3500
u3501:
	goto	l3951
u3500:
	goto	l3945
	line	1438
	
l926:	
	line	1439
	
l3945:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3947:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1440
	
l3949:	
	movlw	low(-1)
	addwf	(sprintf@width)^080h,f
	skipnc
	incf	(sprintf@width+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^080h,f
	movf	(((sprintf@width+1)^080h)),w
	iorwf	(((sprintf@width)^080h)),w
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l3945
u3510:
	goto	l3951
	
l927:	
	goto	l3951
	
l925:	
	line	1447
	
l3951:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3957
u3520:
	line	1448
	
l3953:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3955:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l3957
	
l928:	
	line	1481
	
l3957:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@prec)^080h
	line	1483
	goto	l3965
	
l930:	
	line	1498
	
l3959:	
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	line	1533
	
l3961:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3963:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l3965
	line	1534
	
l929:	
	line	1483
	
l3965:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@prec)^080h,f
	movf	((sprintf@prec)^080h),w
	xorlw	-1
	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l3959
u3530:
	goto	l3967
	
l931:	
	goto	l3967
	line	1542
	
l905:	
	line	545
	
l3967:	
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l3887
u3540:
	goto	l3969
	
l932:	
	goto	l3969
	line	1544
	
l913:	
	line	1547
	
l3969:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l933
	line	1549
	
l3971:	
	line	1550
;	Return value of _sprintf is never used
	
l933:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "c:\sed_tools\xc8\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    7[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"c:\sed_tools\xc8\sources\common\isdigit.c"
	line	8
global __ptext2
__ptext2:	;psect for function _isdigit
psect	text2
	file	"c:\sed_tools\xc8\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 3
; Regs used in _isdigit: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l3811:	
	clrf	(_isdigit$639)
	
l3813:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l3819
u3210:
	
l3815:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3819
u3220:
	
l3817:	
	clrf	(_isdigit$639)
	incf	(_isdigit$639),f
	goto	l3819
	
l1255:	
	
l3819:	
	rrf	(_isdigit$639),w
	
	goto	l1256
	
l3821:	
	line	15
	
l1256:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "c:\sed_tools\xc8\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   14[BANK0 ] unsigned int 
;;  dividend        2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"c:\sed_tools\xc8\sources\common\lwmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwmod
psect	text3
	file	"c:\sed_tools\xc8\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3849:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3301
	goto	u3300
u3301:
	goto	l3867
u3300:
	line	14
	
l3851:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3857
	
l1351:	
	line	16
	
l3853:	
	movlw	01h
	
u3315:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3315
	line	17
	
l3855:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3857
	line	18
	
l1350:	
	line	15
	
l3857:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l3853
u3320:
	goto	l3859
	
l1352:	
	goto	l3859
	line	19
	
l1353:	
	line	20
	
l3859:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3335
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3335:
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l3863
u3330:
	line	21
	
l3861:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3863
	
l1354:	
	line	22
	
l3863:	
	movlw	01h
	
u3345:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3345
	line	23
	
l3865:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3859
u3350:
	goto	l3867
	
l1355:	
	goto	l3867
	line	24
	
l1349:	
	line	25
	
l3867:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1356
	
l3869:	
	line	26
	
l1356:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "c:\sed_tools\xc8\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] unsigned int 
;;  dividend        2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] unsigned int 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"c:\sed_tools\xc8\sources\common\lwdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"c:\sed_tools\xc8\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l3823:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l3825:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3231
	goto	u3230
u3231:
	goto	l3845
u3230:
	line	16
	
l3827:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l3833
	
l1341:	
	line	18
	
l3829:	
	movlw	01h
	
u3245:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3245
	line	19
	
l3831:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3833
	line	20
	
l1340:	
	line	17
	
l3833:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l3829
u3250:
	goto	l3835
	
l1342:	
	goto	l3835
	line	21
	
l1343:	
	line	22
	
l3835:	
	movlw	01h
	
u3265:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3265
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3275
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3275:
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3841
u3270:
	line	24
	
l3837:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l3839:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3841
	line	26
	
l1344:	
	line	27
	
l3841:	
	movlw	01h
	
u3285:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3285
	line	28
	
l3843:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3835
u3290:
	goto	l3845
	
l1345:	
	goto	l3845
	line	29
	
l1339:	
	line	30
	
l3845:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1346
	
l3847:	
	line	31
	
l1346:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 4
; Regs used in _init_registros: [wreg+status,2]
	line	22
	
l3137:	
	movlw	(066h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	33
	goto	l566
	
l567:	
	
l566:	
	btfss	(1146/8)^080h,(1146)&7	;volatile
	goto	u2331
	goto	u2330
u2331:
	goto	l566
u2330:
	goto	l3139
	
l568:	
	line	36
	
l3139:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	37
	clrf	(6)	;volatile
	line	38
	
l3141:	
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	39
	
l3143:	
	movlw	(03Fh)
	movwf	(133)^080h	;volatile
	line	40
	
l3145:	
	movlw	(0C7h)
	movwf	(134)^080h	;volatile
	line	42
	
l569:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 4
; Regs used in _init_procesoTeclado: [wreg]
	line	26
	
l3173:	
	movlw	((fp__esperaPulsarTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_procesoTeclado+0)+0
	movf	(??_init_procesoTeclado+0)+0,w
	movwf	(_estado)
	line	27
	
l421:	
	return
	opt stack 0
GLOBAL	__end_of_init_procesoTeclado
	__end_of_init_procesoTeclado:
	signat	_init_procesoTeclado,88
	global	_init_procesoSecuencia

;; *************** function _init_procesoSecuencia *****************
;; Defined at:
;;		line 39 in file "procesoSecuencia.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"procesoSecuencia.c"
	line	39
global __ptext7
__ptext7:	;psect for function _init_procesoSecuencia
psect	text7
	file	"procesoSecuencia.c"
	line	39
	global	__size_of_init_procesoSecuencia
	__size_of_init_procesoSecuencia	equ	__end_of_init_procesoSecuencia-_init_procesoSecuencia
	
_init_procesoSecuencia:	
;incstack = 0
	opt	stack 4
; Regs used in _init_procesoSecuencia: [wreg]
	line	41
	
l3883:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_procesoSecuencia+0)+0
	movf	(??_init_procesoSecuencia+0)+0,w
	movwf	(0+_estado+01h)
	line	42
	
l193:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 4
; Regs used in _init_procesoHisteresis: [wreg]
	line	55
	
l3177:	
	movlw	((fp__estado100-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_procesoHisteresis+0)+0
	movf	(??_init_procesoHisteresis+0)+0,w
	movwf	(0+_estado+02h)
	line	56
	movlw	low(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_max_duty)^080h
	movlw	high(0F9h)
	movwf	((_max_duty)^080h)+1
	line	57
	
l104:	
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
;; Hardware stack levels required when called:    6
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
	opt	stack 1
; Regs used in _init_librerias: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	143
	
l3179:	
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
	
l3181:	
	fcall	_LCD_mensaje_opciones_inicial
	line	148
	
l584:	
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
;;  config          1   10[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
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
	opt	stack 3
; Regs used in _TECLADO_ini: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(TECLADO_ini@config)
	line	128
	
l2933:	
	movf	(TECLADO_ini@config),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_config)	;volatile
	line	130
	
l2935:	
	btfss	(TECLADO_ini@config),(0)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l616
u1870:
	
l2937:	
	movlw	high(6)
	movwf	(_TECLADO_PORT_FIL_PUNTERO+1)
	movlw	low(6)
	movwf	(_TECLADO_PORT_FIL_PUNTERO)
	goto	l618
	
l616:	
	movlw	high(5)
	movwf	(_TECLADO_PORT_FIL_PUNTERO+1)
	movlw	low(5)
	movwf	(_TECLADO_PORT_FIL_PUNTERO)
	
l618:	
	line	131
	btfss	(TECLADO_ini@config),(2)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l2941
u1880:
	
l2939:	
	movlw	low(0F0h)
	movwf	(_TECLADO_ini$364)
	movlw	high(0F0h)
	movwf	((_TECLADO_ini$364))+1
	goto	l622
	
l620:	
	
l2941:	
	movlw	low(0Fh)
	movwf	(_TECLADO_ini$364)
	movlw	high(0Fh)
	movwf	((_TECLADO_ini$364))+1
	
l622:	
	movf	(_TECLADO_ini$364),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_FIL_PINES)
	line	133
	
l2943:	
	btfss	(TECLADO_ini@config),(1)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l624
u1890:
	
l2945:	
	movlw	high(6)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_TECLADO_PORT_COL_PUNTERO+1)^080h
	movlw	low(6)
	movwf	(_TECLADO_PORT_COL_PUNTERO)^080h
	goto	l2955
	
l624:	
	movlw	high(5)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_TECLADO_PORT_COL_PUNTERO+1)^080h
	movlw	low(5)
	movwf	(_TECLADO_PORT_COL_PUNTERO)^080h
	goto	l2955
	
l626:	
	line	135
	goto	l2955
	line	138
	
l628:	
	
l2947:	
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	139
	goto	l629
	line	140
	
l630:	
	
l2949:	
	movlw	(038h)
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	141
	goto	l629
	line	142
	
l631:	
	
l2951:	
	movlw	(0E0h)
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	143
	goto	l629
	line	144
	
l2953:	
	goto	l629
	line	135
	
l627:	
	
l2955:	
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
	goto	l4335
	goto	l629
	opt asmopt_on
	
l4335:	
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
	goto	l2947
	xorlw	16^8	; case 16
	skipnz
	goto	l2949
	xorlw	24^16	; case 24
	skipnz
	goto	l2951
	goto	l629
	opt asmopt_on

	line	144
	
l629:	
	line	150
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1901
	goto	u1900
u1901:
	goto	l2959
u1900:
	line	154
	
l2957:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(133)^080h,f	;volatile
	line	167
	goto	l633
	line	168
	
l632:	
	line	171
	
l2959:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(134)^080h,f	;volatile
	line	175
	
l2961:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_TECLADO_config),(6)&7	;volatile
	goto	u1911
	goto	u1910
u1911:
	goto	l633
u1910:
	line	178
	
l2963:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7	;volatile
	goto	l633
	line	194
	
l634:	
	line	195
	
l633:	
	line	201
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_TECLADO_config),(0)&7	;volatile
	goto	u1921
	goto	u1920
u1921:
	goto	l2967
u1920:
	line	202
	
l2965:	
	comf	(_TECLADO_FIL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l637
	line	203
	
l635:	
	line	204
	
l2967:	
	bcf	status, 5	;RP0=0, select bank0
	comf	(_TECLADO_FIL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l637
	
l636:	
	line	205
	
l637:	
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
;;  RS_PIN          1   14[BANK0 ] unsigned char 
;;  E_PIN           1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  config          1   20[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
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
	opt	stack 1
; Regs used in _LCD_ini: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_ini@config)
	line	80
	
l2973:	
	btfss	(LCD_ini@config),(1)&7
	goto	u1931
	goto	u1930
u1931:
	goto	l2977
u1930:
	
l2975:	
	movlw	low(0F0h)
	movwf	(_LCD_ini$410)
	movlw	high(0F0h)
	movwf	((_LCD_ini$410))+1
	goto	l748
	
l746:	
	
l2977:	
	movlw	low(0Fh)
	movwf	(_LCD_ini$410)
	movlw	high(0Fh)
	movwf	((_LCD_ini$410))+1
	
l748:	
	movf	(_LCD_ini$410),w
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
	
l2979:	
	btfss	(LCD_ini@config),(0)&7
	goto	u1941
	goto	u1940
u1941:
	goto	l750
u1940:
	
l2981:	
	movlw	high(6)
	movwf	(_LCD_BUS_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_BUS_PORT_PUNTERO)
	goto	l752
	
l750:	
	movlw	high(5)
	movwf	(_LCD_BUS_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_BUS_PORT_PUNTERO)
	
l752:	
	line	85
	btfss	(LCD_ini@config),(2)&7
	goto	u1951
	goto	u1950
u1951:
	goto	l754
u1950:
	
l2983:	
	movlw	high(6)
	movwf	(_LCD_RS_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_RS_PORT_PUNTERO)
	goto	l756
	
l754:	
	movlw	high(5)
	movwf	(_LCD_RS_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_RS_PORT_PUNTERO)
	
l756:	
	line	86
	btfss	(LCD_ini@config),(3)&7
	goto	u1961
	goto	u1960
u1961:
	goto	l758
u1960:
	
l2985:	
	movlw	high(6)
	movwf	(_LCD_E_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_E_PORT_PUNTERO)
	goto	l760
	
l758:	
	movlw	high(5)
	movwf	(_LCD_E_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_E_PORT_PUNTERO)
	
l760:	
	line	87
	btfss	(LCD_ini@config),(0)&7
	goto	u1971
	goto	u1970
u1971:
	goto	l762
u1970:
	
l2987:	
	movlw	high(134)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO+1)
	movlw	low(134)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO)
	goto	l764
	
l762:	
	movlw	high(133)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO+1)
	movlw	low(133)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO)
	
l764:	
	line	88
	btfss	(LCD_ini@config),(2)&7
	goto	u1981
	goto	u1980
u1981:
	goto	l766
u1980:
	
l2989:	
	movlw	high(134)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(134)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO)^080h
	goto	l768
	
l766:	
	movlw	high(133)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(133)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO)^080h
	
l768:	
	line	89
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(LCD_ini@config),(3)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l770
u1990:
	
l2991:	
	movlw	high(134)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_E_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(134)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO)^080h
	goto	l2993
	
l770:	
	movlw	high(133)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_E_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(133)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO)^080h
	goto	l2993
	
l772:	
	line	92
	
l2993:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_LCD_RS_PORT_PUNTERO+1),w
	skipz
	goto	u2005
	movlw	low(5)
	xorwf	(_LCD_RS_PORT_PUNTERO),w
u2005:

	skipz
	goto	u2001
	goto	u2000
u2001:
	goto	l2999
u2000:
	line	93
	
l2995:	
	movlw	(09h)
	subwf	(LCD_ini@RS_PIN),w
	skipnc
	goto	u2011
	goto	u2010
u2011:
	goto	l3003
u2010:
	line	94
	
l2997:	
	comf	(LCD_ini@RS_PIN),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l3003
	
l774:	
	line	95
	goto	l3003
	line	96
	
l773:	
	line	97
	
l2999:	
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(LCD_ini@RS_PIN),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l3003
u2020:
	line	98
	
l3001:	
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
	goto	l3003
	
l776:	
	goto	l3003
	line	99
	
l775:	
	line	101
	
l3003:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_E_PORT_PUNTERO+1),w
	skipz
	goto	u2035
	movlw	low(5)
	xorwf	(_LCD_E_PORT_PUNTERO),w
u2035:

	skipz
	goto	u2031
	goto	u2030
u2031:
	goto	l3009
u2030:
	line	102
	
l3005:	
	movlw	(09h)
	subwf	(LCD_ini@E_PIN),w
	skipnc
	goto	u2041
	goto	u2040
u2041:
	goto	l3013
u2040:
	line	103
	
l3007:	
	comf	(LCD_ini@E_PIN),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l3013
	
l778:	
	line	104
	goto	l3013
	line	105
	
l777:	
	line	106
	
l3009:	
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(LCD_ini@E_PIN),w
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l3013
u2050:
	line	107
	
l3011:	
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
	goto	l3013
	
l780:	
	goto	l3013
	line	108
	
l779:	
	line	110
	
l3013:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_BUS_PORT_PUNTERO+1),w
	skipz
	goto	u2065
	movlw	low(5)
	xorwf	(_LCD_BUS_PORT_PUNTERO),w
u2065:

	skipz
	goto	u2061
	goto	u2060
u2061:
	goto	l3019
u2060:
	
l3015:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0Fh
	skipz
	goto	u2071
	goto	u2070
u2071:
	goto	l3019
u2070:
	line	111
	
l3017:	
	comf	(_LCD_BUS_PORT_PINES),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l3025
	line	112
	
l781:	
	
l3019:	
	movlw	high(6)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_BUS_PORT_PUNTERO+1),w
	skipz
	goto	u2085
	movlw	low(6)
	xorwf	(_LCD_BUS_PORT_PUNTERO),w
u2085:

	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l3025
u2080:
	
l3021:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0F0h
	skipz
	goto	u2091
	goto	u2090
u2091:
	goto	l3025
u2090:
	line	113
	
l3023:	
	movlw	(09Fh)
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l3025
	
l783:	
	goto	l3025
	line	119
	
l782:	
	
l3025:	
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
	
l3027:	
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
	
l3029:	
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
	
l3031:	
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
	
l3033:	
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
	
l3035:	
	opt asmopt_off
movlw	20
movwf	((??_LCD_ini+0)+0+1),f
	movlw	121
movwf	((??_LCD_ini+0)+0),f
u4017:
	decfsz	((??_LCD_ini+0)+0),f
	goto	u4017
	decfsz	((??_LCD_ini+0)+0+1),f
	goto	u4017
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
	
l3037:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	128
	
l3039:	
	opt asmopt_off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_ini+0)+0+1),f
	movlw	125
movwf	((??_LCD_ini+0)+0),f
u4027:
	decfsz	((??_LCD_ini+0)+0),f
	goto	u4027
	decfsz	((??_LCD_ini+0)+0+1),f
	goto	u4027
opt asmopt_on

	line	129
	
l3041:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	130
	
l3043:	
	opt asmopt_off
movlw	36
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_ini+0)+0,f
u4037:
decfsz	(??_LCD_ini+0)+0,f
	goto	u4037
	nop
opt asmopt_on

	line	131
	
l3045:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	132
	
l3047:	
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_ini+0)+0,f
u4047:
decfsz	(??_LCD_ini+0)+0,f
	goto	u4047
	nop
opt asmopt_on

	line	133
	
l3049:	
	movlw	(02h)
	fcall	_LCD_envia_4bits
	line	135
	
l3051:	
	movlw	(03h)
	fcall	_LCD_enciende
	line	137
	
l784:	
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
;;  config          1   13[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
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
	opt	stack 1
; Regs used in _LCD_enciende: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enciende@config)
	line	198
	
l2725:	
	opt asmopt_off
movlw	7
movwf	((??_LCD_enciende+0)+0+1),f
	movlw	125
movwf	((??_LCD_enciende+0)+0),f
u4057:
	decfsz	((??_LCD_enciende+0)+0),f
	goto	u4057
	decfsz	((??_LCD_enciende+0)+0+1),f
	goto	u4057
opt asmopt_on

	goto	l2727
	line	201
	
l794:	
	
l2727:	
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
	goto	l2729
	
l795:	
	
l2729:	
	movlw	(02h)
	fcall	_LCD_envia_4bits
	
l2731:	
	movlw	(08h)
	fcall	_LCD_envia_4bits
	goto	l2733
	
l796:	
	goto	l2733
	
l797:	
	goto	l2733
	line	203
	
l798:	
	
l2733:	
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
	goto	l2735
	
l799:	
	
l2735:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2737:	
	movlw	(01h)
	fcall	_LCD_envia_4bits
	goto	l2765
	
l800:	
	goto	l2765
	
l801:	
	line	207
	goto	l2765
	line	209
	
l803:	
	goto	l2739
	
l804:	
	
l2739:	
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
	goto	l2741
	
l805:	
	
l2741:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2743:	
	movlw	(0Ch)
	fcall	_LCD_envia_4bits
	goto	l2767
	
l806:	
	goto	l2767
	
l807:	
	goto	l2767
	line	210
	
l809:	
	goto	l2745
	
l810:	
	
l2745:	
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
	goto	l2747
	
l811:	
	
l2747:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2749:	
	movlw	(0Eh)
	fcall	_LCD_envia_4bits
	goto	l2767
	
l812:	
	goto	l2767
	
l813:	
	goto	l2767
	line	211
	
l814:	
	goto	l2751
	
l815:	
	
l2751:	
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
	goto	l2753
	
l816:	
	
l2753:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2755:	
	movlw	(0Dh)
	fcall	_LCD_envia_4bits
	goto	l2767
	
l817:	
	goto	l2767
	
l818:	
	goto	l2767
	line	212
	
l819:	
	goto	l2757
	line	213
	
l820:	
	goto	l2757
	
l821:	
	
l2757:	
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
	goto	l2759
	
l822:	
	
l2759:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2761:	
	movlw	(0Fh)
	fcall	_LCD_envia_4bits
	goto	l2767
	
l823:	
	goto	l2767
	
l824:	
	goto	l2767
	line	214
	
l2763:	
	goto	l2767
	line	207
	
l802:	
	
l2765:	
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
	goto	l2739
	xorlw	1^0	; case 1
	skipnz
	goto	l2745
	xorlw	2^1	; case 2
	skipnz
	goto	l2751
	xorlw	3^2	; case 3
	skipnz
	goto	l2757
	goto	l2757
	opt asmopt_on

	line	214
	
l808:	
	goto	l2767
	line	218
	
l825:	
	
l2767:	
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
	goto	l2769
	
l826:	
	
l2769:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2771:	
	movlw	(06h)
	fcall	_LCD_envia_4bits
	goto	l2773
	
l827:	
	goto	l2773
	
l828:	
	line	220
	
l2773:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_LCD_var_cursor)
	line	221
	
l829:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 4
; Regs used in _init_Timer2: [wreg+status,2]
	line	94
	
l3161:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(23)	;volatile
	line	102
	
l3163:	
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	103
	
l3165:	
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	107
	
l3167:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	109
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	110
	
l3169:	
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	111
	
l578:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 4
; Regs used in _init_Timer1: [status,2]
	line	76
	
l3151:	
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
	
l3153:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	84
	
l3155:	
	bcf	(96/8),(96)&7	;volatile
	line	85
	
l3157:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	87
	
l3159:	
	bcf	(94/8),(94)&7	;volatile
	line	88
	
l575:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 4
; Regs used in _init_Timer0: [wreg]
	line	56
	
l3147:	
	movlw	(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	68
	
l3149:	
	bsf	(93/8),(93)&7	;volatile
	line	69
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	70
	
l572:	
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
;; Hardware stack levels required when called:    3
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
	opt	stack 4
; Regs used in _init_ADC: [wreg]
	line	119
	
l3171:	
	movlw	(073h)
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
u4067:
decfsz	(??_init_ADC+0)+0,f
	goto	u4067
	nop2	;nop
opt asmopt_on

	line	139
	
l581:	
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
	global	_esperaKp
	global	_esperaSegundoValor
	global	_esperaTercerValor
	global	_esperaAlmohadillaValor
	global	_esperaKi
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
;; Hardware stack levels required when called:    4
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
	opt	stack 3
; Regs used in _esperaSoltarTecla: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	47
	
l3589:	
	fcall	_TECLADO_pulsado
	iorlw	0
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l429
u2990:
	line	49
	
l3591:	
	movlw	((fp__esperaPulsarTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSoltarTecla+0)+0
	movf	(??_esperaSoltarTecla+0)+0,w
	movwf	(_estado)
	goto	l429
	line	50
	
l428:	
	line	51
	
l429:	
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
;; Hardware stack levels required when called:    4
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
	opt	stack 3
; Regs used in _esperaPulsarTecla: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	34
	
l3583:	
	fcall	_TECLADO_leer
	xorlw	0
	skipnz
	goto	u2981
	goto	u2980
u2981:
	goto	l425
u2980:
	line	36
	
l3585:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TECLADO_dato),w
	movwf	(??_esperaPulsarTecla+0)+0
	movf	(??_esperaPulsarTecla+0)+0,w
	movwf	(_tecla)
	line	37
	
l3587:	
	clrf	(_nuevaTecla)
	incf	(_nuevaTecla),f
	line	38
	movlw	((fp__esperaSoltarTecla-fpbase))&0ffh
	movwf	(??_esperaPulsarTecla+0)+0
	movf	(??_esperaPulsarTecla+0)+0,w
	movwf	(_estado)
	goto	l425
	line	39
	
l424:	
	line	40
	
l425:	
	return
	opt stack 0
GLOBAL	__end_of_esperaPulsarTecla
	__end_of_esperaPulsarTecla:
	signat	_esperaPulsarTecla,88

;; *************** function _esperaKi *****************
;; Defined at:
;;		line 242 in file "procesoSecuencia.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_esperaKp
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"procesoSecuencia.c"
	line	242
global __ptext19
__ptext19:	;psect for function _esperaKi
psect	text19
	file	"procesoSecuencia.c"
	line	242
	global	__size_of_esperaKi
	__size_of_esperaKi	equ	__end_of_esperaKi-_esperaKi
	
_esperaKi:	
;incstack = 0
	opt	stack 4
; Regs used in _esperaKi: [wreg+status,2]
	line	244
	
l4249:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l402
u3960:
	line	246
	
l4251:	
	clrf	(_nuevaTecla)
	line	247
	
l4253:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3971
	goto	u3970
u3971:
	goto	l4257
u3970:
	line	249
	
l4255:	
	movf	(_tecla),w
	movwf	(??_esperaKi+0)+0
	clrf	(??_esperaKi+0)+0+1
	movf	0+(??_esperaKi+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Ki)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_esperaKi+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Ki+1)^080h
	line	250
	movlw	((fp__esperaAlmohadillaValor-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaKi+0)+0
	movf	(??_esperaKi+0)+0,w
	movwf	(0+_estado+01h)
	line	251
	goto	l402
	line	252
	
l400:	
	line	254
	
l4257:	
	movlw	((fp__esperaKi-fpbase))&0ffh
	movwf	(??_esperaKi+0)+0
	movf	(??_esperaKi+0)+0,w
	movwf	(0+_estado+01h)
	goto	l402
	line	255
	
l401:	
	goto	l402
	line	256
	
l399:	
	line	257
	
l402:	
	return
	opt stack 0
GLOBAL	__end_of_esperaKi
	__end_of_esperaKi:
	signat	_esperaKi,88

;; *************** function _esperaAlmohadillaValor *****************
;; Defined at:
;;		line 207 in file "procesoSecuencia.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_mensaje_opciones_inicial
;; This function is called by:
;;		_esperaTercerValor
;;		_esperaKi
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	207
global __ptext20
__ptext20:	;psect for function _esperaAlmohadillaValor
psect	text20
	file	"procesoSecuencia.c"
	line	207
	global	__size_of_esperaAlmohadillaValor
	__size_of_esperaAlmohadillaValor	equ	__end_of_esperaAlmohadillaValor-_esperaAlmohadillaValor
	
_esperaAlmohadillaValor:	
;incstack = 0
	opt	stack 1
; Regs used in _esperaAlmohadillaValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	209
	
l4227:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l390
u3920:
	line	211
	
l4229:	
	clrf	(_nuevaTecla)
	line	212
	
l4231:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l390
u3930:
	line	214
	
l4233:	
	movf	(_valor+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_num_pulsos_ref+1)^080h
	addwf	(_num_pulsos_ref+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_valor),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_num_pulsos_ref)^080h
	addwf	(_num_pulsos_ref)^080h

	line	215
	
l4235:	
	fcall	_LCD_mensaje_opciones_inicial
	line	216
	
l4237:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaAlmohadillaValor+0)+0
	movf	(??_esperaAlmohadillaValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l390
	line	217
	
l389:	
	goto	l390
	line	218
	
l388:	
	line	219
	
l390:	
	return
	opt stack 0
GLOBAL	__end_of_esperaAlmohadillaValor
	__end_of_esperaAlmohadillaValor:
	signat	_esperaAlmohadillaValor,88

;; *************** function _esperaTercerValor *****************
;; Defined at:
;;		line 183 in file "procesoSecuencia.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_envia_4bits
;;		_LCD_mensaje_opciones_inicial
;;		___wmul
;; This function is called by:
;;		_esperaSegundoValor
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	183
global __ptext21
__ptext21:	;psect for function _esperaTercerValor
psect	text21
	file	"procesoSecuencia.c"
	line	183
	global	__size_of_esperaTercerValor
	__size_of_esperaTercerValor	equ	__end_of_esperaTercerValor-_esperaTercerValor
	
_esperaTercerValor:	
;incstack = 0
	opt	stack 1
; Regs used in _esperaTercerValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	185
	
l4161:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l385
u3830:
	line	187
	
l4163:	
	clrf	(_nuevaTecla)
	line	188
	
l4165:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l4173
u3840:
	line	190
	
l4167:	
	movf	(_valor+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_num_pulsos_ref+1)^080h
	addwf	(_num_pulsos_ref+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_valor),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_num_pulsos_ref)^080h
	addwf	(_num_pulsos_ref)^080h

	line	191
	
l4169:	
	fcall	_LCD_mensaje_opciones_inicial
	line	192
	
l4171:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(0+_estado+01h)
	line	193
	goto	l385
	line	194
	
l345:	
	
l4173:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l385
u3850:
	line	196
	
l4175:	
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
	goto	l4177
	line	197
	
l348:	
	
l4177:	
	movlw	low(040h)
	movwf	(_esperaTercerValor$207)
	movlw	high(040h)
	movwf	((_esperaTercerValor$207))+1
	goto	l4181
	
l350:	
	
l4179:	
	clrf	(_esperaTercerValor$207)
	clrf	(_esperaTercerValor$207+1)
	goto	l4181
	
l352:	
	
l4181:	
	movf	(_esperaTercerValor$207),w
	iorlw	0Dh
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4183
	
l353:	
	
l4183:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l4185
	
l354:	
	
l4185:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaTercerValor+0)+0
	movlw	04h
	movwf	btemp+1
u3865:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3865
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4187:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4189
	
l355:	
	goto	l4189
	
l356:	
	goto	l4189
	
l357:	
	goto	l4189
	line	198
	
l358:	
	
l4189:	
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
	goto	l4191
	
l359:	
	
l4191:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaTercerValor+0)+0)+1
	movlw	04h
	movwf	btemp+1
u3875:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3875
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4193:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4195
	
l360:	
	
l4195:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l4225
u3880:
	
l4197:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l4211
u3890:
	goto	l4201
	
l363:	
	goto	l4201
	
l4199:	
	movlw	low(040h)
	movwf	(_esperaTercerValor$208)
	movlw	high(040h)
	movwf	((_esperaTercerValor$208))+1
	goto	l4203
	
l365:	
	
l4201:	
	clrf	(_esperaTercerValor$208)
	clrf	(_esperaTercerValor$208+1)
	goto	l4203
	
l367:	
	
l4203:	
	movf	(_esperaTercerValor$208),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4205
	
l368:	
	
l4205:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l4207
	
l369:	
	
l4207:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaTercerValor+0)+0
	movlw	04h
	movwf	btemp+1
u3905:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3905
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4209:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4223
	
l370:	
	goto	l4223
	
l371:	
	goto	l4223
	
l372:	
	goto	l4223
	
l362:	
	goto	l4211
	
l374:	
	
l4211:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaTercerValor$209)
	movlw	high(040h)
	movwf	((_esperaTercerValor$209))+1
	goto	l4215
	
l376:	
	
l4213:	
	clrf	(_esperaTercerValor$209)
	clrf	(_esperaTercerValor$209+1)
	goto	l4215
	
l378:	
	
l4215:	
	movf	(_esperaTercerValor$209),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4217
	
l379:	
	
l4217:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l4219
	
l380:	
	
l4219:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaTercerValor+0)+0
	movlw	04h
	movwf	btemp+1
u3915:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3915
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4221:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4223
	
l381:	
	goto	l4223
	
l382:	
	goto	l4223
	
l383:	
	goto	l4223
	
l373:	
	
l4223:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l4225
	
l361:	
	goto	l4225
	
l384:	
	line	199
	
l4225:	
	movlw	((fp__esperaAlmohadillaValor-fpbase))&0ffh
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l385
	line	200
	
l347:	
	goto	l385
	line	201
	
l346:	
	goto	l385
	
l344:	
	line	202
	
l385:	
	return
	opt stack 0
GLOBAL	__end_of_esperaTercerValor
	__end_of_esperaTercerValor:
	signat	_esperaTercerValor,88

;; *************** function _esperaSegundoValor *****************
;; Defined at:
;;		line 159 in file "procesoSecuencia.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_envia_4bits
;;		_LCD_mensaje_opciones_inicial
;;		___wmul
;; This function is called by:
;;		_esperaPrimerValor
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	159
global __ptext22
__ptext22:	;psect for function _esperaSegundoValor
psect	text22
	file	"procesoSecuencia.c"
	line	159
	global	__size_of_esperaSegundoValor
	__size_of_esperaSegundoValor	equ	__end_of_esperaSegundoValor-_esperaSegundoValor
	
_esperaSegundoValor:	
;incstack = 0
	opt	stack 1
; Regs used in _esperaSegundoValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	161
	
l4095:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l341
u3740:
	line	163
	
l4097:	
	clrf	(_nuevaTecla)
	line	164
	
l4099:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l4107
u3750:
	line	166
	
l4101:	
	movf	(_valor+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_num_pulsos_ref+1)^080h
	addwf	(_num_pulsos_ref+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_valor),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_num_pulsos_ref)^080h
	addwf	(_num_pulsos_ref)^080h

	line	167
	
l4103:	
	fcall	_LCD_mensaje_opciones_inicial
	line	168
	
l4105:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(0+_estado+01h)
	line	169
	goto	l341
	line	170
	
l301:	
	
l4107:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3761
	goto	u3760
u3761:
	goto	l341
u3760:
	line	172
	
l4109:	
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
	goto	l4111
	line	173
	
l304:	
	
l4111:	
	movlw	low(040h)
	movwf	(_esperaSegundoValor$203)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$203))+1
	goto	l4115
	
l306:	
	
l4113:	
	clrf	(_esperaSegundoValor$203)
	clrf	(_esperaSegundoValor$203+1)
	goto	l4115
	
l308:	
	
l4115:	
	movf	(_esperaSegundoValor$203),w
	iorlw	0Ch
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4117
	
l309:	
	
l4117:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l4119
	
l310:	
	
l4119:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaSegundoValor+0)+0
	movlw	04h
	movwf	btemp+1
u3775:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3775
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4121:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4123
	
l311:	
	goto	l4123
	
l312:	
	goto	l4123
	
l313:	
	goto	l4123
	line	174
	
l314:	
	
l4123:	
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
	goto	l4125
	
l315:	
	
l4125:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaSegundoValor+0)+0)+1
	movlw	04h
	movwf	btemp+1
u3785:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3785
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4127:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4129
	
l316:	
	
l4129:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u3791
	goto	u3790
u3791:
	goto	l4159
u3790:
	
l4131:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l4145
u3800:
	goto	l4135
	
l319:	
	goto	l4135
	
l4133:	
	movlw	low(040h)
	movwf	(_esperaSegundoValor$204)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$204))+1
	goto	l4137
	
l321:	
	
l4135:	
	clrf	(_esperaSegundoValor$204)
	clrf	(_esperaSegundoValor$204+1)
	goto	l4137
	
l323:	
	
l4137:	
	movf	(_esperaSegundoValor$204),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4139
	
l324:	
	
l4139:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l4141
	
l325:	
	
l4141:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaSegundoValor+0)+0
	movlw	04h
	movwf	btemp+1
u3815:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3815
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4143:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4157
	
l326:	
	goto	l4157
	
l327:	
	goto	l4157
	
l328:	
	goto	l4157
	
l318:	
	goto	l4145
	
l330:	
	
l4145:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaSegundoValor$205)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$205))+1
	goto	l4149
	
l332:	
	
l4147:	
	clrf	(_esperaSegundoValor$205)
	clrf	(_esperaSegundoValor$205+1)
	goto	l4149
	
l334:	
	
l4149:	
	movf	(_esperaSegundoValor$205),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4151
	
l335:	
	
l4151:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l4153
	
l336:	
	
l4153:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaSegundoValor+0)+0
	movlw	04h
	movwf	btemp+1
u3825:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3825
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4155:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4157
	
l337:	
	goto	l4157
	
l338:	
	goto	l4157
	
l339:	
	goto	l4157
	
l329:	
	
l4157:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l4159
	
l317:	
	goto	l4159
	
l340:	
	line	175
	
l4159:	
	movlw	((fp__esperaTercerValor-fpbase))&0ffh
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l341
	line	176
	
l303:	
	goto	l341
	line	177
	
l302:	
	goto	l341
	
l300:	
	line	178
	
l341:	
	return
	opt stack 0
GLOBAL	__end_of_esperaSegundoValor
	__end_of_esperaSegundoValor:
	signat	_esperaSegundoValor,88

;; *************** function _esperaKp *****************
;; Defined at:
;;		line 223 in file "procesoSecuencia.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_espera01Almohadilla
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	223
global __ptext23
__ptext23:	;psect for function _esperaKp
psect	text23
	file	"procesoSecuencia.c"
	line	223
	global	__size_of_esperaKp
	__size_of_esperaKp	equ	__end_of_esperaKp-_esperaKp
	
_esperaKp:	
;incstack = 0
	opt	stack 4
; Regs used in _esperaKp: [wreg+status,2]
	line	225
	
l4239:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l396
u3940:
	line	227
	
l4241:	
	clrf	(_nuevaTecla)
	line	228
	
l4243:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l4247
u3950:
	line	230
	
l4245:	
	movf	(_tecla),w
	movwf	(??_esperaKp+0)+0
	clrf	(??_esperaKp+0)+0+1
	movf	0+(??_esperaKp+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Kp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_esperaKp+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Kp+1)^080h
	line	231
	movlw	((fp__esperaKi-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaKp+0)+0
	movf	(??_esperaKp+0)+0,w
	movwf	(0+_estado+01h)
	line	232
	goto	l396
	line	233
	
l394:	
	line	235
	
l4247:	
	movlw	((fp__esperaKp-fpbase))&0ffh
	movwf	(??_esperaKp+0)+0
	movf	(??_esperaKp+0)+0,w
	movwf	(0+_estado+01h)
	goto	l396
	line	236
	
l395:	
	goto	l396
	line	237
	
l393:	
	line	238
	
l396:	
	return
	opt stack 0
GLOBAL	__end_of_esperaKp
	__end_of_esperaKp:
	signat	_esperaKp,88

;; *************** function _espera01Almohadilla *****************
;; Defined at:
;;		line 92 in file "procesoSecuencia.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_mensaje_opciones2
;;		_LCD_mensaje_opciones_inicial
;; This function is called by:
;;		_esperaPrimeraTecla
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	92
global __ptext24
__ptext24:	;psect for function _espera01Almohadilla
psect	text24
	file	"procesoSecuencia.c"
	line	92
	global	__size_of_espera01Almohadilla
	__size_of_espera01Almohadilla	equ	__end_of_espera01Almohadilla-_espera01Almohadilla
	
_espera01Almohadilla:	
;incstack = 0
	opt	stack 1
; Regs used in _espera01Almohadilla: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	94
	
l4001:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l255
u3590:
	line	96
	
l4003:	
	clrf	(_nuevaTecla)
	line	97
	
l4005:	
	movf	(_tecla),f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l4011
u3600:
	line	99
	
l4007:	
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
	line	100
	
l4009:	
	fcall	_LCD_mensaje_opciones2
	line	101
	goto	l255
	line	102
	
l244:	
	
l4011:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	xorlw	01h
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l4017
u3610:
	line	104
	
l4013:	
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
	line	105
	
l4015:	
	fcall	_LCD_mensaje_opciones2
	line	106
	goto	l255
	line	107
	
l246:	
	
l4017:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	xorlw	02h
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l4021
u3620:
	line	109
	
l4019:	
	movlw	((fp__esperaKp-fpbase))&0ffh
	movwf	(??_espera01Almohadilla+0)+0
	movf	(??_espera01Almohadilla+0)+0,w
	movwf	(0+_estado+01h)
	line	110
	goto	l255
	line	111
	
l248:	
	
l4021:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l255
u3630:
	line	113
	
l4023:	
	movf	(_start+1),w
	iorwf	(_start),w
	skipnz
	goto	u3641
	goto	u3640
u3641:
	goto	l4027
u3640:
	line	115
	
l4025:	
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	116
	goto	l4031
	line	117
	
l251:	
	line	119
	
l4027:	
	clrf	(23)	;volatile
	line	120
	
l4029:	
	bcf	(51/8),(51)&7	;volatile
	goto	l4031
	line	121
	
l252:	
	line	122
	
l4031:	
	movf	(_sentido+1),w
	iorwf	(_sentido),w
	skipnz
	goto	u3651
	goto	u3650
u3651:
	goto	l253
u3650:
	line	124
	
l4033:	
	bsf	(52/8),(52)&7	;volatile
	line	125
	bcf	(53/8),(53)&7	;volatile
	line	126
	goto	l4035
	line	127
	
l253:	
	line	129
	bcf	(52/8),(52)&7	;volatile
	line	130
	bsf	(53/8),(53)&7	;volatile
	goto	l4035
	line	131
	
l254:	
	line	132
	
l4035:	
	fcall	_LCD_mensaje_opciones_inicial
	line	133
	
l4037:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_espera01Almohadilla+0)+0
	movf	(??_espera01Almohadilla+0)+0,w
	movwf	(0+_estado+01h)
	goto	l255
	line	134
	
l250:	
	goto	l255
	line	135
	
l249:	
	goto	l255
	
l247:	
	goto	l255
	
l245:	
	goto	l255
	
l243:	
	line	136
	
l255:	
	return
	opt stack 0
GLOBAL	__end_of_espera01Almohadilla
	__end_of_espera01Almohadilla:
	signat	_espera01Almohadilla,88

;; *************** function _esperaPrimerValor *****************
;; Defined at:
;;		line 141 in file "procesoSecuencia.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_envia_4bits
;; This function is called by:
;;		_esperaPrimeraTecla
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	141
global __ptext25
__ptext25:	;psect for function _esperaPrimerValor
psect	text25
	file	"procesoSecuencia.c"
	line	141
	global	__size_of_esperaPrimerValor
	__size_of_esperaPrimerValor	equ	__end_of_esperaPrimerValor-_esperaPrimerValor
	
_esperaPrimerValor:	
;incstack = 0
	opt	stack 3
; Regs used in _esperaPrimerValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	143
	
l4039:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l297
u3660:
	line	145
	
l4041:	
	clrf	(_nuevaTecla)
	line	146
	
l4043:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l297
u3670:
	line	148
	
l4045:	
	movf	(_tecla),w
	movwf	(??_esperaPrimerValor+0)+0
	clrf	(??_esperaPrimerValor+0)+0+1
	movf	0+(??_esperaPrimerValor+0)+0,w
	movwf	(_valor)
	movf	1+(??_esperaPrimerValor+0)+0,w
	movwf	(_valor+1)
	line	149
	
l260:	
	movlw	low(040h)
	movwf	(_esperaPrimerValor$199)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$199))+1
	goto	l4049
	
l262:	
	
l4047:	
	clrf	(_esperaPrimerValor$199)
	clrf	(_esperaPrimerValor$199+1)
	goto	l4049
	
l264:	
	
l4049:	
	movf	(_esperaPrimerValor$199),w
	iorlw	0Bh
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4051
	
l265:	
	
l4051:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l4053
	
l266:	
	
l4053:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimerValor+0)+0
	movlw	04h
	movwf	btemp+1
u3685:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3685
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4055:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4057
	
l267:	
	goto	l4057
	
l268:	
	goto	l4057
	
l269:	
	goto	l4057
	line	150
	
l270:	
	
l4057:	
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
	goto	l4059
	
l271:	
	
l4059:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaPrimerValor+0)+0)+1
	movlw	04h
	movwf	btemp+1
u3695:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3695
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4061:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4063
	
l272:	
	
l4063:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l4093
u3700:
	
l4065:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l4079
u3710:
	goto	l4069
	
l275:	
	goto	l4069
	
l4067:	
	movlw	low(040h)
	movwf	(_esperaPrimerValor$200)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$200))+1
	goto	l4071
	
l277:	
	
l4069:	
	clrf	(_esperaPrimerValor$200)
	clrf	(_esperaPrimerValor$200+1)
	goto	l4071
	
l279:	
	
l4071:	
	movf	(_esperaPrimerValor$200),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4073
	
l280:	
	
l4073:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l4075
	
l281:	
	
l4075:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimerValor+0)+0
	movlw	04h
	movwf	btemp+1
u3725:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3725
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4077:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4091
	
l282:	
	goto	l4091
	
l283:	
	goto	l4091
	
l284:	
	goto	l4091
	
l274:	
	goto	l4079
	
l286:	
	
l4079:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaPrimerValor$201)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$201))+1
	goto	l4083
	
l288:	
	
l4081:	
	clrf	(_esperaPrimerValor$201)
	clrf	(_esperaPrimerValor$201+1)
	goto	l4083
	
l290:	
	
l4083:	
	movf	(_esperaPrimerValor$201),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l4085
	
l291:	
	
l4085:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l4087
	
l292:	
	
l4087:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimerValor+0)+0
	movlw	04h
	movwf	btemp+1
u3735:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u3735
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4089:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4091
	
l293:	
	goto	l4091
	
l294:	
	goto	l4091
	
l295:	
	goto	l4091
	
l285:	
	
l4091:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l4093
	
l273:	
	goto	l4093
	
l296:	
	line	151
	
l4093:	
	movlw	((fp__esperaSegundoValor-fpbase))&0ffh
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l297
	line	152
	
l259:	
	goto	l297
	line	153
	
l258:	
	line	154
	
l297:	
	return
	opt stack 0
GLOBAL	__end_of_esperaPrimerValor
	__end_of_esperaPrimerValor:
	signat	_esperaPrimerValor,88

;; *************** function _esperaPrimeraTecla *****************
;; Defined at:
;;		line 71 in file "procesoSecuencia.c"
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
;; Hardware stack levels required when called:    6
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
psect	text26,local,class=CODE,delta=2,merge=1
	line	71
global __ptext26
__ptext26:	;psect for function _esperaPrimeraTecla
psect	text26
	file	"procesoSecuencia.c"
	line	71
	global	__size_of_esperaPrimeraTecla
	__size_of_esperaPrimeraTecla	equ	__end_of_esperaPrimeraTecla-_esperaPrimeraTecla
	
_esperaPrimeraTecla:	
;incstack = 0
	opt	stack 1
; Regs used in _esperaPrimeraTecla: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	73
	
l3973:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l240
u3550:
	line	75
	
l3975:	
	clrf	(_nuevaTecla)
	line	76
	
l3977:	
	movf	(_tecla),w
	xorlw	0Ah
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l3995
u3560:
	goto	l3979
	line	78
	
l228:	
	
l3979:	
	movlw	low(040h)
	movwf	(_esperaPrimeraTecla$195)
	movlw	high(040h)
	movwf	((_esperaPrimeraTecla$195))+1
	goto	l3983
	
l230:	
	
l3981:	
	clrf	(_esperaPrimeraTecla$195)
	clrf	(_esperaPrimeraTecla$195+1)
	goto	l3983
	
l232:	
	
l3983:	
	movf	(_esperaPrimeraTecla$195),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3985
	
l233:	
	
l3985:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimeraTecla+0)+0,w
	andwf	indf,f
	goto	l3987
	
l234:	
	
l3987:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimeraTecla+0)+0
	movlw	04h
	movwf	btemp+1
u3575:
	rlf	(??_esperaPrimeraTecla+0)+1,w
	rrf	(??_esperaPrimeraTecla+0)+1,f
	rrf	(??_esperaPrimeraTecla+0)+0,f
	decfsz	btemp+1,f
	goto	u3575
	movf	0+(??_esperaPrimeraTecla+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3989:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3991
	
l235:	
	goto	l3991
	
l236:	
	goto	l3991
	
l237:	
	line	79
	
l3991:	
	movlw	low((STR_8-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	80
	
l3993:	
	movlw	((fp__esperaPrimerValor-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(0+_estado+01h)
	line	81
	goto	l240
	line	82
	
l227:	
	
l3995:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l240
u3580:
	line	84
	
l3997:	
	fcall	_LCD_mensaje_opciones2
	line	85
	
l3999:	
	movlw	((fp__espera01Almohadilla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(0+_estado+01h)
	goto	l240
	line	86
	
l239:	
	goto	l240
	line	87
	
l238:	
	goto	l240
	
l226:	
	line	88
	
l240:	
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_estado100
;;		_estado50
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"procesoHisteresis.c"
	line	71
global __ptext27
__ptext27:	;psect for function _estado10
psect	text27
	file	"procesoHisteresis.c"
	line	71
	global	__size_of_estado10
	__size_of_estado10	equ	__end_of_estado10-_estado10
	
_estado10:	
;incstack = 0
	opt	stack 4
; Regs used in _estado10: [wreg+btemp+1]
	line	74
	
l3277:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0199h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(0199h)
	subwf	(_ADC_resultado),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l3281
u2500:
	line	76
	
l3279:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado10+0)+0
	movf	(??_estado10+0)+0,w
	movwf	(0+_estado+02h)
	line	77
	movlw	low(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_max_duty)^080h
	movlw	high(019h)
	movwf	((_max_duty)^080h)+1
	line	78
	goto	l114
	
l112:	
	line	80
	
l3281:	
	movlw	((fp__estado50-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado10+0)+0
	movf	(??_estado10+0)+0,w
	movwf	(0+_estado+02h)
	line	81
	movlw	low(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_max_duty)^080h
	movlw	high(07Dh)
	movwf	((_max_duty)^080h)+1
	goto	l114
	line	82
	
l113:	
	line	83
	
l114:	
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_procesoHisteresis
;;		_estado50
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	60
global __ptext28
__ptext28:	;psect for function _estado100
psect	text28
	file	"procesoHisteresis.c"
	line	60
	global	__size_of_estado100
	__size_of_estado100	equ	__end_of_estado100-_estado100
	
_estado100:	
;incstack = 0
	opt	stack 4
; Regs used in _estado100: [wreg+btemp+1]
	line	62
	
l3271:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0333h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2495
	movlw	low(0333h)
	subwf	(_ADC_resultado),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l3275
u2490:
	line	63
	
l3273:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado100+0)+0
	movf	(??_estado100+0)+0,w
	movwf	(0+_estado+02h)
	line	64
	movlw	low(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_max_duty)^080h
	movlw	high(019h)
	movwf	((_max_duty)^080h)+1
	line	65
	goto	l109
	
l107:	
	line	66
	
l3275:	
	movlw	((fp__estado100-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado100+0)+0
	movf	(??_estado100+0)+0,w
	movwf	(0+_estado+02h)
	line	67
	movlw	low(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_max_duty)^080h
	movlw	high(0F9h)
	movwf	((_max_duty)^080h)+1
	goto	l109
	line	68
	
l108:	
	line	69
	
l109:	
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_estado10
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	line	86
global __ptext29
__ptext29:	;psect for function _estado50
psect	text29
	file	"procesoHisteresis.c"
	line	86
	global	__size_of_estado50
	__size_of_estado50	equ	__end_of_estado50-_estado50
	
_estado50:	
;incstack = 0
	opt	stack 4
; Regs used in _estado50: [wreg+btemp+1]
	line	92
	
l3283:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2515
	movlw	low(0F5h)
	subwf	(_ADC_resultado),w
u2515:

	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l3287
u2510:
	
l3285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(023Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2525
	movlw	low(023Eh)
	subwf	(_ADC_resultado),w
u2525:

	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l3289
u2520:
	goto	l3287
	
l119:	
	line	94
	
l3287:	
	movlw	((fp__estado50-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado50+0)+0
	movf	(??_estado50+0)+0,w
	movwf	(0+_estado+02h)
	line	95
	movlw	low(07Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_max_duty)^080h
	movlw	high(07Dh)
	movwf	((_max_duty)^080h)+1
	goto	l3289
	line	96
	
l117:	
	line	97
	
l3289:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(023Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2535
	movlw	low(023Eh)
	subwf	(_ADC_resultado),w
u2535:

	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l3293
u2530:
	line	99
	
l3291:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado50+0)+0
	movf	(??_estado50+0)+0,w
	movwf	(0+_estado+02h)
	line	100
	movlw	low(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_max_duty)^080h
	movlw	high(019h)
	movwf	((_max_duty)^080h)+1
	goto	l3293
	line	101
	
l120:	
	line	102
	
l3293:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2545
	movlw	low(0F5h)
	subwf	(_ADC_resultado),w
u2545:

	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l122
u2540:
	line	104
	
l3295:	
	movlw	((fp__estado100-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_estado50+0)+0
	movf	(??_estado50+0)+0,w
	movwf	(0+_estado+02h)
	line	105
	movlw	low(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_max_duty)^080h
	movlw	high(0F9h)
	movwf	((_max_duty)^080h)+1
	goto	l122
	line	106
	
l121:	
	line	108
	
l122:	
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_esperaSoltarTecla
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"TECLADO.c"
	line	210
global __ptext30
__ptext30:	;psect for function _TECLADO_pulsado
psect	text30
	file	"TECLADO.c"
	line	210
	global	__size_of_TECLADO_pulsado
	__size_of_TECLADO_pulsado	equ	__end_of_TECLADO_pulsado-_TECLADO_pulsado
	
_TECLADO_pulsado:	
;incstack = 0
	opt	stack 3
; Regs used in _TECLADO_pulsado: [wreg-fsr0h+status,2+status,0]
	line	215
	
l2913:	
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
	
l2915:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1851
	goto	u1850
u1851:
	goto	l2919
u1850:
	
l2917:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	0+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2921
	
l640:	
	
l2919:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	0+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2921
	
l641:	
	line	219
	
l2921:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_pulsado+0)+0,w
	skipz
	goto	u1865
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_pulsado+0)+0,w
u1865:

	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l642
u1860:
	line	221
	
l2923:	
	bcf	(_TECLADO_banderas),6
	line	222
	
l2925:	
	movlw	(0)
	goto	l643
	
l2927:	
	goto	l643
	line	223
	
l642:	
	line	225
	bsf	(_TECLADO_banderas),6
	line	226
	
l2929:	
	movlw	(01h)
	goto	l643
	
l2931:	
	line	227
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_TECLADO_pulsado
	__end_of_TECLADO_pulsado:
	signat	_TECLADO_pulsado,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "c:\sed_tools\xc8\sources\common\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    6[BANK0 ] unsigned int 
;;  multiplicand    2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   10[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_esperaSegundoValor
;;		_esperaTercerValor
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"c:\sed_tools\xc8\sources\common\wmul.c"
	line	3
global __ptext31
__ptext31:	;psect for function ___wmul
psect	text31
	file	"c:\sed_tools\xc8\sources\common\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	31
	
l3871:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3873
	line	32
	
l1370:	
	line	33
	
l3873:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l1371
u3360:
	line	34
	
l3875:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1371:	
	line	35
	movlw	01h
	
u3375:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3375
	line	36
	
l3877:	
	movlw	01h
	
u3385:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3385
	line	37
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l3873
u3390:
	goto	l3879
	
l1372:	
	line	40
	
l3879:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1373
	
l3881:	
	line	41
	
l1373:	
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
;;  bit_a_testea    2    9[BANK0 ] unsigned short 
;;  i               1    8[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_esperaPulsarTecla
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"TECLADO.c"
	line	237
global __ptext32
__ptext32:	;psect for function _TECLADO_leer
psect	text32
	file	"TECLADO.c"
	line	237
	global	__size_of_TECLADO_leer
	__size_of_TECLADO_leer	equ	__end_of_TECLADO_leer-_TECLADO_leer
	
_TECLADO_leer:	
;incstack = 0
	opt	stack 3
; Regs used in _TECLADO_leer: [wreg-fsr0h+status,2+status,0+pclath]
	line	242
	
l2813:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TECLADO_dato)
	line	243
	
l2815:	
	bcf	(_TECLADO_banderas),7
	line	244
	
l2817:	
	bcf	(_TECLADO_banderas),6
	line	252
	
l2819:	
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
	
l2821:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1731
	goto	u1730
u1731:
	goto	l2825
u1730:
	
l2823:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2827
	
l646:	
	
l2825:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2827
	
l647:	
	line	254
	
l2827:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_leer+0)+0,w
	skipz
	goto	u1745
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_leer+0)+0,w
u1745:

	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l648
u1740:
	line	256
	
l2829:	
	bcf	(_TECLADO_banderas),6
	line	257
	
l2831:	
	movlw	(0)
	goto	l649
	
l2833:	
	goto	l649
	line	258
	
l648:	
	line	260
	bsf	(_TECLADO_banderas),6
	line	271
	goto	l2845
	line	273
	
l651:	
	
l2835:	
	movlw	low(0FEh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FEh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2847
	line	274
	
l653:	
	
l2837:	
	movlw	low(0FBh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FBh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2847
	line	275
	
l654:	
	
l2839:	
	movlw	low(0EFh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0EFh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2847
	line	276
	
l655:	
	
l2841:	
	movlw	low(0FFh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FFh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2847
	line	277
	
l2843:	
	goto	l2847
	line	271
	
l650:	
	
l2845:	
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
	goto	l2835
	xorlw	60^15	; case 60
	skipnz
	goto	l2837
	xorlw	240^60	; case 240
	skipnz
	goto	l2839
	goto	l2841
	opt asmopt_on

	line	277
	
l652:	
	line	282
	
l2847:	
	clrf	(TECLADO_leer@i)
	
l2849:	
	movlw	(04h)
	subwf	(TECLADO_leer@i),w
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l2853
u1750:
	goto	l2903
	
l2851:	
	goto	l2903
	line	283
	
l656:	
	line	285
	
l2853:	
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
	
l2855:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1761
	goto	u1760
u1761:
	goto	l2859
u1760:
	
l2857:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2861
	
l658:	
	
l2859:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2861
	
l659:	
	line	289
	
l2861:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_leer+0)+0,w
	skipz
	goto	u1775
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_leer+0)+0,w
u1775:

	skipnz
	goto	u1771
	goto	u1770
u1771:
	goto	l2865
u1770:
	goto	l2903
	line	290
	
l2863:	
	goto	l2903
	
l660:	
	line	295
	
l2865:	
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
	
l2867:	
	movlw	(04h)
	subwf	(TECLADO_leer@i),w
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l2853
u1780:
	goto	l2903
	
l657:	
	line	306
	goto	l2903
	line	311
	
l662:	
	line	312
	
l2869:	
	movlw	06h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l2873
u1790:
	goto	l2905
	
l2871:	
	goto	l2905
	line	313
	
l663:	
	
l2873:	
	movlw	05h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l2877
u1800:
	
l2875:	
	movlw	(01h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2905
	line	314
	
l665:	
	
l2877:	
	movlw	03h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1811
	goto	u1810
u1811:
	goto	l2881
u1810:
	
l2879:	
	movlw	(02h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2905
	line	315
	
l667:	
	
l2881:	
	movlw	(0)
	goto	l649
	
l2883:	
	goto	l649
	
l668:	
	goto	l2905
	
l666:	
	goto	l2905
	
l664:	
	line	316
	goto	l2905
	line	317
	
l670:	
	line	318
	
l2885:	
	movlw	0C0h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1821
	goto	u1820
u1821:
	goto	l2889
u1820:
	goto	l2905
	
l2887:	
	goto	l2905
	line	319
	
l671:	
	
l2889:	
	movlw	0A0h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l2893
u1830:
	
l2891:	
	movlw	(01h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2905
	line	320
	
l673:	
	
l2893:	
	movlw	060h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1841
	goto	u1840
u1841:
	goto	l2897
u1840:
	
l2895:	
	movlw	(02h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2905
	line	321
	
l675:	
	
l2897:	
	movlw	(0)
	goto	l649
	
l2899:	
	goto	l649
	
l676:	
	goto	l2905
	
l674:	
	goto	l2905
	
l672:	
	line	322
	goto	l2905
	line	324
	
l2901:	
	goto	l2905
	line	306
	
l661:	
	
l2903:	
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
	goto	l2869
	xorlw	224^7	; case 224
	skipnz
	goto	l2885
	goto	l2905
	opt asmopt_on

	line	324
	
l669:	
	line	327
	
l2905:	
	movf	(_TECLADO_dato),w
	addlw	low((_tabla_3col-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	movwf	(_TECLADO_dato)
	line	330
	
l2907:	
	bsf	(_TECLADO_banderas),7
	line	331
	
l2909:	
	movlw	(01h)
	goto	l649
	
l2911:	
	line	332
	
l649:	
	return
	opt stack 0
GLOBAL	__end_of_TECLADO_leer
	__end_of_TECLADO_leer:
	signat	_TECLADO_leer,89
	global	_LCD_mensaje_opciones_inicial

;; *************** function _LCD_mensaje_opciones_inicial *****************
;; Defined at:
;;		line 47 in file "procesoSecuencia.c"
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
;; This function is called by:
;;		_espera01Almohadilla
;;		_esperaSegundoValor
;;		_esperaTercerValor
;;		_esperaAlmohadillaValor
;;		_init_librerias
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"procesoSecuencia.c"
	line	47
global __ptext33
__ptext33:	;psect for function _LCD_mensaje_opciones_inicial
psect	text33
	file	"procesoSecuencia.c"
	line	47
	global	__size_of_LCD_mensaje_opciones_inicial
	__size_of_LCD_mensaje_opciones_inicial	equ	__end_of_LCD_mensaje_opciones_inicial-_LCD_mensaje_opciones_inicial
	
_LCD_mensaje_opciones_inicial:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_mensaje_opciones_inicial: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l196:	
	
l2775:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_mensaje_opciones_inicial$185)
	movlw	high(040h)
	movwf	((_LCD_mensaje_opciones_inicial$185))+1
	goto	l2779
	
l198:	
	
l2777:	
	clrf	(_LCD_mensaje_opciones_inicial$185)
	clrf	(_LCD_mensaje_opciones_inicial$185+1)
	goto	l2779
	
l200:	
	
l2779:	
	movf	(_LCD_mensaje_opciones_inicial$185),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movf	(??_LCD_mensaje_opciones_inicial+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2781
	
l201:	
	
l2781:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_mensaje_opciones_inicial+0)+0,w
	andwf	indf,f
	goto	l2783
	
l202:	
	
l2783:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_mensaje_opciones_inicial+0)+0
	movlw	04h
	movwf	btemp+1
u1695:
	rlf	(??_LCD_mensaje_opciones_inicial+0)+1,w
	rrf	(??_LCD_mensaje_opciones_inicial+0)+1,f
	rrf	(??_LCD_mensaje_opciones_inicial+0)+0,f
	decfsz	btemp+1,f
	goto	u1695
	movf	0+(??_LCD_mensaje_opciones_inicial+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2785:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2787
	
l203:	
	goto	l2787
	
l204:	
	goto	l2787
	
l205:	
	line	50
	
l2787:	
	movlw	low((STR_2-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	51
	
l206:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_mensaje_opciones_inicial
	__end_of_LCD_mensaje_opciones_inicial:
	signat	_LCD_mensaje_opciones_inicial,88
	global	_LCD_mensaje_opciones2

;; *************** function _LCD_mensaje_opciones2 *****************
;; Defined at:
;;		line 53 in file "procesoSecuencia.c"
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
;; This function is called by:
;;		_esperaPrimeraTecla
;;		_espera01Almohadilla
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	line	53
global __ptext34
__ptext34:	;psect for function _LCD_mensaje_opciones2
psect	text34
	file	"procesoSecuencia.c"
	line	53
	global	__size_of_LCD_mensaje_opciones2
	__size_of_LCD_mensaje_opciones2	equ	__end_of_LCD_mensaje_opciones2-_LCD_mensaje_opciones2
	
_LCD_mensaje_opciones2:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_mensaje_opciones2: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l209:	
	
l2789:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_mensaje_opciones2$188)
	movlw	high(040h)
	movwf	((_LCD_mensaje_opciones2$188))+1
	goto	l2793
	
l211:	
	
l2791:	
	clrf	(_LCD_mensaje_opciones2$188)
	clrf	(_LCD_mensaje_opciones2$188+1)
	goto	l2793
	
l213:	
	
l2793:	
	movf	(_LCD_mensaje_opciones2$188),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movf	(??_LCD_mensaje_opciones2+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2795
	
l214:	
	
l2795:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_mensaje_opciones2+0)+0,w
	andwf	indf,f
	goto	l2797
	
l215:	
	
l2797:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_mensaje_opciones2+0)+0
	movlw	04h
	movwf	btemp+1
u1705:
	rlf	(??_LCD_mensaje_opciones2+0)+1,w
	rrf	(??_LCD_mensaje_opciones2+0)+1,f
	rrf	(??_LCD_mensaje_opciones2+0)+0,f
	decfsz	btemp+1,f
	goto	u1705
	movf	0+(??_LCD_mensaje_opciones2+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2799:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2801
	
l216:	
	goto	l2801
	
l217:	
	goto	l2801
	
l218:	
	line	56
	
l2801:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_start),w
	iorwf	(_start+1),w
	skipz
	goto	u1711
	goto	u1710
u1711:
	goto	l2805
u1710:
	line	57
	
l2803:	
	movlw	low((STR_3-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l2807
	line	58
	
l219:	
	line	59
	
l2805:	
	movlw	low((STR_4-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l2807
	
l220:	
	line	60
	
l2807:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_sentido),w
	iorwf	(_sentido+1),w
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l2811
u1720:
	line	61
	
l2809:	
	movlw	low((STR_5-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l222
	line	62
	
l221:	
	line	63
	
l2811:	
	movlw	low((STR_6-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	64
	
l222:	
	line	65
	movlw	low((STR_7-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	66
	
l223:	
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
;;  cadena          2   11[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(17), STR_7(5), STR_6(7), STR_5(6), 
;;		 -> STR_4(8), STR_3(9), STR_2(17), cadena(20), 
;; Auto vars:     Size  Location     Type
;;  i               1   19[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_envia_4bits
;; This function is called by:
;;		_main
;;		_LCD_mensaje_opciones_inicial
;;		_LCD_mensaje_opciones2
;;		_esperaPrimeraTecla
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"LCD.c"
	line	240
global __ptext35
__ptext35:	;psect for function _LCD_enviaCadena
psect	text35
	file	"LCD.c"
	line	240
	global	__size_of_LCD_enviaCadena
	__size_of_LCD_enviaCadena	equ	__end_of_LCD_enviaCadena-_LCD_enviaCadena
	
_LCD_enviaCadena:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_enviaCadena: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	243
	
l2683:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_enviaCadena@i)
	goto	l2723
	line	244
	
l865:	
	goto	l2685
	
l866:	
	
l2685:	
	movf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	iorwf	indf,f
	goto	l2687
	
l867:	
	
l2687:	
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
u1635:
	clrc
	rrf	(??_LCD_enviaCadena+0)+0,f
	addlw	-1
	skipz
	goto	u1635
	movf	0+(??_LCD_enviaCadena+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2689:	
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
	goto	l2691
	
l868:	
	
l2691:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l2721
u1640:
	
l2693:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l2707
u1650:
	goto	l2697
	
l871:	
	goto	l2697
	
l2695:	
	movlw	low(040h)
	movwf	(_LCD_enviaCadena$433)
	movlw	high(040h)
	movwf	((_LCD_enviaCadena$433))+1
	goto	l2699
	
l873:	
	
l2697:	
	clrf	(_LCD_enviaCadena$433)
	clrf	(_LCD_enviaCadena$433+1)
	goto	l2699
	
l875:	
	
l2699:	
	movf	(_LCD_enviaCadena$433),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2701
	
l876:	
	
l2701:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	indf,f
	goto	l2703
	
l877:	
	
l2703:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_enviaCadena+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_enviaCadena+0)+0
	movlw	04h
	movwf	btemp+1
u1665:
	rlf	(??_LCD_enviaCadena+0)+1,w
	rrf	(??_LCD_enviaCadena+0)+1,f
	rrf	(??_LCD_enviaCadena+0)+0,f
	decfsz	btemp+1,f
	goto	u1665
	movf	0+(??_LCD_enviaCadena+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2705:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2719
	
l878:	
	goto	l2719
	
l879:	
	goto	l2719
	
l880:	
	goto	l2719
	
l870:	
	goto	l2707
	
l882:	
	
l2707:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_enviaCadena$434)
	movlw	high(040h)
	movwf	((_LCD_enviaCadena$434))+1
	goto	l2711
	
l884:	
	
l2709:	
	clrf	(_LCD_enviaCadena$434)
	clrf	(_LCD_enviaCadena$434+1)
	goto	l2711
	
l886:	
	
l2711:	
	movf	(_LCD_enviaCadena$434),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2713
	
l887:	
	
l2713:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	indf,f
	goto	l2715
	
l888:	
	
l2715:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_enviaCadena+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_enviaCadena+0)+0
	movlw	04h
	movwf	btemp+1
u1675:
	rlf	(??_LCD_enviaCadena+0)+1,w
	rrf	(??_LCD_enviaCadena+0)+1,f
	rrf	(??_LCD_enviaCadena+0)+0,f
	decfsz	btemp+1,f
	goto	u1675
	movf	0+(??_LCD_enviaCadena+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2717:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2719
	
l889:	
	goto	l2719
	
l890:	
	goto	l2719
	
l891:	
	goto	l2719
	
l881:	
	
l2719:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l2721
	
l869:	
	goto	l2721
	
l892:	
	line	243
	
l2721:	
	movlw	(01h)
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	addwf	(LCD_enviaCadena@i),f
	goto	l2723
	
l864:	
	
l2723:	
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
	goto	u1681
	goto	u1680
u1681:
	goto	l2685
u1680:
	goto	l894
	
l893:	
	line	245
	
l894:	
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
;;  dato            1   10[BANK0 ] unsigned char 
;;  a               1    9[BANK0 ] unsigned char 
;;  LCD_var_TRIS    1    8[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
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
psect	text36,local,class=CODE,delta=2,merge=1
	line	148
global __ptext36
__ptext36:	;psect for function _LCD_envia_4bits
psect	text36
	file	"LCD.c"
	line	148
	global	__size_of_LCD_envia_4bits
	__size_of_LCD_envia_4bits	equ	__end_of_LCD_envia_4bits-_LCD_envia_4bits
	
_LCD_envia_4bits:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_envia_4bits: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_envia_4bits@dato)
	line	151
	
l2661:	
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
	
l2663:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0F0h
	skipz
	goto	u1611
	goto	u1610
u1611:
	goto	l2667
u1610:
	line	156
	
l2665:	
	movf	(LCD_envia_4bits@dato),w
	movwf	(??_LCD_envia_4bits+0)+0
	movlw	(04h)-1
u1625:
	clrc
	rlf	(??_LCD_envia_4bits+0)+0,f
	addlw	-1
	skipz
	goto	u1625
	clrc
	rlf	(??_LCD_envia_4bits+0)+0,w
	andlw	0F0h
	movwf	(??_LCD_envia_4bits+1)+0
	movf	(??_LCD_envia_4bits+1)+0,w
	movwf	(LCD_envia_4bits@dato)
	goto	l2667
	line	157
	
l787:	
	line	159
	
l2667:	
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
	
l2669:	
	comf	(_LCD_BUS_PORT_PINES),w
	andwf	(LCD_envia_4bits@a),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(??_LCD_envia_4bits+0)+0,w
	movwf	(LCD_envia_4bits@a)
	line	161
	
l2671:	
	movf	(LCD_envia_4bits@dato),w
	iorwf	(LCD_envia_4bits@a),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(??_LCD_envia_4bits+0)+0,w
	movwf	(LCD_envia_4bits@dato)
	line	164
	
l2673:	
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
	
l2675:	
	movf	(_LCD_BUS_PORT_PUNTERO),w
	movwf	fsr0
	bcf	status,7
	btfsc	(_LCD_BUS_PORT_PUNTERO+1),0
	bsf	status,7
	
	movf	(LCD_envia_4bits@dato),w
	movwf	indf
	line	168
	
l2677:	
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
	
l2679:	
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
	
l2681:	
	opt asmopt_off
movlw	3
movwf	((??_LCD_envia_4bits+0)+0+1),f
	movlw	151
movwf	((??_LCD_envia_4bits+0)+0),f
u4077:
	decfsz	((??_LCD_envia_4bits+0)+0),f
	goto	u4077
	decfsz	((??_LCD_envia_4bits+0)+0+1),f
	goto	u4077
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
	
l788:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_envia_4bits
	__end_of_LCD_envia_4bits:
	signat	_LCD_envia_4bits,4216
	global	_rutinaInterrupcion

;; *************** function _rutinaInterrupcion *****************
;; Defined at:
;;		line 43 in file "interrupcion.c"
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
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_control_PI
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"interrupcion.c"
	line	43
global __ptext37
__ptext37:	;psect for function _rutinaInterrupcion
psect	text37
	file	"interrupcion.c"
	line	43
	global	__size_of_rutinaInterrupcion
	__size_of_rutinaInterrupcion	equ	__end_of_rutinaInterrupcion-_rutinaInterrupcion
	
_rutinaInterrupcion:	
;incstack = 0
	opt	stack 1
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_rutinaInterrupcion+2)
	movf	fsr0,w
	movwf	(??_rutinaInterrupcion+3)
	movf	pclath,w
	movwf	(??_rutinaInterrupcion+4)
	movf	btemp+1,w
	movwf	(??_rutinaInterrupcion+5)
	ljmp	_rutinaInterrupcion
psect	text37
	line	45
	
i1l3665:	
	btfss	(90/8),(90)&7	;volatile
	goto	u305_21
	goto	u305_20
u305_21:
	goto	i1l3689
u305_20:
	
i1l3667:	
	btfss	(93/8),(93)&7	;volatile
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l3689
u306_20:
	line	47
	
i1l3669:	
	bcf	(90/8),(90)&7	;volatile
	line	48
	
i1l3671:	
	movlw	(0Ch)
	movwf	(1)	;volatile
	line	50
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_cuenta_ints_T0)^080h,f
	skipnc
	incf	(_cuenta_ints_T0+1)^080h,f
	movlw	high(01h)
	addwf	(_cuenta_ints_T0+1)^080h,f
	line	51
	movlw	low(01h)
	addwf	(_cuenta_1s)^080h,f
	skipnc
	incf	(_cuenta_1s+1)^080h,f
	movlw	high(01h)
	addwf	(_cuenta_1s+1)^080h,f
	line	53
	movlw	04h
	xorwf	(_cuenta_ints_T0)^080h,w
	iorwf	(_cuenta_ints_T0+1)^080h,w
	skipz
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l3683
u307_20:
	line	55
	
i1l3673:	
	clrf	(_cuenta_ints_T0)^080h
	clrf	(_cuenta_ints_T0+1)^080h
	line	56
	
i1l3675:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_valor_TMR1+1)^080h
	addwf	(_valor_TMR1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_valor_TMR1)^080h
	addwf	(_valor_TMR1)^080h

	line	57
	
i1l3677:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	60
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_valor_TMR1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_rutinaInterrupcion+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_valor_TMR1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_rutinaInterrupcion+0)+0+1)
	incf	(??_rutinaInterrupcion+0)+0,f
	skipnz
	incf	((??_rutinaInterrupcion+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_num_pulsos_ref)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_rutinaInterrupcion+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_error)^080h
	movf	(_num_pulsos_ref+1)^080h,w
	skipnc
	incf	(_num_pulsos_ref+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_rutinaInterrupcion+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_error)^080h
	line	61
	
i1l3679:	
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

	line	62
	
i1l3681:	
	movf	(_Ton)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	goto	i1l3683
	line	63
	
i1l476:	
	line	65
	
i1l3683:	
	movlw	010h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_cuenta_1s)^080h,w
	iorwf	(_cuenta_1s+1)^080h,w
	skipz
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l479
u308_20:
	line	67
	
i1l3685:	
	clrf	(_cuenta_1s)^080h
	clrf	(_cuenta_1s+1)^080h
	line	68
	
i1l3687:	
	movlw	low(01h)
	movwf	(_tiempo_1s)^080h
	movlw	high(01h)
	movwf	((_tiempo_1s)^080h)+1
	goto	i1l479
	line	69
	
i1l477:	
	line	70
	goto	i1l479
	line	72
	
i1l475:	
	line	75
	
i1l3689:	
	clrf	(11)	;volatile
	line	76
	
i1l3691:	
	bcf	(88/8),(88)&7	;volatile
	goto	i1l479
	line	77
	
i1l478:	
	line	78
	
i1l479:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_rutinaInterrupcion+5),w
	movwf	btemp+1
	movf	(??_rutinaInterrupcion+4),w
	movwf	pclath
	movf	(??_rutinaInterrupcion+3),w
	movwf	fsr0
	swapf	(??_rutinaInterrupcion+2)^00h,w
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
;;		line 26 in file "interrupcion.c"
;; Parameters:    Size  Location     Type
;;  error           2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] short 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___wmul
;; This function is called by:
;;		_rutinaInterrupcion
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	line	26
global __ptext38
__ptext38:	;psect for function _control_PI
psect	text38
	file	"interrupcion.c"
	line	26
	global	__size_of_control_PI
	__size_of_control_PI	equ	__end_of_control_PI-_control_PI
	
_control_PI:	
;incstack = 0
	opt	stack 1
; Regs used in _control_PI: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
i1l3593:	
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
	movwf	(i1___wmul@multiplier)
	movf	(control_PI@error+1),w
	skipnc
	incf	(control_PI@error+1),w
	addwf	1+(??_control_PI+0)+0,w
	movwf	1+(i1___wmul@multiplier)
	movf	(_Kp+1)^080h,w
	clrf	(i1___wmul@multiplicand+1)
	addwf	(i1___wmul@multiplicand+1)
	movf	(_Kp)^080h,w
	clrf	(i1___wmul@multiplicand)
	addwf	(i1___wmul@multiplicand)

	fcall	i1___wmul
	movf	(0+?i1___wmul),w
	movwf	(??_control_PI+2)+0
	movf	(1+?i1___wmul),w
	movwf	((??_control_PI+2)+0+1)
	movf	(control_PI@error+1),w
	clrf	(i1___wmul@multiplier+1)
	addwf	(i1___wmul@multiplier+1)
	movf	(control_PI@error),w
	clrf	(i1___wmul@multiplier)
	addwf	(i1___wmul@multiplier)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Ki+1)^080h,w
	clrf	(i1___wmul@multiplicand+1)
	addwf	(i1___wmul@multiplicand+1)
	movf	(_Ki)^080h,w
	clrf	(i1___wmul@multiplicand)
	addwf	(i1___wmul@multiplicand)

	fcall	i1___wmul
	movf	(0+(?i1___wmul)),w
	addwf	0+(??_control_PI+2)+0,w
	movwf	(??_control_PI+4)+0
	movf	(1+(?i1___wmul)),w
	skipnc
	incf	(1+(?i1___wmul)),w
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
	line	32
	
i1l3595:	
	movf	(control_PI@error+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_errorAnt+1)^080h
	addwf	(_errorAnt+1)^080h
	movf	(control_PI@error),w
	clrf	(_errorAnt)^080h
	addwf	(_errorAnt)^080h

	line	33
	
i1l3597:	
	movf	(_max_duty+1)^080h,w
	movwf	(??_control_PI+0)+0+1
	movf	(_max_duty)^080h,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_salidaPI+1),w
	xorlw	80h
	subwf	(??_control_PI+2)+0,w
	skipz
	goto	u300_25
	movf	(_salidaPI),w
	subwf	0+(??_control_PI+0)+0,w
u300_25:

	skipnc
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l3601
u300_20:
	line	34
	
i1l3599:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_max_duty+1)^080h,w
	movwf	(??_control_PI+0)+0+1
	movf	(_max_duty)^080h,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_salidaPI)
	movf	1+(??_control_PI+0)+0,w
	movwf	(_salidaPI+1)
	goto	i1l3601
	
i1l470:	
	line	35
	
i1l3601:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_salidaPI+1),7
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l3605
u301_20:
	line	36
	
i1l3603:	
	clrf	(_salidaPI)
	clrf	(_salidaPI+1)
	goto	i1l3605
	
i1l471:	
	line	37
	
i1l3605:	
	movf	(_salidaPI+1),w
	movwf	(??_control_PI+0)+0+1
	movf	(_salidaPI),w
	movwf	(??_control_PI+0)+0
	movlw	04h
	movwf	btemp+1
u302_25:
	rlf	(??_control_PI+0)+1,w
	rrf	(??_control_PI+0)+1,f
	rrf	(??_control_PI+0)+0,f
	decfsz	btemp+1,f
	goto	u302_25
	movf	0+(??_control_PI+0)+0,w
	movwf	(?_control_PI)
	movf	1+(??_control_PI+0)+0,w
	movwf	(?_control_PI+1)
	goto	i1l472
	
i1l3607:	
	line	38
	
i1l472:	
	return
	opt stack 0
GLOBAL	__end_of_control_PI
	__end_of_control_PI:
	signat	_control_PI,4218
	global	i1___wmul

;; *************** function i1___wmul *****************
;; Defined at:
;;		line 3 in file "c:\sed_tools\xc8\sources\common\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __wmul          2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_control_PI
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"c:\sed_tools\xc8\sources\common\wmul.c"
	line	3
global __ptext39
__ptext39:	;psect for function i1___wmul
psect	text39
	file	"c:\sed_tools\xc8\sources\common\wmul.c"
	line	3
	global	__size_ofi1___wmul
	__size_ofi1___wmul	equ	__end_ofi1___wmul-i1___wmul
	
i1___wmul:	
;incstack = 0
	opt	stack 1
; Regs used in i1___wmul: [wreg+status,2+status,0]
	line	31
	
i1l3125:	
	clrf	(i1___wmul@product)
	clrf	(i1___wmul@product+1)
	goto	i1l3127
	line	32
	
i1l1370:	
	line	33
	
i1l3127:	
	btfss	(i1___wmul@multiplier),(0)&7
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l1371
u229_20:
	line	34
	
i1l3129:	
	movf	(i1___wmul@multiplicand),w
	addwf	(i1___wmul@product),f
	skipnc
	incf	(i1___wmul@product+1),f
	movf	(i1___wmul@multiplicand+1),w
	addwf	(i1___wmul@product+1),f
	
i1l1371:	
	line	35
	movlw	01h
	
u230_25:
	clrc
	rlf	(i1___wmul@multiplicand),f
	rlf	(i1___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u230_25
	line	36
	
i1l3131:	
	movlw	01h
	
u231_25:
	clrc
	rrf	(i1___wmul@multiplier+1),f
	rrf	(i1___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u231_25
	line	37
	movf	((i1___wmul@multiplier+1)),w
	iorwf	((i1___wmul@multiplier)),w
	skipz
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l3127
u232_20:
	goto	i1l3133
	
i1l1372:	
	line	40
	
i1l3133:	
	movf	(i1___wmul@product+1),w
	clrf	(?i1___wmul+1)
	addwf	(?i1___wmul+1)
	movf	(i1___wmul@product),w
	clrf	(?i1___wmul)
	addwf	(?i1___wmul)

	goto	i1l1373
	
i1l3135:	
	line	41
	
i1l1373:	
	return
	opt stack 0
GLOBAL	__end_ofi1___wmul
	__end_ofi1___wmul:
	signat	i1___wmul,90
global	___latbits
___latbits	equ	1
	global	fptotal
fptotal equ 39
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
fp__esperaKp:
	ljmp	_esperaKp
	file ""
	line	#
fp__esperaKi:
	ljmp	_esperaKi
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
