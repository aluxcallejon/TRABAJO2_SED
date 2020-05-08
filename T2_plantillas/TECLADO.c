// * ********************************************************************************* *
// * ************                 Librería "TECLADO.h"                 ************ *
// * ************       *********************************************     ************ *
// * ************            Rafael Millán Vázquez de la Torre            ************ *
// * ************         Departamento de Ingeniería Electrónica          ************ *
// * ************                 Universidad de Sevilla                  ************ *
// * ********************************************************************************* *
// *                                                                                   *
// *        VERSION SIMPLIFICADA PARA EL TRABAJO 2. NO USAR PARA LAS PRACTICAS         *
// *                                                                                   *
// * ********************************************************************************* *
// Esta librería modificada NO requiere llamar a rutinas de la librería REBOTES.c
//
// * *************************************** *
// * Librerías (cabeceras)                   *
// * *************************************** *
#include <xc.h>
#include "TECLADO.h"


// * *************************************** *
// * Constantes                              *
// * *************************************** *
#define  TECLADO_PORT_COL  (*TECLADO_PORT_COL_PUNTERO)
#define  TECLADO_PORT_FIL  (*TECLADO_PORT_FIL_PUNTERO)    // Definimos como contenido del puntero

const UINT8 tabla_3col[12]=       { 1,2,3,4,5,6,7,8,9,10,0,11};
                                                                             // Esto es debido a que la conexión física no coincide con la de Proteus (TECLADO_ini)
                                                                             // debido a que el teclado necesita Pullup internos que están en RB4-RB7

// *******************************************
// Definición de tipos
// *******************************************
UINT16 REBOTES_lectura;
#define leerColumnas()  if ( (TECLADO_config & COL_EN_PORTB) == 0 )  {      \
                            REBOTES_lectura=PORTA&TECLADO_COL_PINES;        \
                        } else {                                            \
                            REBOTES_lectura=PORTB&TECLADO_COL_PINES;        \
                        }




// * *************************************** *
// * Variables globales                      *
// * *************************************** *
UINT8     TECLADO_dato;
BYTE_BITS TECLADO_banderas;
volatile UINT8 TECLADO_config;

#ifdef _16F88
    UINT8 TECLADO_COL_PINES;                     // Pines de la columnas. Ej.: b'00111100'  -> Los 4 pines de enmedio del puerto
    UINT8 TECLADO_FIL_PINES;                     // Pines de la fila.

    volatile UINT8  *TECLADO_PORT_COL_PUNTERO ; // Puntero al puerto conectado a las columnas
    volatile UINT8  *TECLADO_PORT_FIL_PUNTERO ; // Puntero al puerto conectado a las filas
#else
    UINT16 TECLADO_COL_PINES;                     // Pines de la columnas. Ej.: b'00111100'  -> Los 4 pines de enmedio del puerto
    UINT16 TECLADO_FIL_PINES;                     // Pines de la fila.

    volatile unsigned int  *TECLADO_PORT_COL_PUNTERO ; // Puntero al puerto conectado a las columnas
    volatile unsigned int  *TECLADO_PORT_FIL_PUNTERO ; // Puntero al puerto conectado a las filas
#endif



// * *************************************** *
// * Listado de rutinas                      *
// * *************************************** *
void  TECLADO_ini(UINT8 config);
BOOL  TECLADO_barrido(void);
BOOL  TECLADO_pulsado(void);


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
//
// * *************************************** *
// * Rutinas                                 *
// * *************************************** *

//======================================================================================
//  TECLADO_ini(UINT8 config)
//=======================================================================================
void TECLADO_ini(UINT8 config)
{
    TECLADO_config= config;
    //--------------------------------------------------------
    TECLADO_PORT_FIL_PUNTERO=  ( (config & FIL_EN_PORTB)    ==0 ? &PORTA     : &PORTB);
    TECLADO_FIL_PINES       =  ( (config & FIL_4PINES_ALTOS)==0 ? 0b0000000000001111 : 0b0000000011110000);
    //--------------------------------------------------------
    TECLADO_PORT_COL_PUNTERO =  ( (config & COL_EN_PORTB)==0 ? &PORTA     : &PORTB);

    switch (config & 0b00111000)
    {
        // Puede que TECLADO_COL_PINES sea de8 bits pero le asignamos constante de 16 bits.
        case COL_3PINES_BAJOS:  TECLADO_COL_PINES= 0b0000000000000111;
                                break;
        case COL_3PINES_MEDIOS: TECLADO_COL_PINES= 0b0000000000111000;
                                break;
        case COL_3PINES_ALTOS:  TECLADO_COL_PINES= 0b0000000011100000;
                                break;
    }



    //--------------------------------------------------------
    // Las columnas de entrada -> a '1' en TRISx
    if (  ( ((UINT8)TECLADO_config) & ((UINT8)0b00000010) ) ==  0x00 )
    {
        // !!!! TRISA es de 8 bits. El molde es super importante en proteus !!!!
        //.........................
        TRISA|=  ((UINT8)TECLADO_COL_PINES);        // columnas conectadas a PORTA
        //.........................

        #ifndef _16F88
            if  (  ( ((UINT8)TECLADO_config) & ((UINT8)COL_PULL_UP) ) == ((UINT8)COL_PULL_UP) )  // ((UINT8)COL_PULL_UP)
            {
                _CN2PUE  = 1;           // CN2  - RA0
                _CN3PUE  = 1;           // CN3  - RA1
                _CN30PUE = 1;           // CN30 - RA2
                if ( ((UINT8)TECLADO_config) & ((UINT8)COL_4PINES_BAJOS) == ((UINT8)COL_4PINES_BAJOS) )
                    _CN29PUE = 1;       // CN29 - RA3
            }
        #endif
    }
    else  // columnas en PORTB
    {
        //.........................
        TRISB|= TECLADO_COL_PINES;    // columnas conectadas a PORTB  -- COL_EN_PORTB= 0b00000100
        //.........................


        if (  ( ((UINT8)TECLADO_config) & ((UINT8)COL_PULL_UP) ) !=  0x00 )
        {
            #ifdef _16F88
                nRBPU=0;            // Activa los 8 Pullups del puerto B
            #else
                switch (config & 0b00111000)
                {
                    case COL_3PINES_BAJOS:
                        _CN4PUE = _CN5PUE = _CN6PUE = 1;    break;  // RB0:RB2
                    case COL_3PINES_ALTOS:
                        _CN27PUE= _CN24PUE= _CN23PUE= 1;    break;  // RB5:RB7

                    case COL_4PINES_BAJOS:
                        _CN4PUE = _CN5PUE = _CN6PUE = _CN7PUE = 1;  break;  // RB0:RB3
                    case COL_4PINES_ALTOS:
                    default:
                        _CN1PUE = _CN27PUE= _CN24PUE= _CN23PUE= 1;  break;  // RB5:RB7
                }
            #endif
        }
    }



    //--------------------------------------------------------
    // Las filas de salida -> a '0' en TRISx
    if (  ( ((UINT8)TECLADO_config) & ((UINT8)FIL_EN_PORTB) ) !=  0x00 )
        TRISB&= ~TECLADO_FIL_PINES;   // filas conectadas a PORTB
    else
        TRISA&= (UINT8)(~TECLADO_FIL_PINES);   // filas conectadas a PORTA
}

//======================================================================================
//  TECLADO_pulsado()
//=======================================================================================
BOOL TECLADO_pulsado(void)
{

    // TECLADO_PORT_FIL es el contenido de un puntero que apunta bien a PORTA o a PORTB
    // Todas las filas activadas: 4 pines a 0000
    TECLADO_PORT_FIL&=  ~TECLADO_FIL_PINES;           // Ponemos a 0000 las 4 filas (activadas)

    // Retorna FALSE si hay rebotes.
    leerColumnas();
    if (REBOTES_lectura == TECLADO_COL_PINES)
    {
        TECLADO_PULSADO_BIT= 0;
        return FALSE;
    }

    TECLADO_PULSADO_BIT= 1;
    return TRUE;
}



//======================================================================================
//  TECLADO_barrido()
//      * Leen con control de rebotes los pines especificados por el parámetro "mascara"
//      * Retorna un int (2 bytes):  0x0100 si hay rebotes y 0x00nn si no los ha habido
//                                   El valor del puerto es el byte bajo: 0xnn
//=======================================================================================
BOOL TECLADO_leer(void)
{
    UINT8  i;
    UINT16  bit_a_testear;            // Todos los bits a 1 excepto el de la fila que se quiere testear

    TECLADO_dato          = 0;        // 4 bits
    TECLADO_DATO_BIT= 0;
    TECLADO_PULSADO_BIT   = 0;        // Mantiene el bit de 3 o 4 columnas
//    TECLADO_4_COLUMNAS    =  ;        //


    //------------------------------------------------------------
    // El siguiente código es el mismo de la rutina TecladoPulsado. No se llama para no saturar la pila
    // TECLADO_PORT_FIL es el contenido de un puntero que apunta bien a PORTA o a PORTB
    // Todas las filas activadas: 4 pines a 0000
    TECLADO_PORT_FIL&=  ~TECLADO_FIL_PINES;           // Ponemos a 0000 las 4 filas (activadas)
    leerColumnas();                                // Retorna FALSE si hay rebotes.
    if (REBOTES_lectura == TECLADO_COL_PINES)
    {
        TECLADO_PULSADO_BIT= 0;
        return FALSE;
    }

    TECLADO_PULSADO_BIT= 1;


    //------------------------------------------------------------

    // Se testea la primera fila. Se conecta el pin de la fila a testear a '0' lógico y el resto a '1'.
    // En cualquiera de las posibles conexiones del teclado las filas están conectadas a los 4 pines
    // menos significativos de un puerto bien el A o el B.


    // Según la configuración de las filas iniciamos la variable bit_a_testear. Será el de la derecha de los 4.
    switch (TECLADO_FIL_PINES)
    {
        case 0b0000000000001111:  bit_a_testear= 0b0000000011111110;  break;
        case 0b0000000000111100:  bit_a_testear= 0b0000000011111011;  break;
        case 0b0000000011110000:  bit_a_testear= 0b0000000011101111;  break;
        default:                  bit_a_testear= 0b0000000011111111;  break;
    }

    // La variable "tecla" contendrá el número de la tecla pulsada en el teclado ficticio.
    // Incialmente se asigna a 0 en el bucle. En cada iteración se barre una fila nueva
    // por lo que esta variable se incremente en 3 (número de elementos de una fila).
    for (i=0; i<4; i++)
    {
        // Se asigna al puerto 3 filas a '1' (desactivadas) y una de ellas a '0' (activada)
        TECLADO_PORT_FIL= (TECLADO_PORT_FIL | TECLADO_FIL_PINES) & bit_a_testear;
        // Se leen las columnas para la fila elegida. En cualquiera de las 3 conexiones las columnas
        // se conectan siempre al puerto B
        leerColumnas();                                // Retorna FALSE si hay rebotes.
        if (REBOTES_lectura != TECLADO_COL_PINES)
            break;


        // Desplaza el '0' del bit a testear e introduce un 1 por la derecha
        // Filtramos solo los 4 bits menos significativos de fil_pines en la variable  "aux"
        bit_a_testear= (bit_a_testear<<1) | 0b00000001 ;
        // fil_pines mantiene sus 4 bit más significativos y los 4 menos significativos
        // son los que se usan para el barrido. Su valor desplazado una posición está en "aux"

        TECLADO_dato+= 3;
    }

    // Las columnas no tienen valor de reposo -> Estamos en la fila de la tecla pulsada
    // Hay que calcular el valor definitivo de la tecla pulsada en el teclado real gracias a la
    // tabla de conversión. Se entra con el valor de "tecla" (tecla pulsada para el teclado ficticio)
    // y se obtiene en la misma variable "tecla" el valor de la tecla pulsada para el teclado real.
    switch (TECLADO_COL_PINES)
    {
        // ------------
        // 3 columnas
        // ------------
        case 0b00000111:
            if      (REBOTES_lectura==0b00000110) TECLADO_dato+= 0;         // tecla pulsada en columna 1
            else if (REBOTES_lectura==0b00000101) TECLADO_dato+= 1;         // tecla pulsada en columna 2
            else if (REBOTES_lectura==0b00000011) TECLADO_dato+= 2;         // tecla pulsada en columna 3
            else                            return FALSE;             // tecla no identificada
            break;
        case 0b11100000:
            if      (REBOTES_lectura==0b11000000) TECLADO_dato+= 0;         // tecla pulsada en columna 1
            else if (REBOTES_lectura==0b10100000) TECLADO_dato+= 1;         // tecla pulsada en columna 2
            else if (REBOTES_lectura==0b01100000) TECLADO_dato+= 2;         // tecla pulsada en columna 3
            else                            return FALSE;             // tecla no identificada
            break;

    }

    // La variable tecla contiene el resultado aplicado al teclado ficticio. Convertimos al valor real.
    TECLADO_dato= tabla_3col[TECLADO_dato];

    // Bandera
    TECLADO_DATO_BIT=1;   // Bandera que informa si se ha pulsado un nuevo dato
    return TRUE;
}
