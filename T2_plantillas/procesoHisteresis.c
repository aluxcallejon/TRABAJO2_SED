#include   <xc.h>
#include <stdlib.h>

//==================================
//Prototipos de funciones
//==================================

//==================================
//Definiciones
//==================================

// D= 1023*Va/Vref      (Vref=5V)
//Vo=Vi*(1+(R1/R2))=4Vi
//Vi=(10mV/ºC)*T(ºC)
//Para una temperatura de 100º obtenemos una Vi=(10mV/ºC)*100ºC=1V, lo que significa que Vo=4V. Para calcular el valor correspondiente
//nos falta ver que valor de D obtenemos que D=1023*4V/5V=818.4--->~818


//Repetimos el mismo proceso para todas las temperaturas
#define T100 818             // valor correspondiente a Temperatura 100 C
#define T70  573              // valor correspondiente a Temperatura  70 C
#define T50  409             // valor correspondiente a Temperatura  50 C
#define T30  245            // valor correspondiente a Temperatura  30 C (245.52)



//CCPR1L= (ciclo*PR2)/100
//Si queremos un ciclo de 100%,entonces obtenemos que CCPR1L=PR2=249=M100
//Para el 50%,entonces CCPR1L=PR2/2=125(solo numeros enteros)
//Para el 10%, entonces el CCPR1L=PR1/10=25

#define M100  249            // valor correspondiente al 100% del m�ximo Duty Cycle
#define M50   125            // valor correspondiente al  50% del m�ximo Duty Cycle
#define M10    25            // valor correspondiente al  10% del m�ximo Duty Cycle

//==================================
//Variables globales
//==================================

//==================================
//Variables definidas en otros archivos
//==================================
extern int ADC_resultado;
extern unsigned short int max_duty;
extern void (*estado[3])(void);

//==================================
//Funciones de inicializaci�n
//==================================
void init_procesoHisteresis(void)     // Inicializaci�n de variables necesarias para este proceso
{
    estado[2]= estado100;             // El estado inicial ser� estado100
    max_duty=M100;                    // Valor inicial del Duty Cycle correspondiente a estado100
}
