#include <xc.h>
#include <stdlib.h>

// *******************************************
// Variables globales
// *******************************************
int error;                                // Variable de entrada al PI
int errorAnt=0;                           // Valor interno del PI (error anterior)
int salidaPI=0;                           // Valor interno del PI (salida sin dividir)
unsigned short int Ton=0;                 // Valor de salida del PI (salida ya dividida)
unsigned short int max_duty;              // Valor de saturaci�n del Duty Cycle
unsigned  short int cuenta_ints_T0=0;   // Contador de interrupciones para temporizar 0,25 seg con el Timer 0
unsigned  short int cuenta_1s=0;        // Contador de interrupciones para temporizar 1 seg con el Timer 0
unsigned  short int Kp = 4;             //Convertimos a globales las constantes de este fichero
unsigned  short int Ki = 1;             //
//==================================
//Variables definidas en otros archivos
//==================================
extern unsigned short int tiempo_1s;
extern unsigned short int num_pulsos_ref;
extern unsigned int valor_TMR1;

// ==================================
// control_PI
// ==================================
short int control_PI(int error)
{
    //#define Kp 4                          // Definici�n de constantes
    //#define Ki 1

    salidaPI=salidaPI+Kp*(error-errorAnt)+Ki*error;     // Expresi�n del PI en valores multiplicados por 16
    errorAnt=error;                                     // Se guarda el valor anterior del error
    if(salidaPI > (((int)max_duty)<<4))                 // Saturaci�n de la salida a valor multiplicado 16
        salidaPI=(((int)max_duty)<<4);
    if(salidaPI < 0)
        salidaPI=  0;
    return(salidaPI>>4);                                // Se proporciona la salida dividida por 16
}

// *******************************************
// Interrupci�n
// *******************************************
static void interrupt rutinaInterrupcion(void)
{
    if(TMR0IF && TMR0IE)        // Interrupci�n del timer 0 cada 62,464 milisegundos
    {
        TMR0IF =  0;            // Baja la bandera. Evento: desbordamiento de TMR0
        TMR0   = 12;           // Prepara el timer para la siguiente interrupci�n

        cuenta_ints_T0++; //Aumentamos en uno el contador de interrupciones
        cuenta_1s++; //Exactamente igual
        // Actualiza cuenta_ints_T0
        if(cuenta_ints_T0 == 4)   // Cada ??? interrupciones -> 0,25 segundos
        {
            cuenta_ints_T0=0;
            valor_TMR1 = TMR1;           // Guarda el valor de pulsos leidos en TMR1 en 0.25seg, para mostrarlo en el LCD
            TMR1=0;                      // Reinicia la cuenta de pulsos para la nueva ventana de 0.25s

            // Se ajusta el PWM mediante el PI
            error= num_pulsos_ref - valor_TMR1; // El error del PI es la referencia menos el valor medido
            Ton=control_PI(error);              // C�lculo del control PI
            CCPR1L=Ton;                         // Actualiza el Ton del PWM calculado por el PI
        }
        // Actualiza cuenta_1s
        if(cuenta_1s == 16)        // Cada ???? interrupciones -> 1 segundo
        {
            cuenta_1s=0;
            tiempo_1s=1;        // Activa la bandera para avisar de que ha pasado 1 segundo
        }
    }
    //================================================================
    else              // Interrupci�n no programada (error)
    //================================================================
    {
        INTCON=0;
        RBIF=0;
    }
}
