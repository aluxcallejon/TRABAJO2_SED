#include <xc.h>
#include <stdlib.h>

#include "XTAL_FREQ.h"

#include "TECLADO.h"           // Librer�a del componente Teclado Modificada sin REBOTES
#include "LCD.h"               // Librer�a del componente LCD de 2 l�neas x 16 caracteres

//==================================
//Prototipos de funciones
//==================================
void LCD_mensaje_opciones_inicial(void);

//==================================
//Funciones de inicializaci�n
//==================================
void init_registros(void)
{
    // ------------------------------------------------
    // Configuraci�n del cristal interno a 4 Mhz
    // ------------------------------------------------
    OSCCON=  0b01100110;    // Configura a 4 Mhz                               +-------------+--------+
            // 76543210                                                        | IRCF2:IRCF0 |  Frec  |
            //  ||| |||                                                        +-------------+--------+
            //  ||| ||+- OSCCON<0> : SCS0=0   //  [SCS1:SCS0]= reloj interno   |    000      |  31Khz |
            //  ||| |+-- OSCCON<1> : SCS1=1   //                               |    001      | 125Khz |
            //  ||| +--- OSCCON<2> : IOFS     // Se pone a 1 cuando el         |    010      | 250Khz |
            //  |||                           // reloj se ha estabilizado      |    011      | 500Khz |
            //  ||+----- OSCCON<4> : IRCF0=0                                   |    100      |   1Mhz |
            //  |+------ OSCCON<5> : IRCF1=1                                   |    101      |   2Mhz |
            //  +------- OSCCON<6> : IRCF2=1  // [IRCF2:IRCF0]=110--> 4Mhz -+->|    110      |   4Mhz |
                                              //                               |    111      |   8Mhz |
    while (IOFS==0)  { }    // Mientras no se estabilice el                    +-------------+--------+
                            // reloj interno -> esperar aqu�.

    PORTA= 0b00000000;        // Ponemos a 0 los latches de salida de PORTA
    PORTB= 0b00000000;        // Ponemos a 0 los latches de salida de PORTB
    ANSEL= 0b10000000;        // AN6 (RB7) como anal�gico
    TRISA= 0b00111111;        // PORTA de entrada/salida ???  Entrada --> 1
    TRISB= 0b11000111;        // PORTB de entrada/salida ???  Salida  --> 0

}

void init_Timer0(void)
{
// ---------------------------------------------------------------
// Configura y activa TMR0. No activar interrupci�n todav�a...
// ---------------------------------------------------------------
// Tiempo= 4.Tosc.(256-TMR0).Preescalador
// Detallar aqu� los c�lculos
// ---------------------------------------------------------------
   OPTION_REG = 0b10000111;     //Preescalador calculado con la formula de la linea 49, maximizando primero tmr0 y calculando el Preescalador y posteriormente, calculamos tmr0
               // 76543210
               // ||||||||
               // |||||||+- bit0 PS0
               // ||||||+-- bit1 PS1
               // |||||+--- bit2 PS2     [PS2:PS0] prescaler a ???
               // ||||+---- bit3 PSA     El preescaler se utiliza para el TMR0
               // |||+----- bit4 T0SE
               // ||+------ bit5 T0CS    Utiliza Fosc/4 para temporizar
               // |+------- bit6 INTEDG
               // --------- bit7 RBPU    No Activa los pullups internos de PORTB

    TMR0IE=1;  // Habilita Interrupci�n del Timer 0
    TMR0=12;   // Preparamos TMR0 inicial
}
void init_Timer1(void)
{
// * ************************************************************************ *
// * Configuraci�n Timer 1: contador de pulsos del encoder de velocidad
// * *************************************************************************
    T1CKPS1=0;              // T1CON<5> = '0'.
    T1CKPS0=0;              // T1CON<4> = '0'. Preescalador a 1:1  (00= 1:1, 01= 1:2, 10= 1:4, 11 1:8)
    T1OSCEN=0;              // T1CON<3> = '0'. Desactivado oscilador externo en pines RB6-RB7
    nT1SYNC=0;              // T1CON<2>=  '0'. Sincronismo de reloj externo (no hace falta ya que el reloj es interno)
    TMR1CS= 1;              // T1CON<1> = '?'. Utiliza RB6 para incrementar TMR1
    TMR1ON= 1;              // T1CON<0> = '?'. Activa el TMR1

    TMR1  = 0;              // Ponemos a 0 el contador de pulsos del encoder de velocidad
    TMR1IF= 0;              // PIR1<0>='?'.    Bandera TMR1 inicialmente abajo
    TMR1IE= 0;              // PIE1<0>='?'.    NO Habilita interrupcion TMR1

    PEIE=0;                 // NO hay interrupci�n del timer 1
}
void init_Timer2(void)
{
    //-----------------------------------------------------
    // M�dulo de comparaci�n. Inicialmente PWM apagado
    //-----------------------------------------------------
    CCP1CON = 0b00000000;

    //-------------------------------------------------
    // Periodo PWM =  4.Tosc.(PR2+1).Preescalador  = 4ms   // Periodo del TMR2
	  // Detallar aqu� los c�lculos
    //-------------------------------------------------
    PR2    = ???;            // PR2= ???
    T2CON  = 0b????????;     // T2CON<6:3> = TOUTPS<3:0> = ???? PostDivisor= 1:???
                             // T2CON<2>   = TMR2ON      = '1'     ->  Activa el TMR2
                             // T2CON<1:0> = T2CKPS<1:0> = ??    ->  Predivisor = 1:???

    TMR2IE= ?;               // PIE1<1>='?'. Deshabilita interrupcion TMR2

    CCPR1L = 0;              // Duty inicial al 0%
    CCP1CON = ??????????;    // Activa el PWM
}
void init_ADC(void)
{
    //-----------------------
    // Configuraci�n del CAD
    //-----------------------
//                                                                                    +-----------+------------+
//                                                                                    | ADCS<2:0> |  Fosc M�x. |
//  ADCON0= 0b????????;       // ADCS<1:0>=??, CHS<2:0>=???, ADON=1                   +-----------+------------+
//            |||||||+-------------- ADON = 1                                         |   000     |   1.25Mhz  |
//            ||||||+--------------- No implementado                                  |   100     |    2.5Mhz  |
//            |||||+---------------- GO/DONE = 0                                      |   001     |      5Mhz  |
//            ||||+----------------- CHS0= ?                                          |   101     |     10Mhz  |
//            |||+------------------ CHS1= ?                                          |   010     |     20Mhz  |
//            ||+------------------- CHS2= ? --> CHS<2:0>=??? -> AN6 (pin RB7)        |   110     |     20Mhz  |
//            |+-------------------- ADCS0=?                                      +-> |   x11     | RC interno |
//            +--------------------- ADCS1=? --> ADCS<2:0>=???   ----(~2Mhz) -----+   +-----------+------------+
//  ADCON1= 0b????????;       // ADFM=1, ADCS2=1, VCFG<1:0>= 00
//            |||||||+-------------- Unused
//            ||||||+--------------- Unused
//            |||||+---------------- Unused
//            ||||+----------------- Unused
//            |||+------------------ VCFG0=0 --> (Vref-)= GND
//            ||+------------------- VCFG1=0 --> (Vref+)= Vdd
//            |+-------------------- ADCS2= 0
//            +--------------------- ADFM = ? (0=left, 1=right justification)

    __delay_us(750);    // Tiempo para que se estabilice inicialmente el CA/D
}
void init_librerias(void)
{
    // Congiguraci�n del Teclado: Filas en RA0, RA1, RA2 y RA3. Columnas en RB0, RB1 y RB2.
    TECLADO_ini( (?? + ??) + (?? + ??) );

    // Congiguraci�n del LCD: Bus en RA0, RA1, RA2 y RA3. RS en RA7. E en RA6.
    LCD_ini(?? + ?? + ?? + ??, ??, ??);

    // Env�a primer mensaje al LCD (funci�n definida en procesoSecuencia.c)
    LCD_mensaje_opciones_inicial();
}
