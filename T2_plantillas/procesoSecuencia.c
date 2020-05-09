#include   <xc.h>
#include <stdlib.h>

#include "XTAL_FREQ.h"         // Definici�n de la frecuencia de reloj usada (4MHz) necesaria para LCD
#include "LCD.h"               // Librer�a del componente LCD de 2 l�neas x 16 caracteres

//==================================
//Prototipos de funciones
//==================================
void esperaPrimeraTecla(void);
void esperaPrimerValor(void);
void esperaSegundoValor(void);
void esperaTercerValor(void);
void esperaAlmohadillaValor(void);
void espera01Almohadilla(void);

//==================================
//Variables globales
//==================================
int valor;                               // Variable que va almacenando el n�mero introducido por el teclado
unsigned short int start=1;              // Variable que guarda el estado del motor (1=START 0=STOP)
unsigned short int sentido=1;            // Variable que guarda el estado del sentido de giro (1=CW 0=CCW)

//==================================
//Variables definidas en otros archivos
//==================================
extern unsigned short int num_pulsos_ref;
extern unsigned char tecla;
extern unsigned char nuevaTecla;
extern void (*estado[2])(void);

//==================================
//Funciones de inicializaci�n
//==================================
void init_procesoSecuencia(void)         // Inicializaci�n de variables necesarias para este proceso
{
    estado[1]= esperaPrimeraTecla;       // El estado inicial ser� esperaPrimeraTecla
}

//==================================
//Funciones auxiliares
//==================================
void LCD_mensaje_opciones_inicial(void)
{
    LCD_gotoXY(0,1);                      // Desplaza el cursor al principio de la fila inferior
    LCD_enviaCadena("OPCIONES * #    ");  // Muestra el mensaje inicial
}

void LCD_mensaje_opciones2(void)
{
    LCD_gotoXY(0,1);                      // Desplaza el cursor al principio de la fila inferior
    if(start==1)
        LCD_enviaCadena("0:START ");      // Muestra el mensaje START/STOP seg�n indique la variable start
    else
        LCD_enviaCadena("0:STOP  ");
    if(sentido==1)
        LCD_enviaCadena("1:CW    ");      // Muestra el mensaje CW/CCW seg�n indique la variable sentido
    else
        LCD_enviaCadena("1:CCW   ");
}

//==================================
// Estado esperaPrimeraTecla
//==================================
void esperaPrimeraTecla(void)
{
    if (nuevaTecla==1)                    // �Hay un nuevo car�cter?
    {
        nuevaTecla = 0;                   // Baja la bandera de detecci�n de tecla
        if(tecla==10)                     // Si la tecla es asterisco (=10)
        {
            LCD_gotoXY(0,1);                      // Desplaza el cursor al principio de la fila inferior
            LCD_enviaCadena("VALOR REF: ___ #");  // Muestra el mensaje (en cada _ ir� un d�gito pulsado)
            estado[1] = esperaPrimerValor;       // Siguiente estado esperaPrimerValor
        }                                             //0-9 10=* 11=#
        else if (tecla==11)               // Si la tecla es almohadilla (=11)
        {
            LCD_mensaje_opciones2();              // Muestra el mensaje con las opciones
            estado[1] = espera01Almohadilla;      // Siguiente estado espera01Almohadilla
        }
    }
}
//==================================
// Estado espera01Almohadilla
//==================================
void espera01Almohadilla(void)
{
    if (nuevaTecla==1)          // �Hay un nuevo car�cter?
    {
        nuevaTecla = 0;                   // Baja la bandera de detecci�n de tecla
        if(tecla==0)                      // Si la tecla es 0, cambia start
        {
            start=!start;
            LCD_mensaje_opciones2();      // Muestra el mensaje con las opciones
        }
        else if(tecla==1)
        {
            sentido=!sentido;
            LCD_mensaje_opciones2();      // Muestra el mensaje con las opciones
        }
        else if(tecla==11)                // Si la tecla es almohadilla, aplica los valores
        {
            if(start){

                CCP1CON=0b00001100;      // Activa PWM
              }
            else
            {
                CCP1CON=0b00000000;       // Desactiva PWM
                RB3=0;                    // Asegura el pinn RB3 a 0
            }
            if(sentido)
            {
                RB4=1;
                RB5=0;                    // [Bit1:Bit0]=1:0. El motor gira CW
            }
            else
            {
                RB4=0;
                RB5=1;                    // [Bit1:Bit0]=0:1. El motor gira CCW
            }
            LCD_mensaje_opciones_inicial(); // Muestra el mensaje inicial
            estado[1] = esperaPrimeraTecla; // Siguiente estado esperaPrimeraTecla
        }
    }
}

//==================================
// Estado esperaPrimerValor
//==================================
void esperaPrimerValor(void)
{
    if (nuevaTecla==1)          // �Hay un nuevo car�cter?
    {
        nuevaTecla = 0;                   // Baja la bandera de detecci�n de tecla
        if(tecla<=9)                      // Si es un n�mero
        {
            valor = tecla;                 // Se guarda el primer d�gito del valor de la referencia
            LCD_gotoXY(11,1);              // Desplaza el cursor: fila inferior columna 11 (donde est� el primer _ )
            LCD_enviaCaracter(tecla+48);    // Muestra el car�cter correspondiente a la tecla pulsada
            estado[1] = esperaSegundoValor;// Siguiente estado esperaSegundoValor
        }
    }
}

//==================================
// Estado esperaSegundoValor
//==================================
void esperaSegundoValor(void)
{
    if (nuevaTecla==1)          // �Hay un nuevo car�cter?
    {
        nuevaTecla = 0;                   // Baja la bandera de detecci�n de tecla
        if(tecla==11)                     // Si la tecla es almohadilla, ya hemos terminado
        {
            num_pulsos_ref = valor;       // Se guarda el valor introducido
            LCD_mensaje_opciones_inicial(); // Muestra el mensaje inicial
            estado[1] = esperaPrimeraTecla;             // Siguiente estado esperaPrimeraTecla
        }
        else if(tecla<=9)                 // Si es un n�mero
        {
            valor = tecla + valor*10;                // El valor anterior ser� las decenas y el nuevo ser� las unidades
            LCD_gotoXY(12,1);              // Desplaza el cursor
            LCD_enviaCaracter(tecla+48);  // Muestra el car�cter correspondiente a la tecla pulsada
            estado[1] = esperaTercerValor; // Siguiente estado
        }
    }
}

//==================================
// Estado esperaTercerValor
//==================================
void esperaTercerValor(void)
{
    if (nuevaTecla==1)          // �Hay un nuevo car�cter?
    {
        nuevaTecla = 0;                   // Baja la bandera de detecci�n de tecla
        if(tecla==11)                     // Si la tecla es almohadilla, ya hemos terminado
        {
            num_pulsos_ref = valor;       // Se guarda el valor introducido
            LCD_mensaje_opciones_inicial(); // Muestra el mensaje inicial
            estado[1] = esperaPrimeraTecla; // Siguiente estado esperaPrimeraTecla
        }
        else if(tecla<=9)                 // Si es un n�mero
        {
            valor=tecla+valor*10;                 // El valor anterior ser�n las centenas y decenas, y el nuevo ser� las unidades
            LCD_gotoXY(13,1);                     // Desplaza el cursor
            LCD_enviaCaracter(tecla+48);           // Muestra el car�cter correspondiente a la tecla pulsada
            estado[1] = esperaAlmohadillaValor;   // Siguiente estado esperaAlmohadillaValor
        }
    }
}

//==================================
// Estado esperaAlmohadillaValor
//==================================
void esperaAlmohadillaValor(void)
{
    if (nuevaTecla==1)          // �Hay un nuevo car�cter?
    {
        nuevaTecla = 0;                   // Baja la bandera de detecci�n de tecla
        if(tecla==11)                     // Si la tecla es almohadilla, ya hemos terminado
        {
            num_pulsos_ref = valor;       // Se guarda el valor introducido
            LCD_mensaje_opciones_inicial(); // Muestra el mensaje inicial
            estado[1] = esperaPrimeraTecla;              // Siguiente estado esperaPrimeraTecla
        }
    }
}
