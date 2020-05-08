// * ********************************************************************************* *
// * ************                      Librería "LCD.c"                   ************ *
// * ************       *********************************************     ************ *
// * ************            Rafael Millán Vázquez de la Torre            ************ *
// * ************         Departamento de Ingeniería Electrónica          ************ *
// * ************                 Universidad de Sevilla                  ************ *
// * ********************************************************************************* *
#include   <pic.h>

#include   "LCD.h"                  // Componente LCD de 2 líneas x 16 caracteres

//          - LCD_ini(BYTE config, BYTE  RS_PIN, BYTE E_PIN)
//          - LCD_enviaCaracter(BYTE caracter)
//          - LCD_enviaCadena(const char *cadena)
//          - LCD_irLineaInf()       Sitúa el cursor al principio
//          - LCD_irLineaSup()       Sitúa el cursor al principio
//          - LCD_enviablancos(BYTE n);
//          - LCD_gotoXY(UINT8 x,UINT8 y);  // Ej.: x=0, y=0 => columna 0, fila superior
//                                                  x=3, y=1 => columna 3, fila inferior
//          - LCD_enciende()
//          - LCD_apaga()
//          - LCD_Borrar()        Borra todo y pone el cursor al principio de la linea sup.
//          - LCD_esFilaInf()     Devuelve cierto si el cursor está en la fila inferior
//          - LCD_esFilaSup()     Devuelve cierto si el cursor está en la fila superior
//          - LCD_columna()       Devuelve la columna del cursor comenzando en la posición 0
//            -----------------
//          - LCD_enviaComando

#define LCD_retardo_us(x)  __delay_us(x)
#define LCD_retardo_ms(x)  __delay_ms(x)

// * *************************************** *
// * Rutinas                                 *
// * *************************************** *
void LCD_enviaCaracter___(BYTE caracter)
{
    // Si  ha llegado al final de una fila, el cursor está fuera de rango y no se vería aunque esté 
    // activa la opción de visible
    if  ( (++LCD_var_cursor & 0b00010000) == 0) 
    {
        if ((LCD_var_cursor & 0b10000000)==0)   // Fila superior
        {
             // Es un define con varias instrucciones -> el "if" necesita paréntesis
             LCD_gotoXY(0,0);      
        }
         else
         {
             LCD_gotoXY(0,1);
         }
        LCD_var_cursor&= 0b11100000;
    }

    LCD_RS_a_1();  // se va a enviar un caracter
    LCD_envia_8bits(caracter);
}

//=====================================================================================================
// LCD_ini
//
//  - Memoriza la configuración de los 6 pines del puerto conectado al LCD
//      - El pin E es un pin exclusivo para el LCD por lo que se fijará de salida
//  - Inicio del LCD según especifica el fabricante:
//          * Retardo superior a 15ms para que se estabilice la tensión de alimentación.
//          * Envía b'0011'.
//          * Retardo superior a 4,1ms.
//          * Envía b'0011'
//          * Retardo superior a 100us.
//          * Envía b'0011'
//          * Retardo superior a 40us.
//          * Envía b'0010'                             (Este valor configura el bus de 4 bits)
//  - Configuración del resto de parámetros
//          * LCD de 2 líneas, bus de 4 líneas y caracteres de 5x7 puntos.
//          * Borra el contenido y sitúa el cursor al principio.
//          * Enciende la pantalla y cursor no visible.
//          * Cursor configurado en modo incremental y sin desplazamiento.
//=====================================================================================================
void LCD_ini(BYTE config, BYTE RS_PIN, BYTE E_PIN)
{
    //--------------------------------
    LCD_BUS_PORT_PINES=    ( (config & 0b00000010)==0 ? 0b00001111 : 0b11110000);
    LCD_E  = E_PIN;         // Ej.: LCD_E = 0b00000010 -> LCD_E  es el bit 1 del puerto
    LCD_RS = RS_PIN;        // Ej.: LCD_RS= 0b00000010 -> LCD_RS es el bit 1 del puerto
    //--------------------------------
    LCD_BUS_PORT_PUNTERO=  ( (config & 0b00000001)==0 ? &PORTA : &PORTB);
    LCD_RS_PORT_PUNTERO=   ( (config & 0b00000100)==0 ? &PORTA : &PORTB);
    LCD_E_PORT_PUNTERO=    ( (config & 0b00001000)==0 ? &PORTA : &PORTB);
    LCD_BUS_PORT_TRIS_PUNTERO=  ( (config & 0b00000001)==0 ? &TRISA : &TRISB);
    LCD_RS_PORT_TRIS_PUNTERO=   ( (config & 0b00000100)==0 ? &TRISA : &TRISB);
    LCD_E_PORT_TRIS_PUNTERO=    ( (config & 0b00001000)==0 ? &TRISA : &TRISB);

    #if defined(_16F88)
       if (LCD_RS_PORT_PUNTERO == &PORTA) {
          if  (RS_PIN <= 0b00001000)
              ANSEL&= ~RS_PIN;                 // Pin RS digital
       }
       else {
           if  (RS_PIN >= 0b01000000)
              ANSEL&= ~(RS_PIN >> 1);           // Pin RS digital
       }
       //---------------------------------
       if (LCD_E_PORT_PUNTERO == &PORTA) {
          if  (E_PIN <= 0b00001000)
              ANSEL&= ~E_PIN;                  // Pin E digital
       }
       else {
           if  (E_PIN >= 0b01000000)
              ANSEL&= ~(E_PIN >> 1);           // Pin E digital
       }
       //---------------------------------
       if ((LCD_BUS_PORT_PUNTERO  == &PORTA) && (LCD_BUS_PORT_PINES==0b00001111) )
          ANSEL&= ~(LCD_BUS_PORT_PINES);       // Los pines del bus serán digitales
       else if ((LCD_BUS_PORT_PUNTERO  == &PORTB) && (LCD_BUS_PORT_PINES==0b11110000) )
          ANSEL&= 0b10011111;                   // Los pines RB6 y RB7  (AN4 y AN5)
    #endif

    // Secuencia de arranque según el catálogo


    LCD_E_TRIS_a_0();                     // E  se fija de salida todo el tiempo
    LCD_RS_TRIS_a_0();                    // RS se fija de salida todo el tiempo
    LCD_var_TRIS=LCD_BUS_PORT_TRIS;       // Memoriza la configuración previa de los pines que se usarán (entrada/salida)
    LCD_E_a_0();                          // E=0. Deshabilita el LCD -> Ignora el valor del resto de pines
    LCD_RS_a_0();                         // RS=0. Activa el modo comando
    LCD_retardo_ms(15);                   // Retardo de 15ms  (superior a 15 ms desde que se da tensión al dispositivo)

    LCD_RS_a_0();                         // SE van a enviar paquetes de 4 bits en formato comando -> RS=0
    LCD_envia_4bits(0b00000011);          // Escribe el primer dato en el LCD
    LCD_retardo_ms(5);                    // Retardo de 5ms (superior a 4,1ms)
    LCD_envia_4bits(0b00000011);          // Escribe el segundo dato en el LCD.
    LCD_retardo_us(110);                  // Retardo de 150us (superior a 100us)
    LCD_envia_4bits(0b00000011);          // Escribe el tercer dato en el LCD.
    LCD_retardo_us(50);                   // Retardo de 50us (superior a 40us)
    LCD_envia_4bits(0b00000010);          // LCD configurado con bus de 4 bits
    // ----------------------          ------------------------------------------
    LCD_enciende(CURSOR_VISIBLE_ON | CURSOR_PARPADEO_ON);  // Configura LCD: bus de 2 líneas, 5x7, cursor no visible e incremental
    //----------------------          ------------------------------------------
}

//=====================================================================================================
// Rutinas:
//      LCD_envia_4bits(dato,tipo)
//          - Envía 4 bits de un comando almacenado en los 4 bits inferiores de "dato"
//          - Configura temporalmente de salida los 4 pines del puerto conectado al bus del LCD
//          - Pone el dato en el puerto (4 bits superiores) respetando los 2 bits inferiores
//          - Pulso a nivel alto en E para que el LCD capture el dato.
//          - Se restaura la configuración original del puerto conectado al bus del LCD (entrada/salida)
//=====================================================================================================
void LCD_envia_4bits(BYTE dato)     // RS=1 -> caracter,  RS=0 -> comando
{
    BYTE a;
    BYTE LCD_var_TRIS=LCD_BUS_PORT_TRIS;       // Memoriza la configuración previa de los pines que se usarán (entrada/salida)


    if (LCD_BUS_PORT_PINES==0b11110000)        // Si el bus está conectado a los 4 pines superiores de un puerto
    {
         dato=  (dato << 4) & 0b11110000;
    }

    a = LCD_BUS_PORT;                          // Lectura de los pines sobrantes del puerto conectado al LCD.
    a = a & ~LCD_BUS_PORT_PINES;               // Estos pines no se alterarán al escribir en el puerto
    dato= dato | a;

                                              // Las 4 líneas conectadas al bus del LCD se configuran
    LCD_BUS_PORT_TRIS&= ~LCD_BUS_PORT_PINES;  // temporalmente de salida.


    LCD_BUS_PORT= dato;                        // Envía el dato de 4 bits al LCD.
    LCD_E_a_1();                               // E='1'. Pulso en el pin E de un microseg. que habilita el LCD
    LCD_E_a_0();                               // E='0'. Una vez capturados los datos de los pines se deshabilita.
    LCD_retardo_ms(2);

    LCD_BUS_PORT_TRIS= LCD_var_TRIS;           // Restaura dicha configuración
}

//======================================================================================================
// LCD_envia_8bits(dato)
//          - Envía 8 bits de un comando almacenado en los 4 bits superiores y los 4 bits inferiores de "dato"
//======================================================================================================
void LCD_envia_8bits_______(BYTE dato)     // RS=1 -> caracter,  RS=0 -> comando
{
    BYTE a;
    a=  (dato >> 4) & 0b00001111;
    LCD_envia_4bits(a);

    a= dato & 0b00001111;
    LCD_envia_4bits(a);
}

//=====================================================================================================
// LCD_enciende
//          * LCD de 2 líneas, bus de 4 líneas y caracteres de 5x7 puntos.
//          * Borra el contenido y sitúa el cursor al principio.
//          * Enciende la pantalla y cursor no visible.
//          * Cursor configurado en modo incremental y sin desplazamiento.
//=====================================================================================================
void LCD_enciende(BYTE config)
{
        LCD_retardo_ms(5);                    // Retardo de 5ms (superior a 4,1ms)

                                     // comando: b'001,DL,N,F,00'
      LCD_enviaComando(0b00101000);  // DL=0 -> bus de 4bits, N=1 -> 2 líneas, F=1 -> carácter de 5x7 puntos
      //----------------------       ------------------------------------------
      LCD_enviaComando(0b00000001);  // Borra el contenido del LCD y sitúa el cursor al principio de la línea superior
      //----------------------       ------------------------------------------
                                     // comando: b'00001,D,C,B'
                                     // D=1 -> diplay encendido, C=0 -> cursor apagado, B=0 -> no parpadeo
    switch (config)
    {
        case CURSOR_VISIBLE_OFF | CURSOR_PARPADEO_OFF: LCD_enviaComando(0b00001100);       break;
        case CURSOR_VISIBLE_ON  | CURSOR_PARPADEO_OFF: LCD_enviaComando(0b00001110);       break;
        case CURSOR_VISIBLE_OFF | CURSOR_PARPADEO_ON:  LCD_enviaComando(0b00001101);       break;
        case CURSOR_VISIBLE_ON  | CURSOR_PARPADEO_ON:
        default:                                       LCD_enviaComando(0b00001111);       break;
    }
//      LCD_enviaComando(LCD_enviaComando((parpadea_cursor ? 0b00001111 : 0b00001101));
      //----------------------       ------------------------------------------
                                     // comando: b'000001,I/D,S'
      LCD_enviaComando(0b00000110);  // I/D=1 -> cursor incrementar, S=0 -> No desplazar display
      //----------------------       ------------------------------------------
      LCD_var_cursor=0;              // Cursor en la fila=0 (superior), columna=0 (izquierda)
}

//=====================================================================================================
// LCD_enviablancos: Envía n espacios en blanco
//=====================================================================================================
void LCD_enviablancos(BYTE n)
{
   for ( ; n>0; n--)
   {
      LCD_enviaCaracter(' ');
   }
}




//=====================================================================================================
// LCD_enviaCadena: Envía una cadena hasta el terminador de cadena (hasta que el valor sea 0)
//=====================================================================================================
void LCD_enviaCadena(const char * cadena)
{
   BYTE i;
   for ( i=0; cadena[i]!=0; i++)
      LCD_enviaCaracter(cadena[i]);
}
