#include   <xc.h>
#include <stdlib.h>

//==================================
//Prototipos de funciones
//==================================

//==================================
//Definiciones
//==================================
#define T100 ???????              // valor correspondiente a Temperatura 100 C
#define T70  ???????              // valor correspondiente a Temperatura  70 C
#define T50  ???????              // valor correspondiente a Temperatura  50 C
#define T30  ???????              // valor correspondiente a Temperatura  30 C

#define M100 ???????              // valor correspondiente al 100% del máximo Duty Cycle
#define M50  ???????              // valor correspondiente al  50% del máximo Duty Cycle
#define M10  ???????              // valor correspondiente al  10% del máximo Duty Cycle

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
//Funciones de inicialización
//==================================
void init_procesoHisteresis(void)     // Inicialización de variables necesarias para este proceso
{
//    estado[2]= estado100;             // El estado inicial será estado100
//    max_duty=M100;                    // Valor inicial del Duty Cycle correspondiente a estado100
}
