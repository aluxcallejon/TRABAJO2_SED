// * ********************************************************************************* *
// * ************                      Librería "LCD.h"                   ************ *
// * ************       *********************************************     ************ *
// * ************            Rafael Millán Vázquez de la Torre            ************ *
// * ************         Departamento de Ingeniería Electrónica          ************ *
// * ************                 Universidad de Sevilla                  ************ *
// * ********************************************************************************* *
#ifndef     _LCD_H_             //  ENDIF al final del fichero
#define     _LCD_H_             //  Si se llama dos veces al fichero, la 2ª no se incluye

#include "XTAL_FREQ.h"
#include "GenericTypeDefs.h"

// * *************************************** *
// * Constantes y definiciones               *
// * *************************************** *

#define FILA_SUP 0
#define FILA_INF 1

// ==================================
// Párametros para LCD_ini( , , , )
// ==================================
#define  BUS_EN_PORTA      0b00000000
#define  BUS_EN_PORTB      0b00000001

#define  BUS_4PINES_BAJOS  0b00000000
#define  BUS_4PINES_ALTOS  0b00000010

#define  RS_EN_PORTA       0b00000000   // CONTROL: RS
#define  RS_EN_PORTB       0b00000100   // CONTROL: RS

#define  E_EN_PORTA        0b00000000   // CONTROL: E
#define  E_EN_PORTB        0b00001000   // CONTROL: E


#define  RS_PIN_0          0b00000001
#define  RS_PIN_1          0b00000010
#define  RS_PIN_2          0b00000100
#define  RS_PIN_3          0b00001000
#define  RS_PIN_4          0b00010000
#define  RS_PIN_5          0b00100000
#define  RS_PIN_6          0b01000000
#define  RS_PIN_7          0b10000000

#define  E_PIN_0           0b00000001
#define  E_PIN_1           0b00000010
#define  E_PIN_2           0b00000100
#define  E_PIN_3           0b00001000
#define  E_PIN_4           0b00010000
#define  E_PIN_5           0b00100000
#define  E_PIN_6           0b01000000
#define  E_PIN_7           0b10000000
// ==================================

#define CURSOR_VISIBLE_ON   0b00000001
#define CURSOR_VISIBLE_OFF  0b00000000
#define CURSOR_PARPADEO_ON  0b00000010
#define CURSOR_PARPADEO_OFF 0b00000000

// * *************************************** *
// * Variables globales                      *
// * *************************************** *
extern BYTE LCD_var_cursor;


// * *************************************** *
// * Rutinas                                 *
// * *************************************** *

extern void LCD_ini(BYTE config, BYTE RS_PIN, BYTE E_PIN);
extern void LCD_envia_4bits(BYTE dato);             // RS=1 -> caracter,  RS=0 -> comando
//extern inline void LCD_envia_8bits(BYTE dato);             // RS=1 -> caracter,  RS=0 -> comando
extern void LCD_enciende(UINT8 config);
extern void LCD_enviaCadena(const char *cadena);
extern void LCD_enviablancos(BYTE n);
//extern void LCD_gotoXY(UINT8 x,UINT8 y);  // Ej.: x=1, y=1 => fila superior, columna primera // x=3, y=2 => fila inf., columna tercera
extern void LCD_enviaCaracter____(BYTE caracter);

// Ejemplo:  LCD_irFilaCol(FILA_SUP, LCD_columna() )  -> Cursor en la fila superior y en la columna actual

// La librería está preparada para que los 4 pines de datos (salidas para el PIC) puedan
// ser compartidos por otro periférico pero como entradas (ej.: filas de un teclado).

// Librería de rutinas para la gestión de un LCD de 2 líneas x 16 caracteres gestionado
// con un bus de datos 4 líneas para optimizar el número de pines empleados.

// El bus de datos del LCD (configurado para 4 bits) se conectará bien a las 4 líneas
// inferiores de un puerto del PIC (en este caso la variable LCD_BUS_PORT_PINES=b'00001111')
// o bien a los 4 bits superiores del puerto (en este caso la variable
// LCD_BUS_PORT_PINES=b'11110000'). Estos pines se ponen en alta impedancia cuando el pin E del
// LCD se pone a '0'. Por tanto, pueden conectarse a otros dispositivos y tener más
// de una función ya que el pin E solo se pone a '1' cuando el pic se dirige al LCD.
//      Los pines E y RS pueden asignarse a cualquier otro pin libre
// del mismo puerto o de cualquier otro puerto del PIC. Las posibilidades de conexión del
// 16F84/16F88 son múltiples. En el caso de un pic con más de 2 puertos aumentan aun más.

// Posibles configuración según los parámetros de entrada de la rutina LCD_ini( ) serían:

//      1. LCD_ini( (BUS_EN_PORTA+BUS_4PINES_BAJOS)+RS_EN_PORTB+E_EN_PORTB, RS_PIN_1, E_PIN_2).
//
//             Pin LCD                        Pin PIC
//            --------                      ---------
//            [DB7:DB4]                     [RA3:RA0]             (BUS: 4 líneas pines bajos de PORTA)
//                RS                           RB1                (RS: Línea de CONTROL_EN_PORTB en el pin 1)
//                E                            RB2                (E : Línea de CONTROL_EN_PORTB en el pin 2)
//                RW                           GND                  (se ahorra un pin del PIC)

//      2. LCD_ini( (BUS_EN_PORTB+BUS_4PINES_BAJOS)+RS_EN_PORTA+E_EN_PORTB, RS_PIN_1, E_PIN_5).
//
//             Pin LCD                        Pin PIC
//            --------                      ---------
//            [DB7:DB4]                     [RB3:RB0]             (BUS: 4 líneas pines bajos de PORTB)
//                RS                           RA1                (RS: Línea de CONTROL_EN_PORTB en el pin 4)
//                E                            RB5                (E : Línea de CONTROL_EN_PORTB en el pin 5)
//                RW                           GND                  (se ahorra un pin del PIC)

//      3. LCD_ini( (BUS_EN_PORTB+BUS_4PINES_BAJOS)++RS_EN_PORTA+E_EN_PORTA, RS_PIN_0, E_PIN_1).
//
//             Pin LCD                        Pin PIC
//            --------                      ---------
//            [DB7:DB4]                     [RB3:RB0]             (BUS: 4 líneas pines bajos de PORTB)
//                RS                           RA0                (RS: Línea de CONTROL_EN_PORTA en el pin 0)
//                E                            RA1                (E : Línea de CONTROL_EN_PORTA en el pin 1)
//                RW                           GND                  (se ahorra un pin del PIC)

// Todos los pines del PIC se configurarán de salida.
//  - Los pines E y RS son dedicados (configurados de salida para el PIC).
//  - El resto de pines (<DB7:DB4>) pueden tener otra función alternativa bien como entradas bien como salidas.

// * *************************************** *
// * Constantes y definiciones               *
// * *************************************** *
#define  LCD_BUS_PORT               (*LCD_BUS_PORT_PUNTERO)          // Definimos como contenido del puntero
#define  LCD_BUS_PORT_TRIS          (*LCD_BUS_PORT_TRIS_PUNTERO)     // Definimos como contenido del puntero

#define  LCD_RS_PORT                (*LCD_RS_PORT_PUNTERO)           // Definimos como contenido del puntero
#define  LCD_RS_PORT_TRIS           (*LCD_RS_PORT_TRIS_PUNTERO)      // Definimos como contenido del puntero

#define  LCD_E_PORT                 (*LCD_E_PORT_PUNTERO)           // Definimos como contenido del puntero
#define  LCD_E_PORT_TRIS            (*LCD_E_PORT_TRIS_PUNTERO)      // Definimos como contenido del puntero


// * *************************************** *
// * Variables globales                      *
// * *************************************** *
BYTE LCD_var_cursor;
BYTE LCD_var_TRIS;                          // Configuración inicial del puerto conectado a los datos del LCD
BYTE LCD_E;                                 // Ej.: LCD_E= 0b00000010 -> LCD_E es el bit 1 del puerto
BYTE LCD_RS;
BYTE LCD_BUS_PORT_PINES;

volatile BYTE *LCD_BUS_PORT_PUNTERO;                      // Puntero al puerto del bus del LCD
volatile BYTE *LCD_RS_PORT_PUNTERO;                       // Puntero al puerto de los pines RS
volatile BYTE *LCD_E_PORT_PUNTERO;                        // Puntero al puerto de los pines E
volatile BYTE *LCD_BUS_PORT_TRIS_PUNTERO;                 // Puntero al puerto del bus del LCD
volatile BYTE *LCD_RS_PORT_TRIS_PUNTERO;                  // Puntero al puerto de los pines RS
volatile BYTE *LCD_E_PORT_TRIS_PUNTERO;                   // Puntero al puerto de los pines E

// * *************************************** *
// * Rutinas                                 *
// * *************************************** *

// -------------------------------------------------------------
// seudo-rutinas implementadas con #defines para no cargar la pila
// -------------------------------------------------------------
#define LCD_E_TRIS_a_0()   LCD_E_PORT_TRIS&= ~LCD_E
#define LCD_E_TRIS_a_1()   LCD_E_PORT_TRIS|=  LCD_E
#define LCD_E_a_0()        LCD_E_PORT&= ~LCD_E
#define LCD_E_a_1()        LCD_E_PORT|=  LCD_E

#define LCD_RS_TRIS_a_0()  LCD_RS_PORT_TRIS&= ~LCD_RS
#define LCD_RS_TRIS_a_1()  LCD_RS_PORT_TRIS|=  LCD_RS
#define LCD_RS_a_0()       LCD_RS_PORT&= ~LCD_RS
#define LCD_RS_a_1()       LCD_RS_PORT|=  LCD_RS


#define LCD_enviaComando(comando)  do{ LCD_RS_a_0();            \
                                       LCD_envia_8bits(comando); }while(0)

// Borra el contenido del LCD y sitúa el cursor al principio de la línea superior
#define LCD_Borrar() do{  LCD_enviaComando(0b00000001);  \
                          __delay_ms(2); }while(0)

#define LCD_irLineaSup()  LCD_gotoXY(0,0)             // Sitúa el cursor al comienzo de la línea 1
#define LCD_irLineaInf()  LCD_gotoXY(0,1)             // Sitúa el cursor al comienzo de la línea 2

#define LCD_esFilaInf()   ((LCD_var_cursor & 0b10000000)!=0)
#define LCD_esFilaSup()   ((LCD_var_cursor & 0b10000000)==0)
#define LCD_columna()     ((LCD_var_cursor & 0b00001111)   )

//  Apaga temporalmente el display (no hará falta iniciarlo con posterioridad, solo encenderlo).
//           I/D=1 -> cursor incrementar, S=0 -> No desplazar display
#define LCD_apaga()     LCD_enviaComando(0b00001000)

//=====================================================================================================
// LCD_irFilCol: Sitúa el cursor en la línea dada por Y y la posición dada por X
//          - Entrada (W): b'y000xxxx'. X= nibble inferior de (W), Y=nibble superior de (W)
//          - Ejemplo 1 w=b'10001111'.  X=1111 (posición 15),  Y=1 (línea 2, inferior)
//          - Ejemplo 2 w=b'00000111'.  X=0111 (posición 7),      Y=0 (línea 1, superior)
//          - Ejemplo 3 w=b'00000000'.  X=0000 (posición 0),      Y=0 (línea 1, superior)
//=====================================================================================================
 // Si dato=0b0000dddd -> fila superior. Si dato=0b0100dddd -> fila inferior (dir. > 0x40)
#define LCD_gotoXY(x,y)                                                                         \
do                                                                                              \
{                                                                                               \
   LCD_var_cursor= (y==0  ? 0b00000000 : 0b01000000) | x;                                       \
   LCD_enviaComando( (LCD_var_cursor | 0b10000000) );                                           \
}while(0)

// RS=1 -> caracter,  RS=0 -> comando
#define LCD_envia_8bits(dato)                           \
do                                                      \
{                                                       \
    LCD_envia_4bits( (((dato) >> 4) & 0b00001111) );    \
    LCD_envia_4bits( ((dato) & 0b00001111) );           \
}while(0)


// Si  ha llegado al final de una fila, el cursor está fuera de rango y no se vería aunque esté
// activa la opción de visible
#define LCD_enviaCaracter(caracter)                 \
do                                                  \
{                                                   \
    LCD_RS_a_1();                                   \
    LCD_envia_8bits(caracter);                      \
    if  ( (++LCD_var_cursor & 0b00010000) != 0)     \
    {                                               \
        if ((LCD_var_cursor & 0b10000000)==0)       \
        {                                           \
             LCD_gotoXY(0,0);                       \
        }                                           \
        else                                        \
        {                                           \
           LCD_gotoXY(0,1);                         \
        }                                           \
        LCD_var_cursor&= 0b11100000;                \
    }                                               \
}while(0)


#endif   _LCD_H_