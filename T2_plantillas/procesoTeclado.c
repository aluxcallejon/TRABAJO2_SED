#include <xc.h>
#include "TECLADO.h"                   // Librería del componente TECLADO

// *******************************************
// Variables globales
// *******************************************
unsigned char tecla;                   // Variable que contendrá el valor de la última tecla pulsada
unsigned char nuevaTecla=0;            // Bandera que indica que existe una nueva tecla para ser procesada

//==================================
//Variables definidas en otros archivos
//==================================
extern void (*estado[2])(void);

//==================================
//Prototipos de funciones
//==================================
void esperaPulsarTecla(void);
void esperaSoltarTecla(void);

//==================================
//Funciones de inicialización
//==================================
void init_procesoTeclado(void)         // Inicialización de variables necesarias para este proceso
{
    estado[0]= esperaPulsarTecla;      // El estado inicial será esperaPulsarTecla
}

//==================================
// Estado esperaPulsarTecla
//==================================
void esperaPulsarTecla()
{
    if (TECLADO_leer())                // ¿Hay alguna tecla pulsada y no ha habido rebotes?
    {
        tecla=TECLADO_dato;            // Asignar TECLADO_dato a la variable tecla
        nuevaTecla = 1;                // Informa a procesoSecuencia de que hay disponible una nueva pulsacion de tecla
        estado[0]= esperaSoltarTecla;  // Se irá a esperar a que se suelte la tecla pulsada
    }
} 

//==================================
// Estado esperaSoltarTecla
//==================================
void  esperaSoltarTecla()
{
    if (TECLADO_pulsado()==0)          // ¿Hay alguna tecla aun pulsada?
    {                                  // Si no hay tecla pulsada
        estado[0]= esperaPulsarTecla;  // Se irá a esperar una nueva pulsación de tecla
    }
}
