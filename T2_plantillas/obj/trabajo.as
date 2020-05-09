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
	global	_cuenta_1s
	global	_cuenta_ints_T0
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

_cuenta_1s:
       ds      2

_cuenta_ints_T0:
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
	movlw	low((__pbssBANK1)+024h)
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
;!    Data        6
;!    BSS         75
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
	
l3471:	
	fcall	_init_registros
	line	68
	fcall	_init_Timer0
	line	70
	
l3473:	
	fcall	_init_Timer1
	line	72
	
l3475:	
	fcall	_init_Timer2
	line	74
	
l3477:	
	fcall	_init_ADC
	line	76
	
l3479:	
	fcall	_init_procesoTeclado
	line	78
	
l3481:	
	fcall	_init_procesoSecuencia
	line	80
	
l3483:	
	fcall	_init_procesoHisteresis
	line	82
	
l3485:	
	fcall	_init_librerias
	line	84
	
l3487:	
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_num_pulsos_ref)
	movlw	high(064h)
	movwf	((_num_pulsos_ref))+1
	line	86
	
l3489:	
	bsf	(52/8),(52)&7	;volatile
	line	87
	
l3491:	
	bcf	(53/8),(53)&7	;volatile
	line	89
	
l3493:	
	bsf	(95/8),(95)&7	;volatile
	goto	l3495
	line	94
	
l75:	
	line	96
	
l3495:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_estado),w
	fcall	fptable
	line	98
	
l3497:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+_estado+01h),w
	fcall	fptable
	line	100
	
l3499:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+_estado+02h),w
	fcall	fptable
	line	102
	
l3501:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tiempo_1s+1)^080h,w
	iorwf	(_tiempo_1s)^080h,w
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l3495
u2850:
	line	104
	
l3503:	
	clrf	(_tiempo_1s)^080h
	clrf	(_tiempo_1s+1)^080h
	line	105
	
l3505:	
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
	goto	l3509
	line	106
	
l77:	
	goto	l3509
	
l3507:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_main$103)
	movlw	high(040h)
	movwf	((_main$103))+1
	goto	l3511
	
l79:	
	
l3509:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_main$103)
	clrf	(_main$103+1)
	goto	l3511
	
l81:	
	
l3511:	
	movf	(_main$103),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3513
	
l82:	
	
l3513:	
	comf	(_LCD_RS),w
	movwf	(??_main+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_main+0)+0,w
	andwf	indf,f
	goto	l3515
	
l83:	
	
l3515:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_main+0)+0
	movlw	high(080h)
	movwf	1+(??_main+0)+0
	movlw	04h
	movwf	btemp+1
u2865:
	rlf	(??_main+0)+1,w
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	decfsz	btemp+1,f
	goto	u2865
	movf	0+(??_main+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3517:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3519
	
l84:	
	goto	l3519
	
l85:	
	goto	l3519
	
l86:	
	line	107
	
l3519:	
	movlw	(_cadena&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	(0x0)
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	112
	
l3521:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	116
	
l3523:	
	opt asmopt_off
movlw	33
movwf	(??_main+0)+0,f
u3037:
decfsz	(??_main+0)+0,f
	goto	u3037
opt asmopt_on

	line	121
	
l3525:	
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

	goto	l3495
	line	125
	
l76:	
	goto	l3495
	line	126
	
l87:	
	line	94
	goto	l3495
	
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
	
l3071:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
	goto	l3153
	
l880:	
	line	547
	
l3073:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l3079
u2210:
	line	550
	
l3075:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3077:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
	goto	l3153
	line	552
	
l881:	
	line	555
	
l3079:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
	clrf	(sprintf@flag)
	line	606
	
l3081:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u2221
	goto	u2220
u2221:
	goto	l3095
u2220:
	line	607
	
l3083:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l3085
	line	608
	
l883:	
	line	609
	
l3085:	
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
	
l3087:	
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
	
l3089:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l3091:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2231
	goto	u2230
u2231:
	goto	l3085
u2230:
	goto	l3095
	
l884:	
	goto	l3095
	line	617
	
l882:	
	line	644
	goto	l3095
	line	646
	
l886:	
	line	647
	goto	l3155
	line	706
	
l888:	
	goto	l3097
	line	707
	
l889:	
	line	708
	goto	l3097
	line	811
	
l891:	
	line	822
	goto	l3153
	line	831
	
l3093:	
	goto	l3097
	line	644
	
l885:	
	
l3095:	
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
	goto	l3155
	xorlw	100^0	; case 100
	skipnz
	goto	l3097
	xorlw	105^100	; case 105
	skipnz
	goto	l3097
	goto	l3153
	opt asmopt_on

	line	831
	
l890:	
	line	1268
	
l3097:	
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
	
l3099:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l3101:	
	btfss	(sprintf@_val+1),7
	goto	u2241
	goto	u2240
u2241:
	goto	l3107
u2240:
	line	1271
	
l3103:	
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l3105:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l3107
	line	1273
	
l892:	
	line	1314
	
l3107:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l3111
u2250:
	goto	l3119
	
l3109:	
	goto	l3119
	line	1315
	
l893:	
	
l3111:	
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
	goto	u2265
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2265:
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l3115
u2260:
	goto	l3119
	line	1316
	
l3113:	
	goto	l3119
	
l895:	
	line	1314
	
l3115:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l3117:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l3111
u2270:
	goto	l3119
	
l894:	
	line	1354
	
l3119:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2281
	goto	u2280
u2281:
	goto	l896
u2280:
	
l3121:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l896
u2290:
	line	1355
	
l3123:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l896:	
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
	goto	u2305
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u2305:

	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l3127
u2300:
	line	1391
	
l3125:	
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
	goto	l3129
	line	1392
	
l897:	
	line	1393
	
l3127:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l3129
	
l898:	
	line	1437
	
l3129:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l3137
u2310:
	goto	l3131
	line	1438
	
l900:	
	line	1439
	
l3131:	
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3133:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1440
	
l3135:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l3131
u2320:
	goto	l3137
	
l901:	
	goto	l3137
	
l899:	
	line	1447
	
l3137:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l3143
u2330:
	line	1448
	
l3139:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3141:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l3143
	
l902:	
	line	1481
	
l3143:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
	goto	l3151
	
l904:	
	line	1498
	
l3145:	
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
	
l3147:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3149:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l3151
	line	1534
	
l903:	
	line	1483
	
l3151:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l3145
u2340:
	goto	l3153
	
l905:	
	goto	l3153
	line	1542
	
l879:	
	line	545
	
l3153:	
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
	goto	u2351
	goto	u2350
u2351:
	goto	l3073
u2350:
	goto	l3155
	
l906:	
	goto	l3155
	line	1544
	
l887:	
	line	1547
	
l3155:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l907
	line	1549
	
l3157:	
	line	1550
;	Return value of _sprintf is never used
	
l907:	
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
	
l2953:	
	clrf	(_isdigit$624)
	
l2955:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2011
	goto	u2010
u2011:
	goto	l2961
u2010:
	
l2957:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l2961
u2020:
	
l2959:	
	clrf	(_isdigit$624)
	incf	(_isdigit$624),f
	goto	l2961
	
l1229:	
	
l2961:	
	rrf	(_isdigit$624),w
	
	goto	l1230
	
l2963:	
	line	15
	
l1230:	
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
	
l2991:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2101
	goto	u2100
u2101:
	goto	l3009
u2100:
	line	14
	
l2993:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2999
	
l1325:	
	line	16
	
l2995:	
	movlw	01h
	
u2115:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2115
	line	17
	
l2997:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2999
	line	18
	
l1324:	
	line	15
	
l2999:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2121
	goto	u2120
u2121:
	goto	l2995
u2120:
	goto	l3001
	
l1326:	
	goto	l3001
	line	19
	
l1327:	
	line	20
	
l3001:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2135
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2135:
	skipc
	goto	u2131
	goto	u2130
u2131:
	goto	l3005
u2130:
	line	21
	
l3003:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3005
	
l1328:	
	line	22
	
l3005:	
	movlw	01h
	
u2145:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2145
	line	23
	
l3007:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l3001
u2150:
	goto	l3009
	
l1329:	
	goto	l3009
	line	24
	
l1323:	
	line	25
	
l3009:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1330
	
l3011:	
	line	26
	
l1330:	
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
	
l2965:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2967:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2031
	goto	u2030
u2031:
	goto	l2987
u2030:
	line	16
	
l2969:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2975
	
l1315:	
	line	18
	
l2971:	
	movlw	01h
	
u2045:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2045
	line	19
	
l2973:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2975
	line	20
	
l1314:	
	line	17
	
l2975:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2051
	goto	u2050
u2051:
	goto	l2971
u2050:
	goto	l2977
	
l1316:	
	goto	l2977
	line	21
	
l1317:	
	line	22
	
l2977:	
	movlw	01h
	
u2065:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2065
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2075
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2075:
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l2983
u2070:
	line	24
	
l2979:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2981:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2983
	line	26
	
l1318:	
	line	27
	
l2983:	
	movlw	01h
	
u2085:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2085
	line	28
	
l2985:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l2977
u2090:
	goto	l2987
	
l1319:	
	goto	l2987
	line	29
	
l1313:	
	line	30
	
l2987:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1320
	
l2989:	
	line	31
	
l1320:	
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
	
l3025:	
	movlw	(066h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	33
	goto	l540
	
l541:	
	
l540:	
	btfss	(1146/8)^080h,(1146)&7	;volatile
	goto	u2201
	goto	u2200
u2201:
	goto	l540
u2200:
	goto	l3027
	
l542:	
	line	36
	
l3027:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	37
	clrf	(6)	;volatile
	line	38
	
l3029:	
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	39
	
l3031:	
	movlw	(03Fh)
	movwf	(133)^080h	;volatile
	line	40
	
l3033:	
	movlw	(0C7h)
	movwf	(134)^080h	;volatile
	line	42
	
l543:	
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
	
l3061:	
	movlw	((fp__esperaPulsarTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_procesoTeclado+0)+0
	movf	(??_init_procesoTeclado+0)+0,w
	movwf	(_estado)
	line	27
	
l399:	
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
	
l3063:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init_procesoSecuencia+0)+0
	movf	(??_init_procesoSecuencia+0)+0,w
	movwf	(0+_estado+01h)
	line	38
	
l185:	
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
	
l3065:	
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
	
l3067:	
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
	
l3069:	
	fcall	_LCD_mensaje_opciones_inicial
	line	148
	
l558:	
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
	
l2833:	
	movf	(TECLADO_ini@config),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_config)	;volatile
	line	130
	
l2835:	
	btfss	(TECLADO_ini@config),(0)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l590
u1780:
	
l2837:	
	movlw	high(6)
	movwf	(_TECLADO_PORT_FIL_PUNTERO+1)
	movlw	low(6)
	movwf	(_TECLADO_PORT_FIL_PUNTERO)
	goto	l592
	
l590:	
	movlw	high(5)
	movwf	(_TECLADO_PORT_FIL_PUNTERO+1)
	movlw	low(5)
	movwf	(_TECLADO_PORT_FIL_PUNTERO)
	
l592:	
	line	131
	btfss	(TECLADO_ini@config),(2)&7
	goto	u1791
	goto	u1790
u1791:
	goto	l2841
u1790:
	
l2839:	
	movlw	low(0F0h)
	movwf	(_TECLADO_ini$349)
	movlw	high(0F0h)
	movwf	((_TECLADO_ini$349))+1
	goto	l596
	
l594:	
	
l2841:	
	movlw	low(0Fh)
	movwf	(_TECLADO_ini$349)
	movlw	high(0Fh)
	movwf	((_TECLADO_ini$349))+1
	
l596:	
	movf	(_TECLADO_ini$349),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_FIL_PINES)
	line	133
	
l2843:	
	btfss	(TECLADO_ini@config),(1)&7
	goto	u1801
	goto	u1800
u1801:
	goto	l598
u1800:
	
l2845:	
	movlw	high(6)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_TECLADO_PORT_COL_PUNTERO+1)^080h
	movlw	low(6)
	movwf	(_TECLADO_PORT_COL_PUNTERO)^080h
	goto	l2855
	
l598:	
	movlw	high(5)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_TECLADO_PORT_COL_PUNTERO+1)^080h
	movlw	low(5)
	movwf	(_TECLADO_PORT_COL_PUNTERO)^080h
	goto	l2855
	
l600:	
	line	135
	goto	l2855
	line	138
	
l602:	
	
l2847:	
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	139
	goto	l603
	line	140
	
l604:	
	
l2849:	
	movlw	(038h)
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	141
	goto	l603
	line	142
	
l605:	
	
l2851:	
	movlw	(0E0h)
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	movwf	(_TECLADO_COL_PINES)
	line	143
	goto	l603
	line	144
	
l2853:	
	goto	l603
	line	135
	
l601:	
	
l2855:	
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
	goto	l3663
	goto	l603
	opt asmopt_on
	
l3663:	
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
	goto	l2847
	xorlw	16^8	; case 16
	skipnz
	goto	l2849
	xorlw	24^16	; case 24
	skipnz
	goto	l2851
	goto	l603
	opt asmopt_on

	line	144
	
l603:	
	line	150
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1811
	goto	u1810
u1811:
	goto	l2859
u1810:
	line	154
	
l2857:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(133)^080h,f	;volatile
	line	167
	goto	l607
	line	168
	
l606:	
	line	171
	
l2859:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(134)^080h,f	;volatile
	line	175
	
l2861:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_TECLADO_config),(6)&7	;volatile
	goto	u1821
	goto	u1820
u1821:
	goto	l607
u1820:
	line	178
	
l2863:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7	;volatile
	goto	l607
	line	194
	
l608:	
	line	195
	
l607:	
	line	201
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_TECLADO_config),(0)&7	;volatile
	goto	u1831
	goto	u1830
u1831:
	goto	l2867
u1830:
	line	202
	
l2865:	
	comf	(_TECLADO_FIL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l611
	line	203
	
l609:	
	line	204
	
l2867:	
	bcf	status, 5	;RP0=0, select bank0
	comf	(_TECLADO_FIL_PINES),w
	movwf	(??_TECLADO_ini+0)+0
	movf	(??_TECLADO_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l611
	
l610:	
	line	205
	
l611:	
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
	
l2873:	
	btfss	(LCD_ini@config),(1)&7
	goto	u1841
	goto	u1840
u1841:
	goto	l2877
u1840:
	
l2875:	
	movlw	low(0F0h)
	movwf	(_LCD_ini$395)
	movlw	high(0F0h)
	movwf	((_LCD_ini$395))+1
	goto	l722
	
l720:	
	
l2877:	
	movlw	low(0Fh)
	movwf	(_LCD_ini$395)
	movlw	high(0Fh)
	movwf	((_LCD_ini$395))+1
	
l722:	
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
	
l2879:	
	btfss	(LCD_ini@config),(0)&7
	goto	u1851
	goto	u1850
u1851:
	goto	l724
u1850:
	
l2881:	
	movlw	high(6)
	movwf	(_LCD_BUS_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_BUS_PORT_PUNTERO)
	goto	l726
	
l724:	
	movlw	high(5)
	movwf	(_LCD_BUS_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_BUS_PORT_PUNTERO)
	
l726:	
	line	85
	btfss	(LCD_ini@config),(2)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l728
u1860:
	
l2883:	
	movlw	high(6)
	movwf	(_LCD_RS_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_RS_PORT_PUNTERO)
	goto	l730
	
l728:	
	movlw	high(5)
	movwf	(_LCD_RS_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_RS_PORT_PUNTERO)
	
l730:	
	line	86
	btfss	(LCD_ini@config),(3)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l732
u1870:
	
l2885:	
	movlw	high(6)
	movwf	(_LCD_E_PORT_PUNTERO+1)
	movlw	low(6)
	movwf	(_LCD_E_PORT_PUNTERO)
	goto	l734
	
l732:	
	movlw	high(5)
	movwf	(_LCD_E_PORT_PUNTERO+1)
	movlw	low(5)
	movwf	(_LCD_E_PORT_PUNTERO)
	
l734:	
	line	87
	btfss	(LCD_ini@config),(0)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l736
u1880:
	
l2887:	
	movlw	high(134)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO+1)
	movlw	low(134)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO)
	goto	l738
	
l736:	
	movlw	high(133)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO+1)
	movlw	low(133)
	movwf	(_LCD_BUS_PORT_TRIS_PUNTERO)
	
l738:	
	line	88
	btfss	(LCD_ini@config),(2)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l740
u1890:
	
l2889:	
	movlw	high(134)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(134)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO)^080h
	goto	l742
	
l740:	
	movlw	high(133)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(133)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO)^080h
	
l742:	
	line	89
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(LCD_ini@config),(3)&7
	goto	u1901
	goto	u1900
u1901:
	goto	l744
u1900:
	
l2891:	
	movlw	high(134)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_E_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(134)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO)^080h
	goto	l2893
	
l744:	
	movlw	high(133)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_LCD_E_PORT_TRIS_PUNTERO+1)^080h
	movlw	low(133)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO)^080h
	goto	l2893
	
l746:	
	line	92
	
l2893:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_LCD_RS_PORT_PUNTERO+1),w
	skipz
	goto	u1915
	movlw	low(5)
	xorwf	(_LCD_RS_PORT_PUNTERO),w
u1915:

	skipz
	goto	u1911
	goto	u1910
u1911:
	goto	l2899
u1910:
	line	93
	
l2895:	
	movlw	(09h)
	subwf	(LCD_ini@RS_PIN),w
	skipnc
	goto	u1921
	goto	u1920
u1921:
	goto	l2903
u1920:
	line	94
	
l2897:	
	comf	(LCD_ini@RS_PIN),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2903
	
l748:	
	line	95
	goto	l2903
	line	96
	
l747:	
	line	97
	
l2899:	
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(LCD_ini@RS_PIN),w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l2903
u1930:
	line	98
	
l2901:	
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
	goto	l2903
	
l750:	
	goto	l2903
	line	99
	
l749:	
	line	101
	
l2903:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_E_PORT_PUNTERO+1),w
	skipz
	goto	u1945
	movlw	low(5)
	xorwf	(_LCD_E_PORT_PUNTERO),w
u1945:

	skipz
	goto	u1941
	goto	u1940
u1941:
	goto	l2909
u1940:
	line	102
	
l2905:	
	movlw	(09h)
	subwf	(LCD_ini@E_PIN),w
	skipnc
	goto	u1951
	goto	u1950
u1951:
	goto	l2913
u1950:
	line	103
	
l2907:	
	comf	(LCD_ini@E_PIN),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2913
	
l752:	
	line	104
	goto	l2913
	line	105
	
l751:	
	line	106
	
l2909:	
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(LCD_ini@E_PIN),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l2913
u1960:
	line	107
	
l2911:	
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
	goto	l2913
	
l754:	
	goto	l2913
	line	108
	
l753:	
	line	110
	
l2913:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_BUS_PORT_PUNTERO+1),w
	skipz
	goto	u1975
	movlw	low(5)
	xorwf	(_LCD_BUS_PORT_PUNTERO),w
u1975:

	skipz
	goto	u1971
	goto	u1970
u1971:
	goto	l2919
u1970:
	
l2915:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0Fh
	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l2919
u1980:
	line	111
	
l2917:	
	comf	(_LCD_BUS_PORT_PINES),w
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2925
	line	112
	
l755:	
	
l2919:	
	movlw	high(6)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_BUS_PORT_PUNTERO+1),w
	skipz
	goto	u1995
	movlw	low(6)
	xorwf	(_LCD_BUS_PORT_PUNTERO),w
u1995:

	skipz
	goto	u1991
	goto	u1990
u1991:
	goto	l2925
u1990:
	
l2921:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0F0h
	skipz
	goto	u2001
	goto	u2000
u2001:
	goto	l2925
u2000:
	line	113
	
l2923:	
	movlw	(09Fh)
	movwf	(??_LCD_ini+0)+0
	movf	(??_LCD_ini+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l2925
	
l757:	
	goto	l2925
	line	119
	
l756:	
	
l2925:	
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
	
l2927:	
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
	
l2929:	
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
	
l2931:	
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
	
l2933:	
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
	
l2935:	
	opt asmopt_off
movlw	20
movwf	((??_LCD_ini+0)+0+1),f
	movlw	121
movwf	((??_LCD_ini+0)+0),f
u3047:
	decfsz	((??_LCD_ini+0)+0),f
	goto	u3047
	decfsz	((??_LCD_ini+0)+0+1),f
	goto	u3047
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
	
l2937:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	128
	
l2939:	
	opt asmopt_off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_ini+0)+0+1),f
	movlw	125
movwf	((??_LCD_ini+0)+0),f
u3057:
	decfsz	((??_LCD_ini+0)+0),f
	goto	u3057
	decfsz	((??_LCD_ini+0)+0+1),f
	goto	u3057
opt asmopt_on

	line	129
	
l2941:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	130
	
l2943:	
	opt asmopt_off
movlw	36
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_ini+0)+0,f
u3067:
decfsz	(??_LCD_ini+0)+0,f
	goto	u3067
	nop
opt asmopt_on

	line	131
	
l2945:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	132
	
l2947:	
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_ini+0)+0,f
u3077:
decfsz	(??_LCD_ini+0)+0,f
	goto	u3077
	nop
opt asmopt_on

	line	133
	
l2949:	
	movlw	(02h)
	fcall	_LCD_envia_4bits
	line	135
	
l2951:	
	movlw	(03h)
	fcall	_LCD_enciende
	line	137
	
l758:	
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
	
l2625:	
	opt asmopt_off
movlw	7
movwf	((??_LCD_enciende+0)+0+1),f
	movlw	125
movwf	((??_LCD_enciende+0)+0),f
u3087:
	decfsz	((??_LCD_enciende+0)+0),f
	goto	u3087
	decfsz	((??_LCD_enciende+0)+0+1),f
	goto	u3087
opt asmopt_on

	goto	l2627
	line	201
	
l768:	
	
l2627:	
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
	goto	l2629
	
l769:	
	
l2629:	
	movlw	(02h)
	fcall	_LCD_envia_4bits
	
l2631:	
	movlw	(08h)
	fcall	_LCD_envia_4bits
	goto	l2633
	
l770:	
	goto	l2633
	
l771:	
	goto	l2633
	line	203
	
l772:	
	
l2633:	
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
	goto	l2635
	
l773:	
	
l2635:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2637:	
	movlw	(01h)
	fcall	_LCD_envia_4bits
	goto	l2665
	
l774:	
	goto	l2665
	
l775:	
	line	207
	goto	l2665
	line	209
	
l777:	
	goto	l2639
	
l778:	
	
l2639:	
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
	goto	l2641
	
l779:	
	
l2641:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2643:	
	movlw	(0Ch)
	fcall	_LCD_envia_4bits
	goto	l2667
	
l780:	
	goto	l2667
	
l781:	
	goto	l2667
	line	210
	
l783:	
	goto	l2645
	
l784:	
	
l2645:	
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
	goto	l2647
	
l785:	
	
l2647:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2649:	
	movlw	(0Eh)
	fcall	_LCD_envia_4bits
	goto	l2667
	
l786:	
	goto	l2667
	
l787:	
	goto	l2667
	line	211
	
l788:	
	goto	l2651
	
l789:	
	
l2651:	
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
	goto	l2653
	
l790:	
	
l2653:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2655:	
	movlw	(0Dh)
	fcall	_LCD_envia_4bits
	goto	l2667
	
l791:	
	goto	l2667
	
l792:	
	goto	l2667
	line	212
	
l793:	
	goto	l2657
	line	213
	
l794:	
	goto	l2657
	
l795:	
	
l2657:	
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
	goto	l2659
	
l796:	
	
l2659:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2661:	
	movlw	(0Fh)
	fcall	_LCD_envia_4bits
	goto	l2667
	
l797:	
	goto	l2667
	
l798:	
	goto	l2667
	line	214
	
l2663:	
	goto	l2667
	line	207
	
l776:	
	
l2665:	
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
	goto	l2639
	xorlw	1^0	; case 1
	skipnz
	goto	l2645
	xorlw	2^1	; case 2
	skipnz
	goto	l2651
	xorlw	3^2	; case 3
	skipnz
	goto	l2657
	goto	l2657
	opt asmopt_on

	line	214
	
l782:	
	goto	l2667
	line	218
	
l799:	
	
l2667:	
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
	goto	l2669
	
l800:	
	
l2669:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l2671:	
	movlw	(06h)
	fcall	_LCD_envia_4bits
	goto	l2673
	
l801:	
	goto	l2673
	
l802:	
	line	220
	
l2673:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_LCD_var_cursor)
	line	221
	
l803:	
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
	
l3049:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(23)	;volatile
	line	102
	
l3051:	
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	103
	
l3053:	
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	107
	
l3055:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	109
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	110
	
l3057:	
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	111
	
l552:	
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
	
l3039:	
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
	
l3041:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	84
	
l3043:	
	bcf	(96/8),(96)&7	;volatile
	line	85
	
l3045:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	87
	
l3047:	
	bcf	(94/8),(94)&7	;volatile
	line	88
	
l549:	
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
	
l3035:	
	movlw	(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	68
	
l3037:	
	bsf	(93/8),(93)&7	;volatile
	line	69
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	70
	
l546:	
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
	
l3059:	
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
u3097:
decfsz	(??_init_ADC+0)+0,f
	goto	u3097
	nop2	;nop
opt asmopt_on

	line	139
	
l555:	
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
	
l3453:	
	fcall	_TECLADO_pulsado
	iorlw	0
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l407
u2810:
	line	49
	
l3455:	
	movlw	((fp__esperaPulsarTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSoltarTecla+0)+0
	movf	(??_esperaSoltarTecla+0)+0,w
	movwf	(_estado)
	goto	l407
	line	50
	
l406:	
	line	51
	
l407:	
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
	
l3447:	
	fcall	_TECLADO_leer
	xorlw	0
	skipnz
	goto	u2801
	goto	u2800
u2801:
	goto	l403
u2800:
	line	36
	
l3449:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TECLADO_dato),w
	movwf	(??_esperaPulsarTecla+0)+0
	movf	(??_esperaPulsarTecla+0)+0,w
	movwf	(_tecla)
	line	37
	
l3451:	
	clrf	(_nuevaTecla)
	incf	(_nuevaTecla),f
	line	38
	movlw	((fp__esperaSoltarTecla-fpbase))&0ffh
	movwf	(??_esperaPulsarTecla+0)+0
	movf	(??_esperaPulsarTecla+0)+0,w
	movwf	(_estado)
	goto	l403
	line	39
	
l402:	
	line	40
	
l403:	
	return
	opt stack 0
GLOBAL	__end_of_esperaPulsarTecla
	__end_of_esperaPulsarTecla:
	signat	_esperaPulsarTecla,88

;; *************** function _esperaAlmohadillaValor *****************
;; Defined at:
;;		line 197 in file "procesoSecuencia.c"
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
	line	197
global __ptext19
__ptext19:	;psect for function _esperaAlmohadillaValor
psect	text19
	file	"procesoSecuencia.c"
	line	197
	global	__size_of_esperaAlmohadillaValor
	__size_of_esperaAlmohadillaValor	equ	__end_of_esperaAlmohadillaValor-_esperaAlmohadillaValor
	
_esperaAlmohadillaValor:	
;incstack = 0
	opt	stack 2
; Regs used in _esperaAlmohadillaValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	199
	
l3435:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l380
u2780:
	line	201
	
l3437:	
	clrf	(_nuevaTecla)
	line	202
	
l3439:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l380
u2790:
	line	204
	
l3441:	
	movf	(_valor+1),w
	clrf	(_num_pulsos_ref+1)
	addwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	clrf	(_num_pulsos_ref)
	addwf	(_num_pulsos_ref)

	line	205
	
l3443:	
	fcall	_LCD_mensaje_opciones_inicial
	line	206
	
l3445:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaAlmohadillaValor+0)+0
	movf	(??_esperaAlmohadillaValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l380
	line	207
	
l379:	
	goto	l380
	line	208
	
l378:	
	line	209
	
l380:	
	return
	opt stack 0
GLOBAL	__end_of_esperaAlmohadillaValor
	__end_of_esperaAlmohadillaValor:
	signat	_esperaAlmohadillaValor,88

;; *************** function _esperaTercerValor *****************
;; Defined at:
;;		line 173 in file "procesoSecuencia.c"
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
	line	173
global __ptext20
__ptext20:	;psect for function _esperaTercerValor
psect	text20
	file	"procesoSecuencia.c"
	line	173
	global	__size_of_esperaTercerValor
	__size_of_esperaTercerValor	equ	__end_of_esperaTercerValor-_esperaTercerValor
	
_esperaTercerValor:	
;incstack = 0
	opt	stack 2
; Regs used in _esperaTercerValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	175
	
l3369:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l375
u2690:
	line	177
	
l3371:	
	clrf	(_nuevaTecla)
	line	178
	
l3373:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l3381
u2700:
	line	180
	
l3375:	
	movf	(_valor+1),w
	clrf	(_num_pulsos_ref+1)
	addwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	clrf	(_num_pulsos_ref)
	addwf	(_num_pulsos_ref)

	line	181
	
l3377:	
	fcall	_LCD_mensaje_opciones_inicial
	line	182
	
l3379:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(0+_estado+01h)
	line	183
	goto	l375
	line	184
	
l335:	
	
l3381:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l375
u2710:
	line	186
	
l3383:	
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
	goto	l3385
	line	187
	
l338:	
	
l3385:	
	movlw	low(040h)
	movwf	(_esperaTercerValor$196)
	movlw	high(040h)
	movwf	((_esperaTercerValor$196))+1
	goto	l3389
	
l340:	
	
l3387:	
	clrf	(_esperaTercerValor$196)
	clrf	(_esperaTercerValor$196+1)
	goto	l3389
	
l342:	
	
l3389:	
	movf	(_esperaTercerValor$196),w
	iorlw	0Dh
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3391
	
l343:	
	
l3391:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l3393
	
l344:	
	
l3393:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaTercerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2725:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2725
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3395:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3397
	
l345:	
	goto	l3397
	
l346:	
	goto	l3397
	
l347:	
	goto	l3397
	line	188
	
l348:	
	
l3397:	
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
	goto	l3399
	
l349:	
	
l3399:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaTercerValor+0)+0)+1
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
	
l3401:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3403
	
l350:	
	
l3403:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l3433
u2740:
	
l3405:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l3419
u2750:
	goto	l3409
	
l353:	
	goto	l3409
	
l3407:	
	movlw	low(040h)
	movwf	(_esperaTercerValor$197)
	movlw	high(040h)
	movwf	((_esperaTercerValor$197))+1
	goto	l3411
	
l355:	
	
l3409:	
	clrf	(_esperaTercerValor$197)
	clrf	(_esperaTercerValor$197+1)
	goto	l3411
	
l357:	
	
l3411:	
	movf	(_esperaTercerValor$197),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3413
	
l358:	
	
l3413:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l3415
	
l359:	
	
l3415:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaTercerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaTercerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2765:
	rlf	(??_esperaTercerValor+0)+1,w
	rrf	(??_esperaTercerValor+0)+1,f
	rrf	(??_esperaTercerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2765
	movf	0+(??_esperaTercerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3417:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3431
	
l360:	
	goto	l3431
	
l361:	
	goto	l3431
	
l362:	
	goto	l3431
	
l352:	
	goto	l3419
	
l364:	
	
l3419:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaTercerValor$198)
	movlw	high(040h)
	movwf	((_esperaTercerValor$198))+1
	goto	l3423
	
l366:	
	
l3421:	
	clrf	(_esperaTercerValor$198)
	clrf	(_esperaTercerValor$198+1)
	goto	l3423
	
l368:	
	
l3423:	
	movf	(_esperaTercerValor$198),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3425
	
l369:	
	
l3425:	
	comf	(_LCD_RS),w
	movwf	(??_esperaTercerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaTercerValor+0)+0,w
	andwf	indf,f
	goto	l3427
	
l370:	
	
l3427:	
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
	
l3429:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3431
	
l371:	
	goto	l3431
	
l372:	
	goto	l3431
	
l373:	
	goto	l3431
	
l363:	
	
l3431:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l3433
	
l351:	
	goto	l3433
	
l374:	
	line	189
	
l3433:	
	movlw	((fp__esperaAlmohadillaValor-fpbase))&0ffh
	movwf	(??_esperaTercerValor+0)+0
	movf	(??_esperaTercerValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l375
	line	190
	
l337:	
	goto	l375
	line	191
	
l336:	
	goto	l375
	
l334:	
	line	192
	
l375:	
	return
	opt stack 0
GLOBAL	__end_of_esperaTercerValor
	__end_of_esperaTercerValor:
	signat	_esperaTercerValor,88

;; *************** function _esperaSegundoValor *****************
;; Defined at:
;;		line 149 in file "procesoSecuencia.c"
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
	line	149
global __ptext21
__ptext21:	;psect for function _esperaSegundoValor
psect	text21
	file	"procesoSecuencia.c"
	line	149
	global	__size_of_esperaSegundoValor
	__size_of_esperaSegundoValor	equ	__end_of_esperaSegundoValor-_esperaSegundoValor
	
_esperaSegundoValor:	
;incstack = 0
	opt	stack 2
; Regs used in _esperaSegundoValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	151
	
l3303:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l331
u2600:
	line	153
	
l3305:	
	clrf	(_nuevaTecla)
	line	154
	
l3307:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l3315
u2610:
	line	156
	
l3309:	
	movf	(_valor+1),w
	clrf	(_num_pulsos_ref+1)
	addwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	clrf	(_num_pulsos_ref)
	addwf	(_num_pulsos_ref)

	line	157
	
l3311:	
	fcall	_LCD_mensaje_opciones_inicial
	line	158
	
l3313:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(0+_estado+01h)
	line	159
	goto	l331
	line	160
	
l291:	
	
l3315:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l331
u2620:
	line	162
	
l3317:	
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
	goto	l3319
	line	163
	
l294:	
	
l3319:	
	movlw	low(040h)
	movwf	(_esperaSegundoValor$192)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$192))+1
	goto	l3323
	
l296:	
	
l3321:	
	clrf	(_esperaSegundoValor$192)
	clrf	(_esperaSegundoValor$192+1)
	goto	l3323
	
l298:	
	
l3323:	
	movf	(_esperaSegundoValor$192),w
	iorlw	0Ch
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3325
	
l299:	
	
l3325:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l3327
	
l300:	
	
l3327:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaSegundoValor+0)+0
	movlw	04h
	movwf	btemp+1
u2635:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2635
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3329:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3331
	
l301:	
	goto	l3331
	
l302:	
	goto	l3331
	
l303:	
	goto	l3331
	line	164
	
l304:	
	
l3331:	
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
	goto	l3333
	
l305:	
	
l3333:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaSegundoValor+0)+0)+1
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
	
l3335:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3337
	
l306:	
	
l3337:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l3367
u2650:
	
l3339:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l3353
u2660:
	goto	l3343
	
l309:	
	goto	l3343
	
l3341:	
	movlw	low(040h)
	movwf	(_esperaSegundoValor$193)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$193))+1
	goto	l3345
	
l311:	
	
l3343:	
	clrf	(_esperaSegundoValor$193)
	clrf	(_esperaSegundoValor$193+1)
	goto	l3345
	
l313:	
	
l3345:	
	movf	(_esperaSegundoValor$193),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3347
	
l314:	
	
l3347:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l3349
	
l315:	
	
l3349:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaSegundoValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaSegundoValor+0)+0
	movlw	04h
	movwf	btemp+1
u2675:
	rlf	(??_esperaSegundoValor+0)+1,w
	rrf	(??_esperaSegundoValor+0)+1,f
	rrf	(??_esperaSegundoValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2675
	movf	0+(??_esperaSegundoValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3351:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3365
	
l316:	
	goto	l3365
	
l317:	
	goto	l3365
	
l318:	
	goto	l3365
	
l308:	
	goto	l3353
	
l320:	
	
l3353:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaSegundoValor$194)
	movlw	high(040h)
	movwf	((_esperaSegundoValor$194))+1
	goto	l3357
	
l322:	
	
l3355:	
	clrf	(_esperaSegundoValor$194)
	clrf	(_esperaSegundoValor$194+1)
	goto	l3357
	
l324:	
	
l3357:	
	movf	(_esperaSegundoValor$194),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3359
	
l325:	
	
l3359:	
	comf	(_LCD_RS),w
	movwf	(??_esperaSegundoValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	indf,f
	goto	l3361
	
l326:	
	
l3361:	
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
	
l3363:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3365
	
l327:	
	goto	l3365
	
l328:	
	goto	l3365
	
l329:	
	goto	l3365
	
l319:	
	
l3365:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l3367
	
l307:	
	goto	l3367
	
l330:	
	line	165
	
l3367:	
	movlw	((fp__esperaTercerValor-fpbase))&0ffh
	movwf	(??_esperaSegundoValor+0)+0
	movf	(??_esperaSegundoValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l331
	line	166
	
l293:	
	goto	l331
	line	167
	
l292:	
	goto	l331
	
l290:	
	line	168
	
l331:	
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
	
l3213:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l245
u2460:
	line	90
	
l3215:	
	clrf	(_nuevaTecla)
	line	91
	
l3217:	
	movf	(_tecla),f
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l3223
u2470:
	line	93
	
l3219:	
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
	
l3221:	
	fcall	_LCD_mensaje_opciones2
	line	95
	goto	l245
	line	96
	
l236:	
	
l3223:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	xorlw	01h
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l3229
u2480:
	line	98
	
l3225:	
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
	
l3227:	
	fcall	_LCD_mensaje_opciones2
	line	100
	goto	l245
	line	101
	
l238:	
	
l3229:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l245
u2490:
	line	103
	
l3231:	
	movf	(_start+1),w
	iorwf	(_start),w
	skipnz
	goto	u2501
	goto	u2500
u2501:
	goto	l3235
u2500:
	line	105
	
l3233:	
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	106
	goto	l3239
	line	107
	
l241:	
	line	109
	
l3235:	
	clrf	(23)	;volatile
	line	110
	
l3237:	
	bcf	(51/8),(51)&7	;volatile
	goto	l3239
	line	111
	
l242:	
	line	112
	
l3239:	
	movf	(_sentido+1),w
	iorwf	(_sentido),w
	skipnz
	goto	u2511
	goto	u2510
u2511:
	goto	l243
u2510:
	line	114
	
l3241:	
	bsf	(52/8),(52)&7	;volatile
	line	115
	bcf	(53/8),(53)&7	;volatile
	line	116
	goto	l3243
	line	117
	
l243:	
	line	119
	bcf	(52/8),(52)&7	;volatile
	line	120
	bsf	(53/8),(53)&7	;volatile
	goto	l3243
	line	121
	
l244:	
	line	122
	
l3243:	
	fcall	_LCD_mensaje_opciones_inicial
	line	123
	
l3245:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_espera01Almohadilla+0)+0
	movf	(??_espera01Almohadilla+0)+0,w
	movwf	(0+_estado+01h)
	goto	l245
	line	124
	
l240:	
	goto	l245
	line	125
	
l239:	
	goto	l245
	
l237:	
	goto	l245
	
l235:	
	line	126
	
l245:	
	return
	opt stack 0
GLOBAL	__end_of_espera01Almohadilla
	__end_of_espera01Almohadilla:
	signat	_espera01Almohadilla,88

;; *************** function _esperaPrimerValor *****************
;; Defined at:
;;		line 131 in file "procesoSecuencia.c"
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
	line	131
global __ptext23
__ptext23:	;psect for function _esperaPrimerValor
psect	text23
	file	"procesoSecuencia.c"
	line	131
	global	__size_of_esperaPrimerValor
	__size_of_esperaPrimerValor	equ	__end_of_esperaPrimerValor-_esperaPrimerValor
	
_esperaPrimerValor:	
;incstack = 0
	opt	stack 4
; Regs used in _esperaPrimerValor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	133
	
l3247:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l287
u2520:
	line	135
	
l3249:	
	clrf	(_nuevaTecla)
	line	136
	
l3251:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l287
u2530:
	line	138
	
l3253:	
	movf	(_tecla),w
	movwf	(??_esperaPrimerValor+0)+0
	clrf	(??_esperaPrimerValor+0)+0+1
	movf	0+(??_esperaPrimerValor+0)+0,w
	movwf	(_valor)
	movf	1+(??_esperaPrimerValor+0)+0,w
	movwf	(_valor+1)
	line	139
	
l250:	
	movlw	low(040h)
	movwf	(_esperaPrimerValor$188)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$188))+1
	goto	l3257
	
l252:	
	
l3255:	
	clrf	(_esperaPrimerValor$188)
	clrf	(_esperaPrimerValor$188+1)
	goto	l3257
	
l254:	
	
l3257:	
	movf	(_esperaPrimerValor$188),w
	iorlw	0Bh
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3259
	
l255:	
	
l3259:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l3261
	
l256:	
	
l3261:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2545:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2545
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3263:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3265
	
l257:	
	goto	l3265
	
l258:	
	goto	l3265
	
l259:	
	goto	l3265
	line	140
	
l260:	
	
l3265:	
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
	goto	l3267
	
l261:	
	
l3267:	
	movf	(_tecla),w
	addlw	low(030h)
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((??_esperaPrimerValor+0)+0)+1
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
	
l3269:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3271
	
l262:	
	
l3271:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3301
u2560:
	
l3273:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l3287
u2570:
	goto	l3277
	
l265:	
	goto	l3277
	
l3275:	
	movlw	low(040h)
	movwf	(_esperaPrimerValor$189)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$189))+1
	goto	l3279
	
l267:	
	
l3277:	
	clrf	(_esperaPrimerValor$189)
	clrf	(_esperaPrimerValor$189+1)
	goto	l3279
	
l269:	
	
l3279:	
	movf	(_esperaPrimerValor$189),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3281
	
l270:	
	
l3281:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l3283
	
l271:	
	
l3283:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimerValor+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimerValor+0)+0
	movlw	04h
	movwf	btemp+1
u2585:
	rlf	(??_esperaPrimerValor+0)+1,w
	rrf	(??_esperaPrimerValor+0)+1,f
	rrf	(??_esperaPrimerValor+0)+0,f
	decfsz	btemp+1,f
	goto	u2585
	movf	0+(??_esperaPrimerValor+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3299
	
l272:	
	goto	l3299
	
l273:	
	goto	l3299
	
l274:	
	goto	l3299
	
l264:	
	goto	l3287
	
l276:	
	
l3287:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_esperaPrimerValor$190)
	movlw	high(040h)
	movwf	((_esperaPrimerValor$190))+1
	goto	l3291
	
l278:	
	
l3289:	
	clrf	(_esperaPrimerValor$190)
	clrf	(_esperaPrimerValor$190+1)
	goto	l3291
	
l280:	
	
l3291:	
	movf	(_esperaPrimerValor$190),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3293
	
l281:	
	
l3293:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimerValor+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	indf,f
	goto	l3295
	
l282:	
	
l3295:	
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
	
l3297:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3299
	
l283:	
	goto	l3299
	
l284:	
	goto	l3299
	
l285:	
	goto	l3299
	
l275:	
	
l3299:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l3301
	
l263:	
	goto	l3301
	
l286:	
	line	141
	
l3301:	
	movlw	((fp__esperaSegundoValor-fpbase))&0ffh
	movwf	(??_esperaPrimerValor+0)+0
	movf	(??_esperaPrimerValor+0)+0,w
	movwf	(0+_estado+01h)
	goto	l287
	line	142
	
l249:	
	goto	l287
	line	143
	
l248:	
	line	144
	
l287:	
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
	
l3185:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nuevaTecla),w
	xorlw	01h
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l232
u2420:
	line	69
	
l3187:	
	clrf	(_nuevaTecla)
	line	70
	
l3189:	
	movf	(_tecla),w
	xorlw	0Ah
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l3207
u2430:
	goto	l3191
	line	72
	
l220:	
	
l3191:	
	movlw	low(040h)
	movwf	(_esperaPrimeraTecla$184)
	movlw	high(040h)
	movwf	((_esperaPrimeraTecla$184))+1
	goto	l3195
	
l222:	
	
l3193:	
	clrf	(_esperaPrimeraTecla$184)
	clrf	(_esperaPrimeraTecla$184+1)
	goto	l3195
	
l224:	
	
l3195:	
	movf	(_esperaPrimeraTecla$184),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l3197
	
l225:	
	
l3197:	
	comf	(_LCD_RS),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_esperaPrimeraTecla+0)+0,w
	andwf	indf,f
	goto	l3199
	
l226:	
	
l3199:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_esperaPrimeraTecla+0)+0
	movlw	high(080h)
	movwf	1+(??_esperaPrimeraTecla+0)+0
	movlw	04h
	movwf	btemp+1
u2445:
	rlf	(??_esperaPrimeraTecla+0)+1,w
	rrf	(??_esperaPrimeraTecla+0)+1,f
	rrf	(??_esperaPrimeraTecla+0)+0,f
	decfsz	btemp+1,f
	goto	u2445
	movf	0+(??_esperaPrimeraTecla+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3201:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3203
	
l227:	
	goto	l3203
	
l228:	
	goto	l3203
	
l229:	
	line	73
	
l3203:	
	movlw	low((STR_7-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	74
	
l3205:	
	movlw	((fp__esperaPrimerValor-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(0+_estado+01h)
	line	75
	goto	l232
	line	76
	
l219:	
	
l3207:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l232
u2450:
	line	78
	
l3209:	
	fcall	_LCD_mensaje_opciones2
	line	79
	
l3211:	
	movlw	((fp__espera01Almohadilla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_esperaPrimeraTecla+0)+0
	movf	(??_esperaPrimeraTecla+0)+0,w
	movwf	(0+_estado+01h)
	goto	l232
	line	80
	
l231:	
	goto	l232
	line	81
	
l230:	
	goto	l232
	
l218:	
	line	82
	
l232:	
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
	
l3165:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0199h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(0199h)
	subwf	(_ADC_resultado),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l3169
u2370:
	line	76
	
l3167:	
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
	goto	l114
	
l112:	
	line	80
	
l3169:	
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
	
l3159:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0333h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(0333h)
	subwf	(_ADC_resultado),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l3163
u2360:
	line	63
	
l3161:	
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
	goto	l109
	
l107:	
	line	66
	
l3163:	
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
	
l3171:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(0F5h)
	subwf	(_ADC_resultado),w
u2385:

	skipnc
	goto	u2381
	goto	u2380
u2381:
	goto	l3175
u2380:
	
l3173:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(023Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(023Eh)
	subwf	(_ADC_resultado),w
u2395:

	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l3177
u2390:
	goto	l3175
	
l119:	
	line	94
	
l3175:	
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
	goto	l3177
	line	96
	
l117:	
	line	97
	
l3177:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(023Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(023Eh)
	subwf	(_ADC_resultado),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l3181
u2400:
	line	99
	
l3179:	
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
	goto	l3181
	line	101
	
l120:	
	line	102
	
l3181:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2415
	movlw	low(0F5h)
	subwf	(_ADC_resultado),w
u2415:

	skipnc
	goto	u2411
	goto	u2410
u2411:
	goto	l122
u2410:
	line	104
	
l3183:	
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
	
l2813:	
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
	
l2815:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1761
	goto	u1760
u1761:
	goto	l2819
u1760:
	
l2817:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	0+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2821
	
l614:	
	
l2819:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	0+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_pulsado+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2821
	
l615:	
	line	219
	
l2821:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_pulsado+0)+0,w
	skipz
	goto	u1775
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_pulsado+0)+0,w
u1775:

	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l616
u1770:
	line	221
	
l2823:	
	bcf	(_TECLADO_banderas),6
	line	222
	
l2825:	
	movlw	(0)
	goto	l617
	
l2827:	
	goto	l617
	line	223
	
l616:	
	line	225
	bsf	(_TECLADO_banderas),6
	line	226
	
l2829:	
	movlw	(01h)
	goto	l617
	
l2831:	
	line	227
	
l617:	
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
	
l3013:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3015
	line	32
	
l1344:	
	line	33
	
l3015:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l1345
u2160:
	line	34
	
l3017:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1345:	
	line	35
	movlw	01h
	
u2175:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2175
	line	36
	
l3019:	
	movlw	01h
	
u2185:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2185
	line	37
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l3015
u2190:
	goto	l3021
	
l1346:	
	line	40
	
l3021:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1347
	
l3023:	
	line	41
	
l1347:	
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
	
l2713:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_TECLADO_dato)
	line	243
	
l2715:	
	bcf	(_TECLADO_banderas),7
	line	244
	
l2717:	
	bcf	(_TECLADO_banderas),6
	line	252
	
l2719:	
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
	
l2721:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1641
	goto	u1640
u1641:
	goto	l2725
u1640:
	
l2723:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2727
	
l620:	
	
l2725:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2727
	
l621:	
	line	254
	
l2727:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_leer+0)+0,w
	skipz
	goto	u1655
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_leer+0)+0,w
u1655:

	skipz
	goto	u1651
	goto	u1650
u1651:
	goto	l622
u1650:
	line	256
	
l2729:	
	bcf	(_TECLADO_banderas),6
	line	257
	
l2731:	
	movlw	(0)
	goto	l623
	
l2733:	
	goto	l623
	line	258
	
l622:	
	line	260
	bsf	(_TECLADO_banderas),6
	line	271
	goto	l2745
	line	273
	
l625:	
	
l2735:	
	movlw	low(0FEh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FEh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2747
	line	274
	
l627:	
	
l2737:	
	movlw	low(0FBh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FBh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2747
	line	275
	
l628:	
	
l2739:	
	movlw	low(0EFh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0EFh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2747
	line	276
	
l629:	
	
l2741:	
	movlw	low(0FFh)
	movwf	(TECLADO_leer@bit_a_testear)
	movlw	high(0FFh)
	movwf	((TECLADO_leer@bit_a_testear))+1
	goto	l2747
	line	277
	
l2743:	
	goto	l2747
	line	271
	
l624:	
	
l2745:	
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
	goto	l2735
	xorlw	60^15	; case 60
	skipnz
	goto	l2737
	xorlw	240^60	; case 240
	skipnz
	goto	l2739
	goto	l2741
	opt asmopt_on

	line	277
	
l626:	
	line	282
	
l2747:	
	clrf	(TECLADO_leer@i)
	
l2749:	
	movlw	(04h)
	subwf	(TECLADO_leer@i),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l2753
u1660:
	goto	l2803
	
l2751:	
	goto	l2803
	line	283
	
l630:	
	line	285
	
l2753:	
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
	
l2755:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u1671
	goto	u1670
u1671:
	goto	l2759
u1670:
	
l2757:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2761
	
l632:	
	
l2759:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	0+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura)
	movf	1+(??_TECLADO_leer+0)+0,w
	movwf	(_REBOTES_lectura+1)
	goto	l2761
	
l633:	
	line	289
	
l2761:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_leer+0)+0,w
	skipz
	goto	u1685
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_leer+0)+0,w
u1685:

	skipnz
	goto	u1681
	goto	u1680
u1681:
	goto	l2765
u1680:
	goto	l2803
	line	290
	
l2763:	
	goto	l2803
	
l634:	
	line	295
	
l2765:	
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
	
l2767:	
	movlw	(04h)
	subwf	(TECLADO_leer@i),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2753
u1690:
	goto	l2803
	
l631:	
	line	306
	goto	l2803
	line	311
	
l636:	
	line	312
	
l2769:	
	movlw	06h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1701
	goto	u1700
u1701:
	goto	l2773
u1700:
	goto	l2805
	
l2771:	
	goto	l2805
	line	313
	
l637:	
	
l2773:	
	movlw	05h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1711
	goto	u1710
u1711:
	goto	l2777
u1710:
	
l2775:	
	movlw	(01h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2805
	line	314
	
l639:	
	
l2777:	
	movlw	03h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l2781
u1720:
	
l2779:	
	movlw	(02h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2805
	line	315
	
l641:	
	
l2781:	
	movlw	(0)
	goto	l623
	
l2783:	
	goto	l623
	
l642:	
	goto	l2805
	
l640:	
	goto	l2805
	
l638:	
	line	316
	goto	l2805
	line	317
	
l644:	
	line	318
	
l2785:	
	movlw	0C0h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1731
	goto	u1730
u1731:
	goto	l2789
u1730:
	goto	l2805
	
l2787:	
	goto	l2805
	line	319
	
l645:	
	
l2789:	
	movlw	0A0h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l2793
u1740:
	
l2791:	
	movlw	(01h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2805
	line	320
	
l647:	
	
l2793:	
	movlw	060h
	xorwf	(_REBOTES_lectura),w
	iorwf	(_REBOTES_lectura+1),w
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l2797
u1750:
	
l2795:	
	movlw	(02h)
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	addwf	(_TECLADO_dato),f
	goto	l2805
	line	321
	
l649:	
	
l2797:	
	movlw	(0)
	goto	l623
	
l2799:	
	goto	l623
	
l650:	
	goto	l2805
	
l648:	
	goto	l2805
	
l646:	
	line	322
	goto	l2805
	line	324
	
l2801:	
	goto	l2805
	line	306
	
l635:	
	
l2803:	
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
	goto	l2769
	xorlw	224^7	; case 224
	skipnz
	goto	l2785
	goto	l2805
	opt asmopt_on

	line	324
	
l643:	
	line	327
	
l2805:	
	movf	(_TECLADO_dato),w
	addlw	low((_tabla_3col-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_TECLADO_leer+0)+0
	movf	(??_TECLADO_leer+0)+0,w
	movwf	(_TECLADO_dato)
	line	330
	
l2807:	
	bsf	(_TECLADO_banderas),7
	line	331
	
l2809:	
	movlw	(01h)
	goto	l623
	
l2811:	
	line	332
	
l623:	
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
	
l188:	
	
l2675:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_mensaje_opciones_inicial$175)
	movlw	high(040h)
	movwf	((_LCD_mensaje_opciones_inicial$175))+1
	goto	l2679
	
l190:	
	
l2677:	
	clrf	(_LCD_mensaje_opciones_inicial$175)
	clrf	(_LCD_mensaje_opciones_inicial$175+1)
	goto	l2679
	
l192:	
	
l2679:	
	movf	(_LCD_mensaje_opciones_inicial$175),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movf	(??_LCD_mensaje_opciones_inicial+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2681
	
l193:	
	
l2681:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_mensaje_opciones_inicial+0)+0,w
	andwf	indf,f
	goto	l2683
	
l194:	
	
l2683:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_mensaje_opciones_inicial+0)+0
	movlw	04h
	movwf	btemp+1
u1605:
	rlf	(??_LCD_mensaje_opciones_inicial+0)+1,w
	rrf	(??_LCD_mensaje_opciones_inicial+0)+1,f
	rrf	(??_LCD_mensaje_opciones_inicial+0)+0,f
	decfsz	btemp+1,f
	goto	u1605
	movf	0+(??_LCD_mensaje_opciones_inicial+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2685:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2687
	
l195:	
	goto	l2687
	
l196:	
	goto	l2687
	
l197:	
	line	46
	
l2687:	
	movlw	low((STR_2-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	47
	
l198:	
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
	
l201:	
	
l2689:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_mensaje_opciones2$178)
	movlw	high(040h)
	movwf	((_LCD_mensaje_opciones2$178))+1
	goto	l2693
	
l203:	
	
l2691:	
	clrf	(_LCD_mensaje_opciones2$178)
	clrf	(_LCD_mensaje_opciones2$178+1)
	goto	l2693
	
l205:	
	
l2693:	
	movf	(_LCD_mensaje_opciones2$178),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movf	(??_LCD_mensaje_opciones2+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2695
	
l206:	
	
l2695:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_mensaje_opciones2+0)+0,w
	andwf	indf,f
	goto	l2697
	
l207:	
	
l2697:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_mensaje_opciones2+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_mensaje_opciones2+0)+0
	movlw	04h
	movwf	btemp+1
u1615:
	rlf	(??_LCD_mensaje_opciones2+0)+1,w
	rrf	(??_LCD_mensaje_opciones2+0)+1,f
	rrf	(??_LCD_mensaje_opciones2+0)+0,f
	decfsz	btemp+1,f
	goto	u1615
	movf	0+(??_LCD_mensaje_opciones2+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2699:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2701
	
l208:	
	goto	l2701
	
l209:	
	goto	l2701
	
l210:	
	line	52
	
l2701:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_start),w
	iorwf	(_start+1),w
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l2705
u1620:
	line	53
	
l2703:	
	movlw	low((STR_3-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l2707
	line	54
	
l211:	
	line	55
	
l2705:	
	movlw	low((STR_4-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l2707
	
l212:	
	line	56
	
l2707:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_sentido),w
	iorwf	(_sentido+1),w
	skipz
	goto	u1631
	goto	u1630
u1631:
	goto	l2711
u1630:
	line	57
	
l2709:	
	movlw	low((STR_5-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l215
	line	58
	
l213:	
	line	59
	
l2711:	
	movlw	low((STR_6-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l215
	
l214:	
	line	60
	
l215:	
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
	
l2583:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_enviaCadena@i)
	goto	l2623
	line	244
	
l839:	
	goto	l2585
	
l840:	
	
l2585:	
	movf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	iorwf	indf,f
	goto	l2587
	
l841:	
	
l2587:	
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
u1545:
	clrc
	rrf	(??_LCD_enviaCadena+0)+0,f
	addlw	-1
	skipz
	goto	u1545
	movf	0+(??_LCD_enviaCadena+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2589:	
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
	goto	l2591
	
l842:	
	
l2591:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	addwf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l2621
u1550:
	
l2593:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l2607
u1560:
	goto	l2597
	
l845:	
	goto	l2597
	
l2595:	
	movlw	low(040h)
	movwf	(_LCD_enviaCadena$418)
	movlw	high(040h)
	movwf	((_LCD_enviaCadena$418))+1
	goto	l2599
	
l847:	
	
l2597:	
	clrf	(_LCD_enviaCadena$418)
	clrf	(_LCD_enviaCadena$418+1)
	goto	l2599
	
l849:	
	
l2599:	
	movf	(_LCD_enviaCadena$418),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2601
	
l850:	
	
l2601:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	indf,f
	goto	l2603
	
l851:	
	
l2603:	
	movlw	low(080h)
	iorwf	(_LCD_var_cursor),w
	movwf	(??_LCD_enviaCadena+0)+0
	movlw	high(080h)
	movwf	1+(??_LCD_enviaCadena+0)+0
	movlw	04h
	movwf	btemp+1
u1575:
	rlf	(??_LCD_enviaCadena+0)+1,w
	rrf	(??_LCD_enviaCadena+0)+1,f
	rrf	(??_LCD_enviaCadena+0)+0,f
	decfsz	btemp+1,f
	goto	u1575
	movf	0+(??_LCD_enviaCadena+0)+0,w
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l2605:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2619
	
l852:	
	goto	l2619
	
l853:	
	goto	l2619
	
l854:	
	goto	l2619
	
l844:	
	goto	l2607
	
l856:	
	
l2607:	
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_LCD_enviaCadena$419)
	movlw	high(040h)
	movwf	((_LCD_enviaCadena$419))+1
	goto	l2611
	
l858:	
	
l2609:	
	clrf	(_LCD_enviaCadena$419)
	clrf	(_LCD_enviaCadena$419+1)
	goto	l2611
	
l860:	
	
l2611:	
	movf	(_LCD_enviaCadena$419),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	movwf	(_LCD_var_cursor)
	goto	l2613
	
l861:	
	
l2613:	
	comf	(_LCD_RS),w
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	indf,f
	goto	l2615
	
l862:	
	
l2615:	
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
	
l2617:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l2619
	
l863:	
	goto	l2619
	
l864:	
	goto	l2619
	
l865:	
	goto	l2619
	
l855:	
	
l2619:	
	movlw	(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	andwf	(_LCD_var_cursor),f
	goto	l2621
	
l843:	
	goto	l2621
	
l866:	
	line	243
	
l2621:	
	movlw	(01h)
	movwf	(??_LCD_enviaCadena+0)+0
	movf	(??_LCD_enviaCadena+0)+0,w
	addwf	(LCD_enviaCadena@i),f
	goto	l2623
	
l838:	
	
l2623:	
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
	goto	u1591
	goto	u1590
u1591:
	goto	l2585
u1590:
	goto	l868
	
l867:	
	line	245
	
l868:	
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
	
l2561:	
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
	
l2563:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0F0h
	skipz
	goto	u1521
	goto	u1520
u1521:
	goto	l2567
u1520:
	line	156
	
l2565:	
	movf	(LCD_envia_4bits@dato),w
	movwf	(??_LCD_envia_4bits+0)+0
	movlw	(04h)-1
u1535:
	clrc
	rlf	(??_LCD_envia_4bits+0)+0,f
	addlw	-1
	skipz
	goto	u1535
	clrc
	rlf	(??_LCD_envia_4bits+0)+0,w
	andlw	0F0h
	movwf	(??_LCD_envia_4bits+1)+0
	movf	(??_LCD_envia_4bits+1)+0,w
	movwf	(LCD_envia_4bits@dato)
	goto	l2567
	line	157
	
l761:	
	line	159
	
l2567:	
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
	
l2569:	
	comf	(_LCD_BUS_PORT_PINES),w
	andwf	(LCD_envia_4bits@a),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(??_LCD_envia_4bits+0)+0,w
	movwf	(LCD_envia_4bits@a)
	line	161
	
l2571:	
	movf	(LCD_envia_4bits@dato),w
	iorwf	(LCD_envia_4bits@a),w
	movwf	(??_LCD_envia_4bits+0)+0
	movf	(??_LCD_envia_4bits+0)+0,w
	movwf	(LCD_envia_4bits@dato)
	line	164
	
l2573:	
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
	
l2575:	
	movf	(_LCD_BUS_PORT_PUNTERO),w
	movwf	fsr0
	bcf	status,7
	btfsc	(_LCD_BUS_PORT_PUNTERO+1),0
	bsf	status,7
	
	movf	(LCD_envia_4bits@dato),w
	movwf	indf
	line	168
	
l2577:	
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
	
l2579:	
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
	
l2581:	
	opt asmopt_off
movlw	3
movwf	((??_LCD_envia_4bits+0)+0+1),f
	movlw	151
movwf	((??_LCD_envia_4bits+0)+0),f
u3107:
	decfsz	((??_LCD_envia_4bits+0)+0),f
	goto	u3107
	decfsz	((??_LCD_envia_4bits+0)+0+1),f
	goto	u3107
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
	
l762:	
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
	
i1l3527:	
	btfss	(90/8),(90)&7	;volatile
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l3551
u287_20:
	
i1l3529:	
	btfss	(93/8),(93)&7	;volatile
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l3551
u288_20:
	line	46
	
i1l3531:	
	bcf	(90/8),(90)&7	;volatile
	line	47
	
i1l3533:	
	movlw	(0Ch)
	movwf	(1)	;volatile
	line	49
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_cuenta_ints_T0)^080h,f
	skipnc
	incf	(_cuenta_ints_T0+1)^080h,f
	movlw	high(01h)
	addwf	(_cuenta_ints_T0+1)^080h,f
	line	50
	movlw	low(01h)
	addwf	(_cuenta_1s)^080h,f
	skipnc
	incf	(_cuenta_1s+1)^080h,f
	movlw	high(01h)
	addwf	(_cuenta_1s+1)^080h,f
	line	52
	movlw	04h
	xorwf	(_cuenta_ints_T0)^080h,w
	iorwf	(_cuenta_ints_T0+1)^080h,w
	skipz
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l3545
u289_20:
	line	54
	
i1l3535:	
	clrf	(_cuenta_ints_T0)^080h
	clrf	(_cuenta_ints_T0+1)^080h
	line	55
	
i1l3537:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14+1),w	;volatile
	clrf	(_valor_TMR1+1)
	addwf	(_valor_TMR1+1)
	movf	(14),w	;volatile
	clrf	(_valor_TMR1)
	addwf	(_valor_TMR1)

	line	56
	
i1l3539:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	59
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
	line	60
	
i1l3541:	
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

	line	61
	
i1l3543:	
	movf	(_Ton)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	goto	i1l3545
	line	62
	
i1l450:	
	line	64
	
i1l3545:	
	movlw	010h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_cuenta_1s)^080h,w
	iorwf	(_cuenta_1s+1)^080h,w
	skipz
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l453
u290_20:
	line	66
	
i1l3547:	
	clrf	(_cuenta_1s)^080h
	clrf	(_cuenta_1s+1)^080h
	line	67
	
i1l3549:	
	movlw	low(01h)
	movwf	(_tiempo_1s)^080h
	movlw	high(01h)
	movwf	((_tiempo_1s)^080h)+1
	goto	i1l453
	line	68
	
i1l451:	
	line	69
	goto	i1l453
	line	71
	
i1l449:	
	line	74
	
i1l3551:	
	clrf	(11)	;volatile
	line	75
	
i1l3553:	
	bcf	(88/8),(88)&7	;volatile
	goto	i1l453
	line	76
	
i1l452:	
	line	77
	
i1l453:	
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
	
i1l3457:	
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
	
i1l3459:	
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
	goto	u282_25
	movf	(_salidaPI),w
	subwf	0+(??_control_PI+0)+0,w
u282_25:

	skipnc
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l3463
u282_20:
	line	33
	
i1l3461:	
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
	goto	i1l3463
	
i1l444:	
	line	34
	
i1l3463:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_salidaPI+1),7
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l3467
u283_20:
	line	35
	
i1l3465:	
	clrf	(_salidaPI)
	clrf	(_salidaPI+1)
	goto	i1l3467
	
i1l445:	
	line	36
	
i1l3467:	
	movf	(_salidaPI+1),w
	movwf	(??_control_PI+0)+0+1
	movf	(_salidaPI),w
	movwf	(??_control_PI+0)+0
	movlw	04h
	movwf	btemp+1
u284_25:
	rlf	(??_control_PI+0)+1,w
	rrf	(??_control_PI+0)+1,f
	rrf	(??_control_PI+0)+0,f
	decfsz	btemp+1,f
	goto	u284_25
	movf	0+(??_control_PI+0)+0,w
	movwf	(?_control_PI)
	movf	1+(??_control_PI+0)+0,w
	movwf	(?_control_PI+1)
	goto	i1l446
	
i1l3469:	
	line	37
	
i1l446:	
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
