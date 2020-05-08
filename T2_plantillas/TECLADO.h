// * ********************************************************************************* *
// * ************                 Librería "TECLADO.h"                    ************ *
// * ************       *********************************************     ************ *
// * ************            Rafael Millán Vázquez de la Torre            ************ *
// * ************         Departamento de Ingeniería Electrónica          ************ *
// * ************                 Universidad de Sevilla                  ************ *
// * ********************************************************************************* *
// * ********************************************************************************* *
// *                                                                                   *
// *        VERSION SIMPLIFICADA PARA EL TRABAJO 2. NO USAR PARA LAS PRACTICAS         *
// *                                                                                   *
// * ********************************************************************************* *
// Esta librería modificada NO requiere llamar a rutinas de la librería REBOTES.c
//

#ifndef _TECLADO_H_     //  ENDIF al final del fichero
#define _TECLADO_H_     //  Si se llama dos veces al fichero, la 2ª no se incluye
//

#include "GenericTypeDefs.h"


// * *************************************** *
// * Constantes                              *
// * *************************************** *
// ==================================
// Párametros para ini( , , , )
// ==================================
// Filas (puerto)         0b0000000x
#define FIL_EN_PORTA      0b00000000
#define FIL_EN_PORTB      0b00000001
// Columnas (puerto)      0b000000x0
#define COL_EN_PORTA      0b00000000
#define COL_EN_PORTB      0b00000010

// Filas (pines)          0b00000x00
#define FIL_4PINES_BAJOS  0b00000000
// Las filas en los 4 MSB del puerto (solo PIC16F88)
#define FIL_4PINES_ALTOS  0b00000100    

// Columnas (pines)       0b00xxx000
#define COL_3PINES_BAJOS  0b00001000
// Las columnas en RB3:RB5  (solo PORTB)
#define COL_3PINES_MEDIOS 0b00010000    
#define COL_3PINES_ALTOS  0b00011000    

#define COL_4PINES_BAJOS  0b00100000
    // Las columnas en RB2:RB5  (solo PORTB)
#define COL_4PINES_MEDIOS 0b00101000
#define COL_4PINES_ALTOS  0b00110000   


// Col. Pull-up internos  0b0x000000
#define COL_PULL_UP       0b01000000    
                                        // RB4:RB7 en 16F88,  y cualquir opción de columnas en dsPIC33F

// Barrido por columnas   0bx0000000
#define CRUCE_FIL_COL     0b10000000    
                                        // La conexión física es diferente a la de simulación. Se barriría por columnas.
                                        // Esto es debido a que la conexión física no coincide con la de Proteus (TECLADO_ini)
                                        // debido a que el teclado necesita Pullup internos que están en RB4-RB7. Sin embargo,
                                        // en la placa RB4-RB7 están conectados a las filas

// ==================================

#define TECLADO_DATO_BIT       TECLADO_banderas.bits.b7
#define TECLADO_PULSADO_BIT    TECLADO_banderas.bits.b6
#define TECLADO_4_COLUMNAS     TECLADO_banderas.bits.b5

// * *************************************** *
// * Listado de rutinas                      *
// * *************************************** *
extern UINT8      TECLADO_dato;
extern BYTE_BITS  TECLADO_banderas;

// * *************************************** *
// * Listado de rutinas                      *
// * *************************************** *
//======================================================================================
//  TECLADO_ini(BYTE config) 
//     config(0):  '0'= PORTA,  '1'=PORTB   -- Para la FILA
//     config(1):  '0'= 4-LSB,  '1'=4-MSB   -- Para la FILA
//     config(2):  '0'= PORTA,  '1'=PORTB   -- Para la COLUMNA
//     config(3):  '0'= 3-LSB,  '1'=3-MSB   -- Para la COLUMNA
//=======================================================================================
void TECLADO_ini(BYTE config);
//======================================================================================
//  TECLADO_barrido() 
//      * Leen con control de rebotes los pines especificados por el parámetro "mascara"
//      * Retorna un int (2 BYTEs):  0x0100 si hay rebotes y 0x00nn si no los ha habido
//                                   El valor del puerto es el BYTE bajo: 0xnn              
//=======================================================================================
BOOL TECLADO_leer(void);
BOOL TECLADO_pulsado(void);

   
// Las posibilidades de conexión del las filas y columnas a los 2 puertos del 16f84 es variada.
// Si el pic fuera de gama más alta -con más puertos- las posibilidades de conexión aumentan 
// mucho más. Para poder elegir entre varias posibilidades de conexión se utilizan los parámetros 
// de la rutina TECLADO_ini(  ). Hay más posibilidades de las que aquí se presentan.

//  1.  TECLADO_ini( (FIL_PORTB+FIL_4PINES_BAJOS) + (COL_PORTB+COL_3PINES_ALTOS) )
//
//        Pin Teclado            Pin PIC
//      ------------            ---------
//         [F1:F4]              [RB0:RB3]       (Filas conectadas a las 4 líneas inferiores de PORTB).
//         [C1:C3]              [RB5:RB7]       (Filas conectadas a las 3 líneas superiores de PORTB).
//
//  2.  TECLADO_ini( (FIL_PORTA+FIL_4PINES_BAJOS) + (COL_PORTB+COL_3PINES_ALTOS) )
//
//        Pin Teclado            Pin PIC
//      ------------            ---------
//         [F1:F4]              [RA0:RA3]       (Filas conectadas a las 4 líneas inferiores de PORTA).
//         [C1:C3]              [RB5:RB7]       (Filas conectadas a las 3 líneas superiores de PORTB).
//
// Librería de rutinas para la gestión de un teclado telefónico de 4 filas x 3 columnas.
// La búsqueda de la tecla pulsada se realiza mediante un barrido por filas: se va 
// comprobando una a una si contiene la tecla pulsada. Por este motivo se trabaja con un
// teclado ficticio que se enumera por filas. Una vez conocida el número de la tecla según
// el teclado ficticio se obtiene la tecla real mediante una tabla de conversión de códigos. 
//
// Las filas son salidas para el pic y la columnas son entradas. Dichas entradas requieren 
// resistencias de pull-up para fijar un '1' lógico en ausencia de pulsación.
// 
//        Teclado Ficticio:                  Teclado Real:
//
//          C1   C2   C3                     C1   C2   C3
//           ^    ^    ^                      ^    ^    ^
//           ¦    ¦    ¦                      ¦    ¦    ¦
//        +--------------+                 +--------------+   
//  F1 -->¦  0 ¦  1 ¦  2 ¦           F1 -->¦  1 ¦  2 ¦  3 ¦
//        ¦----+----+----¦                 ¦----+----+----¦
//  F2 -->¦  3 ¦  4 ¦  5 ¦           F2 -->¦  4 ¦  5 ¦  6 ¦
//        ¦----+----+----¦                 ¦----+----+----¦
//  F3 -->¦  6 ¦  7 ¦  8 ¦           F3 -->¦  7 ¦  8 ¦  9 ¦
//        ¦----+----+----¦                 ¦----+----+----¦
//  F4 -->¦  9 ¦ 10 ¦ 11 ¦           F4 -->¦  A ¦  0 ¦  B ¦
//        +--------------+                 +--------------+
//




#endif
