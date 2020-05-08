#include <xc.h>
#include <stdlib.h>
#include <stdio.h>

#include "XTAL_FREQ.h"         // Definición de la frecuencia de reloj usada (4MHz) necesaria para LCD
#include "TECLADO.h"           // Librería del componente Teclado Modificada sin REBOTES
#include "LCD.h"               // Librería del componente LCD de 2 líneas x 16 caracteres

// *******************************************
// Palabra de configuración del 16F88
// *******************************************
     //  FOSC      : EXTRCCLK, EXTRCIO, INTOSCCLK, INTOSCIO, EC, HS, XT, LP
     //  WDTE      : Perro Guardián (Watchdog Timer Enable bit):
     //  PWRTE     : Reset al conectar (PoWeR-up Timer Enable bit):
     //  CP        : Protección lectura del código (Code Protection bit):
     //  MCLRE     : Pin de Reset (Master CLeaR Enable bit):
     //  BOREN     : Corte parcial de alimentación (BrOwn-out Reset ENable bit):
     //  LVP       : Programación con baja tensión (Low-Voltage Programming Enable bit):
     //  CPD       : Protección lectura de la EEPROM (Code Protection Data enable bit):
     //  WRT       : Protección escritura de la EEPROM (WRiTe enable bit):
     //  DEBUG     : Pines para depuración (In-circuit DEBUGger mode bit
     //  CCPMX     : Pin para el módulo captura/comparación/PWM (CCP1 Pin)
     //  FCMEN     : Monitor del reloj (Fail-safe Clock Monitor ENable bit):
     //  IESO      : Arranque con reloj interno y conmutación al externo (Internal External SwitchOver bit)

    #pragma config FOSC=INTOSCIO, WDTE=OFF, PWRTE=OFF,  CP=OFF,    MCLRE=ON,  BOREN=OFF, LVP=OFF, \
                   CPD=OFF,       WRT=OFF,  DEBUG=OFF,  CCPMX=RB3, FCMEN=OFF, IESO=OFF

// *******************************************
// Variables globales
// *******************************************
unsigned short int num_pulsos_ref;      // Número de pulsos de referencia del control de velocidad
unsigned int valor_TMR1;                // Pulsos obtenidos en la interrupción
unsigned short int tiempo_1s=1;         // Bandera de interrupción (se pone a 1 cada segundo)
char cadena[20];                        // Cadena donde se almacenarán mensajes mostrados en el LCD
int ADC_resultado;                      // Variable donde se almacenará el resultado de la conversión

// *******************************************
// Punteros a subrutina para poder cambiar de estado
// *******************************************
void (*estado[3])(void);

// *******************************************
// Declaración de rutinas
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
// Módulo principal (bucle infinito)
// *******************************************
void main(void)
{
    //-----------------
    // Inicializaciones
    //-----------------

    //Inicialización de los registros básicos del microcontrolador
    init_registros();
    //Inicialización de los registros del Timer 0
    init_Timer0();
    //Inicialización de los registros del Timer 1
    init_Timer1();
    //Inicialización de los registros del Timer 2
    init_Timer2();
    //Inicialización de los registros del ADC
    init_ADC();
    //Inicialización de la máquina de estados de Pulsación de Tecla
    init_procesoTeclado();
    //Inicialización de la máquina de estados de Procesar Tecla
    init_procesoSecuencia();
    //Inicialización de la máquina de estados de Procesar Histéresis Temperatura
    init_procesoHisteresis();
    //Inicialización de las librerias usadas
    init_librerias();
    //Inicializaciones varias
    num_pulsos_ref=100;      // valor inicial = 100 pulsos/0.25seg  =  400 pulsos/seg  = 75 rpm

    RB4=1;
    RB5=0;  // [Bit1:Bit0]=10. El motor gira en sentido CW (Clock Wise, sentido de las agujas del reloj)

    GIE= 1; // Activa máscara global de interrupciones    

    //---------------
    // Bucle infinito
    //---------------
    while (1)
    {
        (*estado[0])();            // Se ejecuta un estado del proceso0 (Pulsación de Tecla)

        (*estado[1])();            // Se ejecuta un estado del proceso1 (Procesar Tecla)

//        (*estado[2])();            // Se ejecuta un estado del proceso2 (Procesar Histéresis Temperatura)

        if(tiempo_1s)              // Cada segundo...
        {
            tiempo_1s=0;           // Baja bandera de temporización de 1 segundo
            sprintf(cadena,"ref:%3d val:%4d",num_pulsos_ref,valor_TMR1);
            LCD_gotoXY(0,0);             // Desplaza el cursor al principio de la fila superior
            LCD_enviaCadena(cadena);     // Escribe cadena con información de la referencia y el valor medido
            //-----------------------------------------------------------------
            // Nueva conversión
            //-----------------------------------------------------------------
            // Lanzar conversión AD
            // Espera a que termine
            
            //-----------------------------------------------------------------
            // Almacena resultado de 10 bits en ADC_resultado  (ADFM=1 justificado a la derecha, 10 bits)
            //-----------------------------------------------------------------
            // ADC_resultado= ????;     // 10 bits: 2bits de ADRESH + 8 bits de ADRESL
        }
    }
}
