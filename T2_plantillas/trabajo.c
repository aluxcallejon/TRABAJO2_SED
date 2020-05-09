#include <xc.h>
#include <stdlib.h>
#include <stdio.h>

#include "XTAL_FREQ.h"         // Definici�n de la frecuencia de reloj usada (4MHz) necesaria para LCD
#include "TECLADO.h"           // Librer�a del componente Teclado Modificada sin REBOTES
#include "LCD.h"               // Librer�a del componente LCD de 2 l�neas x 16 caracteres

// *******************************************
// Palabra de configuraci�n del 16F88
// *******************************************
     //  FOSC      : EXTRCCLK, EXTRCIO, INTOSCCLK, INTOSCIO, EC, HS, XT, LP
     //  WDTE      : Perro Guardi�n (Watchdog Timer Enable bit):
     //  PWRTE     : Reset al conectar (PoWeR-up Timer Enable bit):
     //  CP        : Protecci�n lectura del c�digo (Code Protection bit):
     //  MCLRE     : Pin de Reset (Master CLeaR Enable bit):
     //  BOREN     : Corte parcial de alimentaci�n (BrOwn-out Reset ENable bit):
     //  LVP       : Programaci�n con baja tensi�n (Low-Voltage Programming Enable bit):
     //  CPD       : Protecci�n lectura de la EEPROM (Code Protection Data enable bit):
     //  WRT       : Protecci�n escritura de la EEPROM (WRiTe enable bit):
     //  DEBUG     : Pines para depuraci�n (In-circuit DEBUGger mode bit
     //  CCPMX     : Pin para el m�dulo captura/comparaci�n/PWM (CCP1 Pin)
     //  FCMEN     : Monitor del reloj (Fail-safe Clock Monitor ENable bit):
     //  IESO      : Arranque con reloj interno y conmutaci�n al externo (Internal External SwitchOver bit)

    #pragma config FOSC=INTOSCIO, WDTE=OFF, PWRTE=OFF,  CP=OFF,    MCLRE=ON,  BOREN=OFF, LVP=OFF, \
                   CPD=OFF,       WRT=OFF,  DEBUG=OFF,  CCPMX=RB3, FCMEN=OFF, IESO=OFF

// *******************************************
// Variables globales
// *******************************************
unsigned short int num_pulsos_ref;      // N�mero de pulsos de referencia del control de velocidad
unsigned int valor_TMR1;                // Pulsos obtenidos en la interrupci�n
unsigned short int tiempo_1s=1;         // Bandera de interrupci�n (se pone a 1 cada segundo)
char cadena[20];                        // Cadena donde se almacenar�n mensajes mostrados en el LCD
int ADC_resultado;                      // Variable donde se almacenar� el resultado de la conversi�n

// *******************************************
// Punteros a subrutina para poder cambiar de estado
// *******************************************
void (*estado[3])(void);

// *******************************************
// Declaraci�n de rutinas
// *******************************************
void init_registros(void);
void init_Timer0(void);
void init_Timer1(void);
void init_Timer2(void);
void init_ADC(void);
void init_procesoTeclado(void);
void init_procesoSecuencia(void);
void init_procesoHisteresis(void);
void init_librerias(void);

// *******************************************
// M�dulo principal (bucle infinito)
// *******************************************
void main(void)
{
    //-----------------
    // Inicializaciones
    //-----------------

    //Inicializaci�n de los registros b�sicos del microcontrolador
    init_registros();
    //Inicializaci�n de los registros del Timer 0
    init_Timer0();
    //Inicializaci�n de los registros del Timer 1
    init_Timer1();
    //Inicializaci�n de los registros del Timer 2
    init_Timer2();
    //Inicializaci�n de los registros del ADC
    init_ADC();
    //Inicializaci�n de la m�quina de estados de Pulsaci�n de Tecla
    init_procesoTeclado();
    //Inicializaci�n de la m�quina de estados de Procesar Tecla
    init_procesoSecuencia();
    //Inicializaci�n de la m�quina de estados de Procesar Hist�resis Temperatura
    init_procesoHisteresis();
    //Inicializaci�n de las librerias usadas
    init_librerias();
    //Inicializaciones varias
    num_pulsos_ref=100;      // valor inicial = 100 pulsos/0.25seg  =  400 pulsos/seg  = 75 rpm

    RB4=1;
    RB5=0;  // [Bit1:Bit0]=10. El motor gira en sentido CW (Clock Wise, sentido de las agujas del reloj)

    GIE= 1; // Activa m�scara global de interrupciones

    //---------------
    // Bucle infinito
    //---------------
    while (1)
    {
        (*estado[0])();            // Se ejecuta un estado del proceso0 (Pulsaci�n de Tecla)

        (*estado[1])();            // Se ejecuta un estado del proceso1 (Procesar Tecla)

        (*estado[2])();            // Se ejecuta un estado del proceso2 (Procesar Hist�resis Temperatura)

        if(tiempo_1s)              // Cada segundo...
        {
            tiempo_1s=0;           // Baja bandera de temporizaci�n de 1 segundo
            sprintf(cadena,"ref:%3d val:%4d",num_pulsos_ref,valor_TMR1);
            LCD_gotoXY(0,0);             // Desplaza el cursor al principio de la fila superior
            LCD_enviaCadena(cadena);     // Escribe cadena con informaci�n de la referencia y el valor medido
            //-----------------------------------------------------------------
            // Nueva conversi�n
            //-----------------------------------------------------------------
            // Lanzar conversi�n AD
            GO_nDONE=1;

            //Nos aseguramos que haya terminado hacer la conversion,tarda en torno a 100us
            delay(1);
            //-----------------------------------------------------------------
            // Almacena resultado de 10 bits en ADC_resultado  (ADFM=1 justificado a la derecha, 10 bits)
            //-----------------------------------------------------------------
             // 10 bits: 2bits de ADRESH + 8 bits de ADRESL
            if(GO_nDONE=0){ //Si la convesion ha terminado,sacamos el dato (es redundante,puesto que hemos utilizado el delay pero nos aseguramos)
            ADC_resultado= (ADRESH << 8 | ADRESL );  //Sacamos el resultado de la conversion(teniendo en cuenta la justificacion usada)
            }


        }
    }
}
