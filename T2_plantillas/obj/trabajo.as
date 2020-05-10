opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 56723"

opt pagewidth 120

	opt pm

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
	global	_salidaPI
	global	_estado
	global	_ADC_resultado
	global	_LCD_BUS_PORT_PUNTERO
	global	_LCD_BUS_PORT_TRIS_PUNTERO
	global	_LCD_E_PORT_PUNTERO
	global	_LCD_E_PORT_TRIS_PUNTERO
	global	_LCD_RS_PORT_PUNTERO
	global	_LCD_RS_PORT_TRIS_PUNTERO
	global	_REBOTES_lectura
	global	_TECLADO_PORT_FIL_PUNTERO
	global	_max_duty
	global	_num_pulsos_ref
	global	_valor
	global	_valor_TMR1
	global	_LCD_BUS_PORT_PINES
	global	_LCD_E
	global	_LCD_RS
	global	_LCD_var_cursor
	global	_TECLADO_COL_PINES
	global	_TECLADO_FIL_PINES
	global	_TECLADO_config
	global	_TECLADO_dato
	global	_nuevaTecla
	global	_tecla
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
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_salidaPI:
       ds      2

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

_LCD_E_PORT_TRIS_PUNTERO:
       ds      2

_LCD_RS_PORT_PUNTERO:
       ds      2

_LCD_RS_PORT_TRIS_PUNTERO:
       ds      2

_REBOTES_lectura:
       ds      2

_TECLADO_PORT_FIL_PUNTERO:
       ds      2

_max_duty:
       ds      2

_num_pulsos_ref:
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

_LCD_var_cursor:
       ds      1

_TECLADO_COL_PINES:
       ds      1

_TECLADO_FIL_PINES:
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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
??_main:	; 0 bytes @ 0x0
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
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_rutinaInterrupcion:	; 0 bytes @ 0x0
	ds	3
??_init_registros:	; 0 bytes @ 0x3
??_init_Timer0:	; 0 bytes @ 0x3
??_init_Timer1:	; 0 bytes @ 0x3
??_init_Timer2:	; 0 bytes @ 0x3
??_init_ADC:	; 0 bytes @ 0x3
??_init_procesoTeclado:	; 0 bytes @ 0x3
??_init_procesoSecuencia:	; 0 bytes @ 0x3
??_init_procesoHisteresis:	; 0 bytes @ 0x3
??_LCD_envia_4bits:	; 0 bytes @ 0x3
??_estado100:	; 0 bytes @ 0x3
??_estado10:	; 0 bytes @ 0x3
??_estado50:	; 0 bytes @ 0x3
??_esperaKp:	; 0 bytes @ 0x3
??_esperaKi:	; 0 bytes @ 0x3
??_TECLADO_leer:	; 0 bytes @ 0x3
??_TECLADO_pulsado:	; 0 bytes @ 0x3
??_TECLADO_ini:	; 0 bytes @ 0x3
??_isdigit:	; 0 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	_isdigit$639
_isdigit$639:	; 1 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x4
	ds	1
??_esperaSoltarTecla:	; 0 bytes @ 0x5
	global	TECLADO_leer@i
TECLADO_leer@i:	; 1 bytes @ 0x5
	global	LCD_envia_4bits@LCD_var_TRIS
LCD_envia_4bits@LCD_var_TRIS:	; 1 bytes @ 0x5
	global	_TECLADO_ini$364
_TECLADO_ini$364:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	ds	1
	global	LCD_envia_4bits@a
LCD_envia_4bits@a:	; 1 bytes @ 0x6
	global	TECLADO_leer@bit_a_testear
TECLADO_leer@bit_a_testear:	; 2 bytes @ 0x6
	ds	1
??___lwdiv:	; 0 bytes @ 0x7
??___wmul:	; 0 bytes @ 0x7
	global	TECLADO_ini@config
TECLADO_ini@config:	; 1 bytes @ 0x7
	global	LCD_envia_4bits@dato
LCD_envia_4bits@dato:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	ds	1
?_LCD_enviaCadena:	; 0 bytes @ 0x8
??_esperaPrimerValor:	; 0 bytes @ 0x8
??_esperaPulsarTecla:	; 0 bytes @ 0x8
??_LCD_enciende:	; 0 bytes @ 0x8
	global	LCD_enviaCadena@cadena
LCD_enviaCadena@cadena:	; 2 bytes @ 0x8
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x8
	ds	2
??_LCD_enviaCadena:	; 0 bytes @ 0xA
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xA
	global	LCD_enciende@config
LCD_enciende@config:	; 1 bytes @ 0xA
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xA
	ds	1
?_LCD_ini:	; 0 bytes @ 0xB
	global	LCD_ini@RS_PIN
LCD_ini@RS_PIN:	; 1 bytes @ 0xB
	ds	1
	global	LCD_ini@E_PIN
LCD_ini@E_PIN:	; 1 bytes @ 0xC
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xC
	ds	1
??_LCD_ini:	; 0 bytes @ 0xD
	ds	1
??___lwmod:	; 0 bytes @ 0xE
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xE
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xF
	global	LCD_enviaCadena@i
LCD_enviaCadena@i:	; 1 bytes @ 0xF
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xF
	global	_LCD_ini$410
_LCD_ini$410:	; 2 bytes @ 0xF
	ds	1
??_LCD_mensaje_opciones_inicial:	; 0 bytes @ 0x10
??_LCD_mensaje_opciones2:	; 0 bytes @ 0x10
	ds	1
	global	LCD_ini@config
LCD_ini@config:	; 1 bytes @ 0x11
	ds	2
??_init_librerias:	; 0 bytes @ 0x13
??_esperaPrimeraTecla:	; 0 bytes @ 0x13
??_espera01Almohadilla:	; 0 bytes @ 0x13
??_esperaSegundoValor:	; 0 bytes @ 0x13
??_esperaTercerValor:	; 0 bytes @ 0x13
??_esperaAlmohadillaValor:	; 0 bytes @ 0x13
	ds	1
??_sprintf:	; 0 bytes @ 0x14
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x17
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x18
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x19
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x1A
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1E
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1F
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x21
	ds	1
;!
;!Data Sizes:
;!    Strings     85
;!    Constant    22
;!    Data        10
;!    BSS         73
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     34      77
;!    BANK1            80      3      41
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0   15315
;!                                              0 BANK1      3     3      0
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
;!                                             15 BANK0     19    14      5
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      99
;!                                              3 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     362
;!                                             10 BANK0      5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     371
;!                                              3 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _init_registros                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoTeclado                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoSecuencia                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_procesoHisteresis                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_librerias                                       0     0      0    2184
;!                            _LCD_ini
;!       _LCD_mensaje_opciones_inicial
;!                        _TECLADO_ini
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_ini                                          5     5      0     192
;!                                              3 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _LCD_ini                                              7     5      2     947
;!                                             11 BANK0      7     5      2
;!                       _LCD_enciende
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_enciende                                         3     3      0     142
;!                                              8 BANK0      3     3      0
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer2                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer1                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_Timer0                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init_ADC                                             1     1      0       0
;!                                              3 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _estado50                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _estado100                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _estado10                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _esperaTercerValor                                    7     7      0    1913
;!                                             19 BANK0      7     7      0
;!                    _LCD_envia_4bits
;!       _LCD_mensaje_opciones_inicial
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (1) _esperaSoltarTecla                                    0     0      0       0
;!                    _TECLADO_pulsado
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_pulsado                                      2     2      0       0
;!                                              3 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaSegundoValor                                   7     7      0    1913
;!                                             19 BANK0      7     7      0
;!                    _LCD_envia_4bits
;!       _LCD_mensaje_opciones_inicial
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     646
;!                                              3 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _esperaPulsarTecla                                    0     0      0     145
;!                       _TECLADO_leer
;! ---------------------------------------------------------------------------------
;! (2) _TECLADO_leer                                         5     5      0     145
;!                                              3 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _esperaPrimeraTecla                                   3     3      0    2090
;!                                             19 BANK0      3     3      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;!              _LCD_mensaje_opciones2
;! ---------------------------------------------------------------------------------
;! (1) _esperaPrimerValor                                    7     7      0     222
;!                                              8 BANK0      7     7      0
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (1) _esperaKp                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _esperaKi                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _esperaAlmohadillaValor                               0     0      0    1045
;!       _LCD_mensaje_opciones_inicial
;! ---------------------------------------------------------------------------------
;! (1) _espera01Almohadilla                                  0     0      0    2090
;!              _LCD_mensaje_opciones2
;!       _LCD_mensaje_opciones_inicial
;! ---------------------------------------------------------------------------------
;! (2) _LCD_mensaje_opciones_inicial                         3     3      0    1045
;!                                             16 BANK0      3     3      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (2) _LCD_mensaje_opciones2                                3     3      0    1045
;!                                             16 BANK0      3     3      0
;!                    _LCD_enviaCadena
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_enviaCadena                                      8     6      2     897
;!                                              8 BANK0      8     6      2
;!                    _LCD_envia_4bits
;! ---------------------------------------------------------------------------------
;! (3) _LCD_envia_4bits                                      5     5      0     111
;!                                              3 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _rutinaInterrupcion                                   3     3      0     337
;!                                              0 BANK0      3     3      0
;!                         _control_PI
;! ---------------------------------------------------------------------------------
;! (6) _control_PI                                           6     4      2     337
;!                                              6 COMMON     6     4      2
;!                           i1___wmul
;! ---------------------------------------------------------------------------------
;! (7) i1___wmul                                             6     2      4     218
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
;!BANK1               50      3      29       7       51.3%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     22      4D       5       96.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       E       1      100.0%
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
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
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
	
l4567:	
	fcall	_init_registros
	line	68
	fcall	_init_Timer0
	line	70
	
l4569:	
	fcall	_init_Timer1
	line	72
	
l4571:	
	fcall	_init_Timer2
	line	74
	
l4573:	
	fcall	_init_ADC
	line	76
	
l4575:	
	fcall	_init_procesoTeclado
	line	78
	
l4577:	
	fcall	_init_procesoSecuencia
	line	80
	
l4579:	
	fcall	_init_procesoHisteresis
	line	82
	
l4581:	
	fcall	_init_librerias
	line	84
	
l4583:	
	movlw	064h
	movwf	(_num_pulsos_ref)
	clrf	(_num_pulsos_ref+1)
	line	86
	
l4585:	
	bsf	(52/8),(52)&7	;volatile
	line	87
	
l4587:	
	bcf	(53/8),(53)&7	;volatile
	line	89
	
l4589:	
	bsf	(95/8),(95)&7	;volatile
	line	96
	
l4591:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_estado),w
	fcall	fptable
	line	98
	
l4593:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+_estado+01h),w
	fcall	fptable
	line	100
	
l4595:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+_estado+02h),w
	fcall	fptable
	line	102
	
l4597:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tiempo_1s+1)^080h,w
	iorwf	(_tiempo_1s)^080h,w
	skipnz
	goto	u3421
	goto	u3420
u3421:
	goto	l4591
u3420:
	line	104
	
l4599:	
	clrf	(_tiempo_1s)^080h
	clrf	(_tiempo_1s+1)^080h
	line	105
	
l4601:	
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sprintf@f)
	movf	(_num_pulsos_ref+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_num_pulsos_ref),w
	movwf	0+(?_sprintf)+01h
	movf	(_valor_TMR1+1),w
	movwf	1+(?_sprintf)+03h
	movf	(_valor_TMR1),w
	movwf	0+(?_sprintf)+03h
	movlw	(_cadena)&0ffh
	fcall	_sprintf
	line	106
	
l4605:	
	
l4607:	
	clrf	(_LCD_var_cursor)
	
l4609:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4611:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	swapf	(??_main+0)^080h+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4613:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	line	107
	
l4615:	
	movlw	(_cadena&0ffh)
	movwf	(LCD_enviaCadena@cadena)
	movlw	(0x0)
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	112
	
l4617:	
	bsf	(250/8),(250)&7	;volatile
	line	116
	
l4619:	
	opt asmopt_off
movlw	33
	bsf	status, 5	;RP0=1, select bank1
movwf	(??_main+0)^080h+0,f
u3437:
decfsz	(??_main+0)^080h+0,f
	goto	u3437
opt asmopt_on

	line	121
	
l4621:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(_ADC_resultado+1)
	clrf	(_ADC_resultado)
	
l4623:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(_ADC_resultado),f
	goto	l4591
	global	start
	ljmp	start
	opt stack 0
	line	127
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
;;  f               1   15[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  sp              1   30[BANK0 ] PTR unsigned char 
;;		 -> cadena(20), 
;;  _val            4   26[BANK0 ] struct .
;;  width           2   31[BANK0 ] int 
;;  c               1   33[BANK0 ] char 
;;  flag            1   25[BANK0 ] unsigned char 
;;  prec            1   24[BANK0 ] char 
;;  ap              1   23[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   15[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      19       0       0       0
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
	movwf	(sprintf@sp)
	line	542
	
l4155:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	545
	goto	l4239
	line	547
	
l4157:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2901
	goto	u2900
u2901:
	goto	l4163
u2900:
	line	550
	
l4159:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4161:	
	incf	(sprintf@sp),f
	line	551
	goto	l4239
	line	555
	
l4163:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
	clrf	(sprintf@flag)
	line	606
	
l4165:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u2911
	goto	u2910
u2911:
	goto	l4179
u2910:
	line	607
	
l4167:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	609
	
l4169:	
	movlw	0Ah
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movf	(sprintf@width+1),w
	movwf	(___wmul@multiplicand+1)
	movf	(sprintf@width),w
	movwf	(___wmul@multiplicand)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(sprintf@width+1)
	movf	(0+(?___wmul)),w
	movwf	(sprintf@width)
	line	610
	
l4171:	
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
	
l4173:	
	incf	(sprintf@f),f
	line	611
	
l4175:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2921
	goto	u2920
u2921:
	goto	l4169
u2920:
	line	644
	
l4179:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
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
	goto	l4241
	xorlw	100^0	; case 100
	skipnz
	goto	l4181
	xorlw	105^100	; case 105
	skipnz
	goto	l4181
	goto	l4239
	opt asmopt_on

	line	1268
	
l4181:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l4183:	
	incf	(sprintf@ap),f
	incf	(sprintf@ap),f
	line	1270
	
l4185:	
	btfss	(sprintf@_val+1),7
	goto	u2931
	goto	u2930
u2931:
	goto	l4191
u2930:
	line	1271
	
l4187:	
	movlw	(03h)
	iorwf	(sprintf@flag),f
	line	1272
	
l4189:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	line	1314
	
l4191:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1315
	
l4195:	
	clrc
	rlf	(sprintf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	fcall	stringdir
	movwf	(??_sprintf+0)+0+1
	movf	1+(??_sprintf+0)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u2945
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@_val),w
u2945:
	skipnc
	goto	u2941
	goto	u2940
u2941:
	goto	l4199
u2940:
	goto	l4203
	line	1314
	
l4199:	
	incf	(sprintf@c),f
	
l4201:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l4195
u2950:
	line	1354
	
l4203:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2961
	goto	u2960
u2961:
	goto	l4209
u2960:
	
l4205:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l4209
u2970:
	line	1355
	
l4207:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	line	1390
	
l4209:	
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
	goto	u2985
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u2985:

	skipnc
	goto	u2981
	goto	u2980
u2981:
	goto	l4213
u2980:
	line	1391
	
l4211:	
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
	goto	l4215
	line	1393
	
l4213:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	1437
	
l4215:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2991
	goto	u2990
u2991:
	goto	l4223
u2990:
	line	1439
	
l4217:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4219:	
	incf	(sprintf@sp),f
	line	1440
	
l4221:	
	movlw	-1
	addwf	(sprintf@width),f
	skipc
	decf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l4217
u3000:
	line	1447
	
l4223:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l4229
u3010:
	line	1448
	
l4225:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4227:	
	incf	(sprintf@sp),f
	line	1481
	
l4229:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1483
	goto	l4237
	line	1498
	
l4231:	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	clrc
	rlf	(sprintf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	line	1533
	
l4233:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4235:	
	incf	(sprintf@sp),f
	line	1483
	
l4237:	
	decf	(sprintf@prec),f
	incf	((sprintf@prec)),w
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l4231
u3020:
	line	545
	
l4239:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l4157
u3030:
	line	1547
	
l4241:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1550
	
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
;;  c               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
	movwf	(isdigit@c)
	line	14
	
l4035:	
	clrf	(_isdigit$639)
	
l4037:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l4043
u2770:
	
l4039:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l4043
u2780:
	
l4041:	
	clrf	(_isdigit$639)
	incf	(_isdigit$639),f
	
l4043:	
	rrf	(_isdigit$639),w
	
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
;;  divisor         2   10[BANK0 ] unsigned int 
;;  dividend        2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
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
	
l4073:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2831
	goto	u2830
u2831:
	goto	l4089
u2830:
	line	14
	
l4075:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l4079
	line	16
	
l4077:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l4079:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l4077
u2840:
	line	20
	
l4081:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2855
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2855:
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l4085
u2850:
	line	21
	
l4083:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l4085:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l4087:	
	decfsz	(___lwmod@counter),f
	goto	u2861
	goto	u2860
u2861:
	goto	l4081
u2860:
	line	25
	
l4089:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
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
;;  divisor         2    3[BANK0 ] unsigned int 
;;  dividend        2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    8[BANK0 ] unsigned int 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
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
	
l4047:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4049:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l4069
u2790:
	line	16
	
l4051:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4055
	line	18
	
l4053:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l4055:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l4053
u2800:
	line	22
	
l4057:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l4059:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2815
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2815:
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l4065
u2810:
	line	24
	
l4061:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4063:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l4065:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l4067:	
	decfsz	(___lwdiv@counter),f
	goto	u2821
	goto	u2820
u2821:
	goto	l4057
u2820:
	line	30
	
l4069:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
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
;;		On entry : 17F/0
;;		On exit  : 17F/20
;;		Unchanged: 11F/0
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
	
l4109:	
	movlw	(066h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	33
	
l566:	
	btfss	(1146/8)^080h,(1146)&7	;volatile
	goto	u2891
	goto	u2890
u2891:
	goto	l566
u2890:
	line	36
	
l4111:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	37
	clrf	(6)	;volatile
	line	38
	
l4113:	
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	39
	
l4115:	
	movlw	(03Fh)
	movwf	(133)^080h	;volatile
	line	40
	
l4117:	
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
;;		On exit  : 60/0
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
	
l4145:	
	movlw	((fp__esperaPulsarTecla-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l4147:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
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
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l4149:	
	movlw	((fp__estado100-fpbase))&0ffh
	movwf	(0+_estado+02h)
	line	56
	movlw	0F9h
	movwf	(_max_duty)
	clrf	(_max_duty+1)
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
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
	
l4151:	
	movlw	(04Ah)
	fcall	_TECLADO_ini
	line	145
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(LCD_ini@RS_PIN)
	movlw	(040h)
	movwf	(LCD_ini@E_PIN)
	movlw	(0)
	fcall	_LCD_ini
	line	147
	
l4153:	
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
;;  config          1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
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
	movwf	(TECLADO_ini@config)
	line	128
	
l3915:	
	movf	(TECLADO_ini@config),w
	movwf	(_TECLADO_config)	;volatile
	line	130
	
l3917:	
	btfss	(TECLADO_ini@config),(0)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l616
u2540:
	
l3919:	
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
	goto	u2551
	goto	u2550
u2551:
	goto	l3923
u2550:
	
l3921:	
	movlw	0F0h
	movwf	(_TECLADO_ini$364)
	clrf	(_TECLADO_ini$364+1)
	goto	l622
	
l3923:	
	movlw	0Fh
	movwf	(_TECLADO_ini$364)
	clrf	(_TECLADO_ini$364+1)
	
l622:	
	movf	(_TECLADO_ini$364),w
	movwf	(_TECLADO_FIL_PINES)
	line	133
	
l3925:	
	btfss	(TECLADO_ini@config),(1)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l624
u2560:
	
l3927:	
	movlw	high(6)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_TECLADO_PORT_COL_PUNTERO+1)^080h
	movlw	low(6)
	movwf	(_TECLADO_PORT_COL_PUNTERO)^080h
	goto	l3937
	
l624:	
	movlw	high(5)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_TECLADO_PORT_COL_PUNTERO+1)^080h
	movlw	low(5)
	movwf	(_TECLADO_PORT_COL_PUNTERO)^080h
	goto	l3937
	line	138
	
l3929:	
	movlw	(07h)
	movwf	(_TECLADO_COL_PINES)
	line	139
	goto	l629
	line	140
	
l3931:	
	movlw	(038h)
	movwf	(_TECLADO_COL_PINES)
	line	141
	goto	l629
	line	142
	
l3933:	
	movlw	(0E0h)
	movwf	(_TECLADO_COL_PINES)
	line	143
	goto	l629
	line	135
	
l3937:	
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
	goto	l4645
	goto	l629
	opt asmopt_on
	
l4645:	
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
	goto	l3929
	xorlw	16^8	; case 16
	skipnz
	goto	l3931
	xorlw	24^16	; case 24
	skipnz
	goto	l3933
	goto	l629
	opt asmopt_on

	line	144
	
l629:	
	line	150
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u2571
	goto	u2570
u2571:
	goto	l3941
u2570:
	line	154
	
l3939:	
	movf	(_TECLADO_COL_PINES),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	167
	goto	l633
	line	171
	
l3941:	
	movf	(_TECLADO_COL_PINES),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	line	175
	
l3943:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_TECLADO_config),(6)&7	;volatile
	goto	u2581
	goto	u2580
u2581:
	goto	l633
u2580:
	line	178
	
l3945:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1039/8)^080h,(1039)&7	;volatile
	line	195
	
l633:	
	line	201
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_TECLADO_config),(0)&7	;volatile
	goto	u2591
	goto	u2590
u2591:
	goto	l3949
u2590:
	line	202
	
l3947:	
	comf	(_TECLADO_FIL_PINES),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l637
	line	204
	
l3949:	
	comf	(_TECLADO_FIL_PINES),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(133)^080h,f	;volatile
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
;;  RS_PIN          1   11[BANK0 ] unsigned char 
;;  E_PIN           1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  config          1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
	movwf	(LCD_ini@config)
	line	80
	
l3955:	
	btfss	(LCD_ini@config),(1)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l3959
u2600:
	
l3957:	
	movlw	0F0h
	movwf	(_LCD_ini$410)
	clrf	(_LCD_ini$410+1)
	goto	l748
	
l3959:	
	movlw	0Fh
	movwf	(_LCD_ini$410)
	clrf	(_LCD_ini$410+1)
	
l748:	
	movf	(_LCD_ini$410),w
	movwf	(_LCD_BUS_PORT_PINES)
	line	81
	movf	(LCD_ini@E_PIN),w
	movwf	(_LCD_E)
	line	82
	movf	(LCD_ini@RS_PIN),w
	movwf	(_LCD_RS)
	line	84
	
l3961:	
	btfss	(LCD_ini@config),(0)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l750
u2610:
	
l3963:	
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
	goto	u2621
	goto	u2620
u2621:
	goto	l754
u2620:
	
l3965:	
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
	goto	u2631
	goto	u2630
u2631:
	goto	l758
u2630:
	
l3967:	
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
	goto	u2641
	goto	u2640
u2641:
	goto	l762
u2640:
	
l3969:	
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
	goto	u2651
	goto	u2650
u2651:
	goto	l766
u2650:
	
l3971:	
	movlw	high(134)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO+1)
	movlw	low(134)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO)
	goto	l768
	
l766:	
	movlw	high(133)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO+1)
	movlw	low(133)
	movwf	(_LCD_RS_PORT_TRIS_PUNTERO)
	
l768:	
	line	89
	btfss	(LCD_ini@config),(3)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l770
u2660:
	
l3973:	
	movlw	high(134)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO+1)
	movlw	low(134)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO)
	goto	l3975
	
l770:	
	movlw	high(133)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO+1)
	movlw	low(133)
	movwf	(_LCD_E_PORT_TRIS_PUNTERO)
	line	92
	
l3975:	
	movlw	high(5)
	xorwf	(_LCD_RS_PORT_PUNTERO+1),w
	skipz
	goto	u2675
	movlw	low(5)
	xorwf	(_LCD_RS_PORT_PUNTERO),w
u2675:

	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l3981
u2670:
	line	93
	
l3977:	
	movlw	(09h)
	subwf	(LCD_ini@RS_PIN),w
	skipnc
	goto	u2681
	goto	u2680
u2681:
	goto	l3985
u2680:
	line	94
	
l3979:	
	comf	(LCD_ini@RS_PIN),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l3985
	line	97
	
l3981:	
	movlw	(040h)
	subwf	(LCD_ini@RS_PIN),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l3985
u2690:
	line	98
	
l3983:	
	clrc
	rrf	(LCD_ini@RS_PIN),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(155)^080h,f	;volatile
	line	101
	
l3985:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_E_PORT_PUNTERO+1),w
	skipz
	goto	u2705
	movlw	low(5)
	xorwf	(_LCD_E_PORT_PUNTERO),w
u2705:

	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l3991
u2700:
	line	102
	
l3987:	
	movlw	(09h)
	subwf	(LCD_ini@E_PIN),w
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l3995
u2710:
	line	103
	
l3989:	
	comf	(LCD_ini@E_PIN),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l3995
	line	106
	
l3991:	
	movlw	(040h)
	subwf	(LCD_ini@E_PIN),w
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l3995
u2720:
	line	107
	
l3993:	
	clrc
	rrf	(LCD_ini@E_PIN),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(155)^080h,f	;volatile
	line	110
	
l3995:	
	movlw	high(5)
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_LCD_BUS_PORT_PUNTERO+1),w
	skipz
	goto	u2735
	movlw	low(5)
	xorwf	(_LCD_BUS_PORT_PUNTERO),w
u2735:

	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l4001
u2730:
	
l3997:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0Fh
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l4001
u2740:
	line	111
	
l3999:	
	comf	(_LCD_BUS_PORT_PINES),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(155)^080h,f	;volatile
	goto	l4007
	line	112
	
l4001:	
	movlw	high(6)
	xorwf	(_LCD_BUS_PORT_PUNTERO+1),w
	skipz
	goto	u2755
	movlw	low(6)
	xorwf	(_LCD_BUS_PORT_PUNTERO),w
u2755:

	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l4007
u2750:
	
l4003:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0F0h
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l4007
u2760:
	line	113
	
l4005:	
	movlw	(09Fh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(155)^080h,f	;volatile
	line	119
	
l4007:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_LCD_E_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_E_PORT_TRIS_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_E),w
	andwf	indf,f
	line	120
	
l4009:	
	movf	(_LCD_RS_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_TRIS_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	line	121
	
l4011:	
	movf	(_LCD_BUS_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_BUS_PORT_TRIS_PUNTERO+1),0
	bcf	status,7
	movf	indf,w
	line	122
	
l4013:	
	movf	(_LCD_E_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_E_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_E),w
	andwf	indf,f
	line	123
	
l4015:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	line	124
	
l4017:	
	opt asmopt_off
movlw	20
movwf	((??_LCD_ini+0)+0+1),f
	movlw	121
movwf	((??_LCD_ini+0)+0),f
u3447:
	decfsz	((??_LCD_ini+0)+0),f
	goto	u3447
	decfsz	((??_LCD_ini+0)+0+1),f
	goto	u3447
	nop2
opt asmopt_on

	line	126
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	line	127
	
l4019:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	128
	
l4021:	
	opt asmopt_off
movlw	7
movwf	((??_LCD_ini+0)+0+1),f
	movlw	125
movwf	((??_LCD_ini+0)+0),f
u3457:
	decfsz	((??_LCD_ini+0)+0),f
	goto	u3457
	decfsz	((??_LCD_ini+0)+0+1),f
	goto	u3457
opt asmopt_on

	line	129
	
l4023:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	130
	
l4025:	
	opt asmopt_off
movlw	36
movwf	(??_LCD_ini+0)+0,f
u3467:
decfsz	(??_LCD_ini+0)+0,f
	goto	u3467
	nop
opt asmopt_on

	line	131
	
l4027:	
	movlw	(03h)
	fcall	_LCD_envia_4bits
	line	132
	
l4029:	
	opt asmopt_off
movlw	16
movwf	(??_LCD_ini+0)+0,f
u3477:
decfsz	(??_LCD_ini+0)+0,f
	goto	u3477
	nop
opt asmopt_on

	line	133
	
l4031:	
	movlw	(02h)
	fcall	_LCD_envia_4bits
	line	135
	
l4033:	
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
;;  config          1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
	movwf	(LCD_enciende@config)
	line	198
	
l3717:	
	opt asmopt_off
movlw	7
movwf	((??_LCD_enciende+0)+0+1),f
	movlw	125
movwf	((??_LCD_enciende+0)+0),f
u3487:
	decfsz	((??_LCD_enciende+0)+0),f
	goto	u3487
	decfsz	((??_LCD_enciende+0)+0+1),f
	goto	u3487
opt asmopt_on

	line	201
	
l3719:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3721:	
	movlw	(02h)
	fcall	_LCD_envia_4bits
	
l3723:	
	movlw	(08h)
	fcall	_LCD_envia_4bits
	line	203
	
l3725:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3727:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l3729:	
	movlw	(01h)
	fcall	_LCD_envia_4bits
	goto	l3757
	line	209
	
l3731:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3733:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l3735:	
	movlw	(0Ch)
	fcall	_LCD_envia_4bits
	goto	l3759
	line	210
	
l3737:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3739:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l3741:	
	movlw	(0Eh)
	fcall	_LCD_envia_4bits
	goto	l3759
	line	211
	
l3743:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3745:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l3747:	
	movlw	(0Dh)
	fcall	_LCD_envia_4bits
	goto	l3759
	line	213
	
l3749:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3751:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l3753:	
	movlw	(0Fh)
	fcall	_LCD_envia_4bits
	goto	l3759
	line	207
	
l3757:	
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
	goto	l3731
	xorlw	1^0	; case 1
	skipnz
	goto	l3737
	xorlw	2^1	; case 2
	skipnz
	goto	l3743
	xorlw	3^2	; case 3
	skipnz
	goto	l3749
	goto	l3749
	opt asmopt_on

	line	218
	
l3759:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3761:	
	movlw	(0)
	fcall	_LCD_envia_4bits
	
l3763:	
	movlw	(06h)
	fcall	_LCD_envia_4bits
	line	220
	
l3765:	
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
;;		On entry : 17F/20
;;		On exit  : 17F/0
;;		Unchanged: 11F/0
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
	
l4133:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(23)	;volatile
	line	102
	
l4135:	
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	103
	
l4137:	
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	107
	
l4139:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	109
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	110
	
l4141:	
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
;;		On entry : 17F/0
;;		On exit  : 17F/20
;;		Unchanged: 11F/0
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
	
l4123:	
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
	
l4125:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	84
	
l4127:	
	bcf	(96/8),(96)&7	;volatile
	line	85
	
l4129:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	87
	
l4131:	
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
;;		On entry : 17F/20
;;		On exit  : 17F/0
;;		Unchanged: 11F/0
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
	
l4119:	
	movlw	(0C7h)
	movwf	(129)^080h	;volatile
	line	68
	
l4121:	
	bsf	(93/8),(93)&7	;volatile
	line	69
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
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
;;		On entry : 17F/0
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
	
l4143:	
	movlw	(073h)
	movwf	(31)	;volatile
	line	128
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	138
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
movwf	(??_init_ADC+0)+0,f
u3497:
decfsz	(??_init_ADC+0)+0,f
	goto	u3497
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
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
	
l4563:	
	fcall	_TECLADO_pulsado
	iorlw	0
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l429
u3410:
	line	49
	
l4565:	
	movlw	((fp__esperaPulsarTecla-fpbase))&0ffh
	movwf	(_estado)
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
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
	
l4557:	
	fcall	_TECLADO_leer
	xorlw	0
	skipnz
	goto	u3401
	goto	u3400
u3401:
	goto	l425
u3400:
	line	36
	
l4559:	
	movf	(_TECLADO_dato),w
	movwf	(_tecla)
	line	37
	
l4561:	
	clrf	(_nuevaTecla)
	incf	(_nuevaTecla),f
	line	38
	movlw	((fp__esperaSoltarTecla-fpbase))&0ffh
	movwf	(_estado)
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
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l4547:	
	decf	(_nuevaTecla),w
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l402
u3380:
	line	246
	
l4549:	
	clrf	(_nuevaTecla)
	line	247
	
l4551:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l4555
u3390:
	line	249
	
l4553:	
	movf	(_tecla),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_Ki)^080h
	clrf	(_Ki+1)^080h
	line	250
	movlw	((fp__esperaAlmohadillaValor-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(0+_estado+01h)
	line	251
	goto	l402
	line	254
	
l4555:	
	movlw	((fp__esperaKi-fpbase))&0ffh
	movwf	(0+_estado+01h)
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
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
	
l4525:	
	decf	(_nuevaTecla),w
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l390
u3340:
	line	211
	
l4527:	
	clrf	(_nuevaTecla)
	line	212
	
l4529:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l390
u3350:
	line	214
	
l4531:	
	movf	(_valor+1),w
	movwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	movwf	(_num_pulsos_ref)
	line	215
	
l4533:	
	fcall	_LCD_mensaje_opciones_inicial
	line	216
	
l4535:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	movwf	(0+_estado+01h)
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
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
	
l4459:	
	decf	(_nuevaTecla),w
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l385
u3290:
	line	187
	
l4461:	
	clrf	(_nuevaTecla)
	line	188
	
l4463:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l4471
u3300:
	line	190
	
l4465:	
	movf	(_valor+1),w
	movwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	movwf	(_num_pulsos_ref)
	line	191
	
l4467:	
	fcall	_LCD_mensaje_opciones_inicial
	line	192
	
l4469:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	movwf	(0+_estado+01h)
	line	193
	goto	l385
	line	194
	
l4471:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l385
u3310:
	line	196
	
l4473:	
	movf	(_valor+1),w
	movwf	(___wmul@multiplier+1)
	movf	(_valor),w
	movwf	(___wmul@multiplier)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(_tecla),w
	addwf	(0+(?___wmul)),w
	movwf	(_valor)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_valor)
	line	197
	
l4475:	
	
l4479:	
	movlw	(04Dh)
	movwf	(_LCD_var_cursor)
	
l4481:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4483:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaTercerValor+0)+0
	swapf	(??_esperaTercerValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4485:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	line	198
	
l4487:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(_LCD_RS),w
	iorwf	indf,f
	
l4489:	
	movf	(_tecla),w
	addlw	030h
	movwf	(??_esperaTercerValor+0)+0
	swapf	(??_esperaTercerValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4491:	
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4493:	
	incf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l4523
u3320:
	
l4495:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l4509
u3330:
	
l4499:	
	
l4501:	
	clrf	(_LCD_var_cursor)
	
l4503:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4505:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaTercerValor+0)+0
	swapf	(??_esperaTercerValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4507:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4521
	
l4509:	
	
l4513:	
	movlw	(040h)
	movwf	(_LCD_var_cursor)
	
l4515:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4517:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaTercerValor+0)+0
	swapf	(??_esperaTercerValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4519:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4521:	
	movlw	(0E0h)
	andwf	(_LCD_var_cursor),f
	line	199
	
l4523:	
	movlw	((fp__esperaAlmohadillaValor-fpbase))&0ffh
	movwf	(0+_estado+01h)
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
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
	
l4393:	
	decf	(_nuevaTecla),w
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l341
u3240:
	line	163
	
l4395:	
	clrf	(_nuevaTecla)
	line	164
	
l4397:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l4405
u3250:
	line	166
	
l4399:	
	movf	(_valor+1),w
	movwf	(_num_pulsos_ref+1)
	movf	(_valor),w
	movwf	(_num_pulsos_ref)
	line	167
	
l4401:	
	fcall	_LCD_mensaje_opciones_inicial
	line	168
	
l4403:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	movwf	(0+_estado+01h)
	line	169
	goto	l341
	line	170
	
l4405:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l341
u3260:
	line	172
	
l4407:	
	movf	(_valor+1),w
	movwf	(___wmul@multiplier+1)
	movf	(_valor),w
	movwf	(___wmul@multiplier)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(_tecla),w
	addwf	(0+(?___wmul)),w
	movwf	(_valor)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_valor)
	line	173
	
l4409:	
	
l4413:	
	movlw	(04Ch)
	movwf	(_LCD_var_cursor)
	
l4415:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4417:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaSegundoValor+0)+0
	swapf	(??_esperaSegundoValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4419:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	line	174
	
l4421:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(_LCD_RS),w
	iorwf	indf,f
	
l4423:	
	movf	(_tecla),w
	addlw	030h
	movwf	(??_esperaSegundoValor+0)+0
	swapf	(??_esperaSegundoValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4425:	
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4427:	
	incf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l4457
u3270:
	
l4429:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l4443
u3280:
	
l4433:	
	
l4435:	
	clrf	(_LCD_var_cursor)
	
l4437:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4439:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaSegundoValor+0)+0
	swapf	(??_esperaSegundoValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4441:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4455
	
l4443:	
	
l4447:	
	movlw	(040h)
	movwf	(_LCD_var_cursor)
	
l4449:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4451:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaSegundoValor+0)+0
	swapf	(??_esperaSegundoValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4453:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4455:	
	movlw	(0E0h)
	andwf	(_LCD_var_cursor),f
	line	175
	
l4457:	
	movlw	((fp__esperaTercerValor-fpbase))&0ffh
	movwf	(0+_estado+01h)
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
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l4537:	
	decf	(_nuevaTecla),w
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l396
u3360:
	line	227
	
l4539:	
	clrf	(_nuevaTecla)
	line	228
	
l4541:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l4545
u3370:
	line	230
	
l4543:	
	movf	(_tecla),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_Kp)^080h
	clrf	(_Kp+1)^080h
	line	231
	movlw	((fp__esperaKi-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(0+_estado+01h)
	line	232
	goto	l396
	line	235
	
l4545:	
	movlw	((fp__esperaKp-fpbase))&0ffh
	movwf	(0+_estado+01h)
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
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
	
l4299:	
	decf	(_nuevaTecla),w
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l255
u3130:
	line	96
	
l4301:	
	clrf	(_nuevaTecla)
	line	97
	
l4303:	
	movf	(_tecla),f
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l4309
u3140:
	line	99
	
l4305:	
	movf	(_start+1),w
	iorwf	(_start),w
	movlw	0
	skipnz
	movlw	1
	movwf	(_start)
	clrf	(_start+1)
	line	100
	
l4307:	
	fcall	_LCD_mensaje_opciones2
	line	101
	goto	l255
	line	102
	
l4309:	
	decf	(_tecla),w
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l4315
u3150:
	line	104
	
l4311:	
	movf	(_sentido+1),w
	iorwf	(_sentido),w
	movlw	0
	skipnz
	movlw	1
	movwf	(_sentido)
	clrf	(_sentido+1)
	goto	l4307
	line	107
	
l4315:	
	movf	(_tecla),w
	xorlw	02h
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l4319
u3160:
	line	109
	
l4317:	
	movlw	((fp__esperaKp-fpbase))&0ffh
	movwf	(0+_estado+01h)
	line	110
	goto	l255
	line	111
	
l4319:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l245
u3170:
	line	113
	
l4321:	
	movf	(_start+1),w
	iorwf	(_start),w
	skipnz
	goto	u3181
	goto	u3180
u3181:
	goto	l4325
u3180:
	line	115
	
l4323:	
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	116
	goto	l4329
	line	119
	
l4325:	
	clrf	(23)	;volatile
	line	120
	
l4327:	
	bcf	(51/8),(51)&7	;volatile
	line	122
	
l4329:	
	movf	(_sentido+1),w
	iorwf	(_sentido),w
	skipnz
	goto	u3191
	goto	u3190
u3191:
	goto	l253
u3190:
	line	124
	
l4331:	
	bsf	(52/8),(52)&7	;volatile
	line	125
	bcf	(53/8),(53)&7	;volatile
	line	126
	goto	l4333
	line	127
	
l253:	
	line	129
	bcf	(52/8),(52)&7	;volatile
	line	130
	bsf	(53/8),(53)&7	;volatile
	line	132
	
l4333:	
	fcall	_LCD_mensaje_opciones_inicial
	line	133
	
l4335:	
	movlw	((fp__esperaPrimeraTecla-fpbase))&0ffh
	movwf	(0+_estado+01h)
	goto	l255
	line	135
	
l245:	
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
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
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
; Regs used in _esperaPrimerValor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	143
	
l4337:	
	decf	(_nuevaTecla),w
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l297
u3200:
	line	145
	
l4339:	
	clrf	(_nuevaTecla)
	line	146
	
l4341:	
	movlw	(0Ah)
	subwf	(_tecla),w
	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l297
u3210:
	line	148
	
l4343:	
	movf	(_tecla),w
	movwf	(_valor)
	clrf	(_valor+1)
	line	149
	
l260:	
	
l4347:	
	movlw	(04Bh)
	movwf	(_LCD_var_cursor)
	
l4349:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4351:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaPrimerValor+0)+0
	swapf	(??_esperaPrimerValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4353:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	line	150
	
l4355:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(_LCD_RS),w
	iorwf	indf,f
	
l4357:	
	movf	(_tecla),w
	addlw	030h
	movwf	(??_esperaPrimerValor+0)+0
	swapf	(??_esperaPrimerValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4359:	
	movf	(_tecla),w
	addlw	030h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4361:	
	incf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l4391
u3220:
	
l4363:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l4377
u3230:
	
l4367:	
	
l4369:	
	clrf	(_LCD_var_cursor)
	
l4371:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4373:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaPrimerValor+0)+0
	swapf	(??_esperaPrimerValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4375:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l4389
	
l4377:	
	
l4381:	
	movlw	(040h)
	movwf	(_LCD_var_cursor)
	
l4383:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4385:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaPrimerValor+0)+0
	swapf	(??_esperaPrimerValor+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4387:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4389:	
	movlw	(0E0h)
	andwf	(_LCD_var_cursor),f
	line	151
	
l4391:	
	movlw	((fp__esperaSegundoValor-fpbase))&0ffh
	movwf	(0+_estado+01h)
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
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
	
l4271:	
	decf	(_nuevaTecla),w
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l240
u3100:
	line	75
	
l4273:	
	clrf	(_nuevaTecla)
	line	76
	
l4275:	
	movf	(_tecla),w
	xorlw	0Ah
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l4293
u3110:
	line	78
	
l4277:	
	
l4281:	
	movlw	(040h)
	movwf	(_LCD_var_cursor)
	
l4283:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l4285:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_esperaPrimeraTecla+0)+0
	swapf	(??_esperaPrimeraTecla+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l4287:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	line	79
	
l4289:	
	movlw	low((STR_8-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	80
	
l4291:	
	movlw	((fp__esperaPrimerValor-fpbase))&0ffh
	movwf	(0+_estado+01h)
	line	81
	goto	l240
	line	82
	
l4293:	
	movf	(_tecla),w
	xorlw	0Bh
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l240
u3120:
	line	84
	
l4295:	
	fcall	_LCD_mensaje_opciones2
	line	85
	
l4297:	
	movlw	((fp__espera01Almohadilla-fpbase))&0ffh
	movwf	(0+_estado+01h)
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
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l4251:	
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0199h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3055
	movlw	low(0199h)
	subwf	(_ADC_resultado),w
u3055:

	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l4255
u3050:
	line	76
	
l4253:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+_estado+02h)
	line	77
	movlw	019h
	movwf	(_max_duty)
	clrf	(_max_duty+1)
	line	78
	goto	l114
	line	80
	
l4255:	
	movlw	((fp__estado50-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+_estado+02h)
	line	81
	movlw	07Dh
	movwf	(_max_duty)
	clrf	(_max_duty+1)
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
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l4245:	
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0333h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3045
	movlw	low(0333h)
	subwf	(_ADC_resultado),w
u3045:

	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l4249
u3040:
	line	63
	
l4247:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+_estado+02h)
	line	64
	movlw	019h
	movwf	(_max_duty)
	clrf	(_max_duty+1)
	line	65
	goto	l109
	line	66
	
l4249:	
	movlw	((fp__estado100-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+_estado+02h)
	line	67
	movlw	0F9h
	movwf	(_max_duty)
	clrf	(_max_duty+1)
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
;;		On entry : 60/0
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
	
l4257:	
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3065
	movlw	low(0F5h)
	subwf	(_ADC_resultado),w
u3065:

	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l4261
u3060:
	
l4259:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(023Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3075
	movlw	low(023Eh)
	subwf	(_ADC_resultado),w
u3075:

	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l4263
u3070:
	line	94
	
l4261:	
	movlw	((fp__estado50-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+_estado+02h)
	line	95
	movlw	07Dh
	movwf	(_max_duty)
	clrf	(_max_duty+1)
	line	97
	
l4263:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(023Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3085
	movlw	low(023Eh)
	subwf	(_ADC_resultado),w
u3085:

	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l4267
u3080:
	line	99
	
l4265:	
	movlw	((fp__estado10-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+_estado+02h)
	line	100
	movlw	019h
	movwf	(_max_duty)
	clrf	(_max_duty+1)
	line	102
	
l4267:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ADC_resultado+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3095
	movlw	low(0F5h)
	subwf	(_ADC_resultado),w
u3095:

	skipnc
	goto	u3091
	goto	u3090
u3091:
	goto	l122
u3090:
	line	104
	
l4269:	
	movlw	((fp__estado100-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+_estado+02h)
	line	105
	movlw	0F9h
	movwf	(_max_duty)
	clrf	(_max_duty+1)
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
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l3897:	
	movf	(_TECLADO_PORT_FIL_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_TECLADO_PORT_FIL_PUNTERO+1),0
	bcf	status,7
	comf	(_TECLADO_FIL_PINES),w
	andwf	indf,f
	line	218
	
l3899:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u2521
	goto	u2520
u2521:
	goto	l3903
u2520:
	
l3901:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(_REBOTES_lectura)
	clrf	(_REBOTES_lectura+1)
	goto	l3905
	
l3903:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(_REBOTES_lectura)
	clrf	(_REBOTES_lectura+1)
	line	219
	
l3905:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_pulsado+0)+0
	clrf	(??_TECLADO_pulsado+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_pulsado+0)+0,w
	skipz
	goto	u2535
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_pulsado+0)+0,w
u2535:

	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l3911
u2530:
	line	222
	
l3907:	
	movlw	(0)
	goto	l643
	line	226
	
l3911:	
	movlw	(01h)
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
;;  multiplier      2    3[BANK0 ] unsigned int 
;;  multiplicand    2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l4093:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	33
	
l4095:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l4099
u2870:
	line	34
	
l4097:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	35
	
l4099:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	36
	
l4101:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	37
	
l4103:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l4095
u2880:
	line	40
	
l4105:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
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
;;  bit_a_testea    2    6[BANK0 ] unsigned short 
;;  i               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E979
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
	
l3805:	
	clrf	(_TECLADO_dato)
	line	252
	
l3807:	
	movf	(_TECLADO_PORT_FIL_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_TECLADO_PORT_FIL_PUNTERO+1),0
	bcf	status,7
	comf	(_TECLADO_FIL_PINES),w
	andwf	indf,f
	line	253
	
l3809:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u2411
	goto	u2410
u2411:
	goto	l3813
u2410:
	
l3811:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(_REBOTES_lectura)
	clrf	(_REBOTES_lectura+1)
	goto	l3815
	
l3813:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(_REBOTES_lectura)
	clrf	(_REBOTES_lectura+1)
	line	254
	
l3815:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_leer+0)+0,w
	skipz
	goto	u2425
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_leer+0)+0,w
u2425:

	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l3831
u2420:
	line	257
	
l3817:	
	movlw	(0)
	goto	l649
	line	273
	
l3821:	
	movlw	0FEh
	movwf	(TECLADO_leer@bit_a_testear)
	clrf	(TECLADO_leer@bit_a_testear+1)
	goto	l3833
	line	274
	
l3823:	
	movlw	0FBh
	movwf	(TECLADO_leer@bit_a_testear)
	clrf	(TECLADO_leer@bit_a_testear+1)
	goto	l3833
	line	275
	
l3825:	
	movlw	0EFh
	movwf	(TECLADO_leer@bit_a_testear)
	clrf	(TECLADO_leer@bit_a_testear+1)
	goto	l3833
	line	276
	
l3827:	
	movlw	0FFh
	movwf	(TECLADO_leer@bit_a_testear)
	clrf	(TECLADO_leer@bit_a_testear+1)
	goto	l3833
	line	271
	
l3831:	
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
	goto	l3821
	xorlw	60^15	; case 60
	skipnz
	goto	l3823
	xorlw	240^60	; case 240
	skipnz
	goto	l3825
	goto	l3827
	opt asmopt_on

	line	282
	
l3833:	
	clrf	(TECLADO_leer@i)
	line	285
	
l3839:	
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
	
l3841:	
	btfsc	(_TECLADO_config),(1)&7	;volatile
	goto	u2431
	goto	u2430
u2431:
	goto	l3845
u2430:
	
l3843:	
	movf	(5),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(_REBOTES_lectura)
	clrf	(_REBOTES_lectura+1)
	goto	l3847
	
l3845:	
	movf	(6),w	;volatile
	andwf	(_TECLADO_COL_PINES),w
	movwf	(_REBOTES_lectura)
	clrf	(_REBOTES_lectura+1)
	line	289
	
l3847:	
	movf	(_TECLADO_COL_PINES),w
	movwf	(??_TECLADO_leer+0)+0
	clrf	(??_TECLADO_leer+0)+0+1
	movf	(_REBOTES_lectura+1),w
	xorwf	1+(??_TECLADO_leer+0)+0,w
	skipz
	goto	u2445
	movf	(_REBOTES_lectura),w
	xorwf	0+(??_TECLADO_leer+0)+0,w
u2445:

	skipnz
	goto	u2441
	goto	u2440
u2441:
	goto	l3851
u2440:
	goto	l3889
	line	295
	
l3851:	
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
	addwf	(_TECLADO_dato),f
	line	282
	
l3853:	
	incf	(TECLADO_leer@i),f
	movlw	(04h)
	subwf	(TECLADO_leer@i),w
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l3839
u2450:
	goto	l3889
	line	312
	
l3855:	
		movf	(_REBOTES_lectura),w
	xorlw	6
	iorwf	(_REBOTES_lectura+1),w

	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l3859
u2460:
	goto	l3891
	line	313
	
l3859:	
		movf	(_REBOTES_lectura),w
	xorlw	5
	iorwf	(_REBOTES_lectura+1),w

	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l3863
u2470:
	
l3861:	
	incf	(_TECLADO_dato),f
	goto	l3891
	line	314
	
l3863:	
		movf	(_REBOTES_lectura),w
	xorlw	3
	iorwf	(_REBOTES_lectura+1),w

	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l3817
u2480:
	
l3865:	
	incf	(_TECLADO_dato),f
	incf	(_TECLADO_dato),f
	goto	l3891
	line	318
	
l3871:	
		movf	(_REBOTES_lectura),w
	xorlw	192
	iorwf	(_REBOTES_lectura+1),w

	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l3875
u2490:
	goto	l3891
	line	319
	
l3875:	
		movf	(_REBOTES_lectura),w
	xorlw	160
	iorwf	(_REBOTES_lectura+1),w

	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l3879
u2500:
	goto	l3861
	line	320
	
l3879:	
		movf	(_REBOTES_lectura),w
	xorlw	96
	iorwf	(_REBOTES_lectura+1),w

	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l3817
u2510:
	goto	l3865
	line	306
	
l3889:	
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
	goto	l3855
	xorlw	224^7	; case 224
	skipnz
	goto	l3871
	goto	l3891
	opt asmopt_on

	line	327
	
l3891:	
	movf	(_TECLADO_dato),w
	addlw	low((_tabla_3col-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_TECLADO_dato)
	line	331
	
l3893:	
	movlw	(01h)
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
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
	
l3767:	
	
l3771:	
	movlw	(040h)
	movwf	(_LCD_var_cursor)
	
l3773:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3775:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_LCD_mensaje_opciones_inicial+0)+0
	swapf	(??_LCD_mensaje_opciones_inicial+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3777:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	line	50
	
l3779:	
	movlw	low((STR_2-__stringbase))
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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
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
	
l3781:	
	
l3785:	
	movlw	(040h)
	movwf	(_LCD_var_cursor)
	
l3787:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3789:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_LCD_mensaje_opciones2+0)+0
	swapf	(??_LCD_mensaje_opciones2+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3791:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	line	56
	
l3793:	
	decf	(_start),w
	iorwf	(_start+1),w

	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l3797
u2390:
	line	57
	
l3795:	
	movlw	low((STR_3-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l3799
	line	59
	
l3797:	
	movlw	low((STR_4-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	60
	
l3799:	
	decf	(_sentido),w
	iorwf	(_sentido+1),w

	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l3803
u2400:
	line	61
	
l3801:	
	movlw	low((STR_5-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	goto	l222
	line	63
	
l3803:	
	movlw	low((STR_6-__stringbase))
	movwf	(LCD_enviaCadena@cadena)
	movlw	80h
	movwf	(LCD_enviaCadena@cadena+1)
	fcall	_LCD_enviaCadena
	line	64
	
l222:	
	line	65
	movlw	low((STR_7-__stringbase))
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
;;  cadena          2    8[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(17), STR_7(5), STR_6(7), STR_5(6), 
;;		 -> STR_4(8), STR_3(9), STR_2(17), cadena(20), 
;; Auto vars:     Size  Location     Type
;;  i               1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
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
	
l3675:	
	clrf	(LCD_enviaCadena@i)
	goto	l3715
	line	244
	
l3677:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(_LCD_RS),w
	iorwf	indf,f
	
l3679:	
	movf	(LCD_enviaCadena@i),w
	addwf	(LCD_enviaCadena@cadena),w
	movwf	fsr0
	movf	(LCD_enviaCadena@cadena+1),w
	skipnc
	incf	(LCD_enviaCadena@cadena+1),w
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LCD_enviaCadena+0)+0
	swapf	(??_LCD_enviaCadena+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3681:	
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
	
l3683:	
	incf	(_LCD_var_cursor),f
	btfss	((_LCD_var_cursor)),(4)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l3713
u2360:
	
l3685:	
	btfsc	(_LCD_var_cursor),(7)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l3699
u2370:
	
l3689:	
	
l3691:	
	clrf	(_LCD_var_cursor)
	
l3693:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3695:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_LCD_enviaCadena+0)+0
	swapf	(??_LCD_enviaCadena+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3697:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	goto	l3711
	
l3699:	
	
l3703:	
	movlw	(040h)
	movwf	(_LCD_var_cursor)
	
l3705:	
	movf	(_LCD_RS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_RS_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_RS),w
	andwf	indf,f
	
l3707:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	movwf	(??_LCD_enviaCadena+0)+0
	swapf	(??_LCD_enviaCadena+0)+0,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3709:	
	movf	(_LCD_var_cursor),w
	iorlw	080h
	andlw	0Fh
	fcall	_LCD_envia_4bits
	
l3711:	
	movlw	(0E0h)
	andwf	(_LCD_var_cursor),f
	line	243
	
l3713:	
	incf	(LCD_enviaCadena@i),f
	
l3715:	
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
	goto	u2381
	goto	u2380
u2381:
	goto	l3677
u2380:
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
;;  dato            1    7[BANK0 ] unsigned char 
;;  a               1    6[BANK0 ] unsigned char 
;;  LCD_var_TRIS    1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/0
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
	
l3651:	
	movf	(_LCD_BUS_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_BUS_PORT_TRIS_PUNTERO+1),0
	bcf	status,7
	movf	indf,w
	movwf	(LCD_envia_4bits@LCD_var_TRIS)
	line	154
	
l3653:	
	movf	(_LCD_BUS_PORT_PINES),w
	xorlw	0F0h
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l3659
u2350:
	line	156
	
l3655:	
swapf	(LCD_envia_4bits@dato),f
	movlw	240
	andwf	(LCD_envia_4bits@dato),f

	
l3657:	
	movlw	(0F0h)
	andwf	(LCD_envia_4bits@dato),f
	line	159
	
l3659:	
	movf	(_LCD_BUS_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_BUS_PORT_PUNTERO+1),0
	bcf	status,7
	movf	indf,w
	movwf	(LCD_envia_4bits@a)
	line	160
	
l3661:	
	comf	(_LCD_BUS_PORT_PINES),w
	andwf	(LCD_envia_4bits@a),f
	line	161
	
l3663:	
	movf	(LCD_envia_4bits@a),w
	iorwf	(LCD_envia_4bits@dato),f
	line	164
	movf	(_LCD_BUS_PORT_TRIS_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_BUS_PORT_TRIS_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_BUS_PORT_PINES),w
	andwf	indf,f
	line	167
	
l3665:	
	movf	(_LCD_BUS_PORT_PUNTERO),w
	movwf	fsr0
	bcf	status,7
	btfsc	(_LCD_BUS_PORT_PUNTERO+1),0
	bsf	status,7
	
	movf	(LCD_envia_4bits@dato),w
	movwf	indf
	line	168
	
l3667:	
	movf	(_LCD_E_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_E_PORT_PUNTERO+1),0
	bcf	status,7
	movf	(_LCD_E),w
	iorwf	indf,f
	line	169
	
l3669:	
	movf	(_LCD_E_PORT_PUNTERO),w
	movwf	fsr0
	bsf	status,7
	btfss	(_LCD_E_PORT_PUNTERO+1),0
	bcf	status,7
	comf	(_LCD_E),w
	andwf	indf,f
	line	170
	
l3671:	
	opt asmopt_off
movlw	3
movwf	((??_LCD_envia_4bits+0)+0+1),f
	movlw	151
movwf	((??_LCD_envia_4bits+0)+0),f
u3507:
	decfsz	((??_LCD_envia_4bits+0)+0),f
	goto	u3507
	decfsz	((??_LCD_envia_4bits+0)+0+1),f
	goto	u3507
	nop2
opt asmopt_on

	line	172
	
l3673:	
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
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
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
	movwf	(??_rutinaInterrupcion+0)
	movf	pclath,w
	movwf	(??_rutinaInterrupcion+1)
	movf	btemp+1,w
	movwf	(??_rutinaInterrupcion+2)
	ljmp	_rutinaInterrupcion
psect	text37
	line	45
	
i1l3589:	
	btfss	(90/8),(90)&7	;volatile
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l3617
u231_20:
	
i1l3591:	
	btfss	(93/8),(93)&7	;volatile
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l3617
u232_20:
	line	47
	
i1l3593:	
	bcf	(90/8),(90)&7	;volatile
	line	48
	
i1l3595:	
	movlw	(0Ch)
	movwf	(1)	;volatile
	line	50
	
i1l3597:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(_cuenta_ints_T0)^080h,f
	skipnz
	incf	(_cuenta_ints_T0+1)^080h,f
	line	51
	
i1l3599:	
	incf	(_cuenta_1s)^080h,f
	skipnz
	incf	(_cuenta_1s+1)^080h,f
	line	53
		movf	(_cuenta_ints_T0)^080h,w
	xorlw	4
	iorwf	(_cuenta_ints_T0+1)^080h,w

	skipz
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l3611
u233_20:
	line	55
	
i1l3601:	
	clrf	(_cuenta_ints_T0)^080h
	clrf	(_cuenta_ints_T0+1)^080h
	line	56
	
i1l3603:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(14+1),w	;volatile
	movwf	(_valor_TMR1+1)
	movf	(14),w	;volatile
	movwf	(_valor_TMR1)
	line	57
	
i1l3605:	
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	60
	movf	(_num_pulsos_ref+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_error+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_num_pulsos_ref),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_error)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_valor_TMR1),w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(_error)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	(_valor_TMR1+1),w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(_error+1)^080h,f
	subwf	(_error+1)^080h,f
	line	61
	
i1l3607:	
	movf	(_error+1)^080h,w
	movwf	(control_PI@error+1)
	movf	(_error)^080h,w
	movwf	(control_PI@error)
	fcall	_control_PI
	movf	(1+(?_control_PI)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Ton+1)^080h
	movf	(0+(?_control_PI)),w
	movwf	(_Ton)^080h
	line	62
	
i1l3609:	
	movf	(_Ton)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	65
	
i1l3611:	
	bsf	status, 5	;RP0=1, select bank1
		movf	(_cuenta_1s)^080h,w
	xorlw	16
	iorwf	(_cuenta_1s+1)^080h,w

	skipz
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l479
u234_20:
	line	67
	
i1l3613:	
	clrf	(_cuenta_1s)^080h
	clrf	(_cuenta_1s+1)^080h
	line	68
	
i1l3615:	
	clrf	(_tiempo_1s)^080h
	incf	(_tiempo_1s)^080h,f
	clrf	(_tiempo_1s+1)^080h
	goto	i1l479
	line	75
	
i1l3617:	
	clrf	(11)	;volatile
	line	76
	
i1l3619:	
	bcf	(88/8),(88)&7	;volatile
	line	78
	
i1l479:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_rutinaInterrupcion+2),w
	movwf	btemp+1
	movf	(??_rutinaInterrupcion+1),w
	movwf	pclath
	swapf	(??_rutinaInterrupcion+0)^00h,w
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
;;		On entry : 60/20
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
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
	
i1l3513:	
	movf	(control_PI@error+1),w
	movwf	(i1___wmul@multiplier+1)
	movf	(control_PI@error),w
	movwf	(i1___wmul@multiplier)
	movf	(_errorAnt)^080h,w
	subwf	(i1___wmul@multiplier),f
	movf	(_errorAnt+1)^080h,w
	skipc
	decf	(i1___wmul@multiplier+1),f
	subwf	(i1___wmul@multiplier+1),f
	movf	(_Kp+1)^080h,w
	movwf	(i1___wmul@multiplicand+1)
	movf	(_Kp)^080h,w
	movwf	(i1___wmul@multiplicand)
	fcall	i1___wmul
	movf	(0+?i1___wmul),w
	movwf	(??_control_PI+0)+0
	movf	(1+?i1___wmul),w
	movwf	((??_control_PI+0)+0+1)
	movf	(control_PI@error+1),w
	movwf	(i1___wmul@multiplier+1)
	movf	(control_PI@error),w
	movwf	(i1___wmul@multiplier)
	movf	(_Ki+1)^080h,w
	movwf	(i1___wmul@multiplicand+1)
	movf	(_Ki)^080h,w
	movwf	(i1___wmul@multiplicand)
	fcall	i1___wmul
	movf	(0+(?i1___wmul)),w
	addwf	0+(??_control_PI+0)+0,w
	movwf	(??_control_PI+2)+0
	movf	(1+(?i1___wmul)),w
	skipnc
	incf	(1+(?i1___wmul)),w
	addwf	1+(??_control_PI+0)+0,w
	movwf	1+(??_control_PI+2)+0
	movf	(_salidaPI),w
	addwf	0+(??_control_PI+2)+0,w
	movwf	(_salidaPI)
	movf	(_salidaPI+1),w
	skipnc
	incf	(_salidaPI+1),w
	addwf	1+(??_control_PI+2)+0,w
	movwf	1+(_salidaPI)
	line	32
	
i1l3515:	
	movf	(control_PI@error+1),w
	movwf	(_errorAnt+1)^080h
	movf	(control_PI@error),w
	movwf	(_errorAnt)^080h
	line	33
	
i1l3517:	
	bcf	status, 5	;RP0=0, select bank0
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
	goto	u227_25
	movf	(_salidaPI),w
	subwf	0+(??_control_PI+0)+0,w
u227_25:

	skipnc
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l3521
u227_20:
	line	34
	
i1l3519:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_max_duty+1),w
	movwf	(_salidaPI+1)
	movf	(_max_duty),w
	movwf	(_salidaPI)
	swapf	(_salidaPI),f
	swapf	(_salidaPI+1),f
	movlw	0f0h
	andwf	(_salidaPI+1),f
	movf	(_salidaPI),w
	andlw	0fh
	iorwf	(_salidaPI+1),f
	movlw	0f0h
	andwf	(_salidaPI),f
	line	35
	
i1l3521:	
	btfss	(_salidaPI+1),7
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l3525
u228_20:
	line	36
	
i1l3523:	
	clrf	(_salidaPI)
	clrf	(_salidaPI+1)
	line	37
	
i1l3525:	
	movf	(_salidaPI+1),w
	movwf	(?_control_PI+1)
	movf	(_salidaPI),w
	movwf	(?_control_PI)
	
i1l3527:	
	movlw	04h
	movwf	btemp+1
u229_25:
	rlf	(?_control_PI+1),w
	rrf	(?_control_PI+1),f
	rrf	(?_control_PI),f
	decfsz	btemp+1,f
	goto	u229_25
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
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: 60/0
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
	
i1l3039:	
	clrf	(i1___wmul@product)
	clrf	(i1___wmul@product+1)
	line	33
	
i1l3041:	
	btfss	(i1___wmul@multiplier),(0)&7
	goto	u172_21
	goto	u172_20
u172_21:
	goto	i1l3045
u172_20:
	line	34
	
i1l3043:	
	movf	(i1___wmul@multiplicand),w
	addwf	(i1___wmul@product),f
	skipnc
	incf	(i1___wmul@product+1),f
	movf	(i1___wmul@multiplicand+1),w
	addwf	(i1___wmul@product+1),f
	line	35
	
i1l3045:	
	clrc
	rlf	(i1___wmul@multiplicand),f
	rlf	(i1___wmul@multiplicand+1),f
	line	36
	
i1l3047:	
	clrc
	rrf	(i1___wmul@multiplier+1),f
	rrf	(i1___wmul@multiplier),f
	line	37
	
i1l3049:	
	movf	((i1___wmul@multiplier+1)),w
	iorwf	((i1___wmul@multiplier)),w
	skipz
	goto	u173_21
	goto	u173_20
u173_21:
	goto	i1l3041
u173_20:
	line	40
	
i1l3051:	
	movf	(i1___wmul@product+1),w
	movwf	(?i1___wmul+1)
	movf	(i1___wmul@product),w
	movwf	(?i1___wmul)
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
