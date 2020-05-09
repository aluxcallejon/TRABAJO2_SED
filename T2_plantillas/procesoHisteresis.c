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


void estado100()
{
  if(ADC_resultado > 100){ //Compruebo si la temperatura ha superado 100ºc
    estado[2]=estado10;//Si ha superado los 100 pasamos a estado10
    max_duty=M10; //Asignamos el duty correspondiente a este estado
  }else{
    estado[2]=100;//No hemos superado los 100, por lo que nos quedamos en este estado
    max_duty=M100; //Asignamos el duty correspondiente a este estado
  }
}

void estado10(void)
{
  //Comprobamos si hemos cambiado de estado,solo cambiamos si hemos bajado de 50ºC
if(ADC_resultado>=T50){
  //No hemos bajado de 50ºC,nos quedamos en el mismo
  estado[2]=estado10;
  max_duty=M10; //Asignamos el duty correspondiente a este estado
}else{
  //Hemos bajado de 50ºC,vamos a estado 50
estado[2]=estado50;
max_duty=M50; //Asignamos el duty correspondiente a este estado
}
}


void estado50(void)  //Estado 50
{



  //si seguimos en el rango de temperaturas 30<=ADC_resultado<=70 nos mantenemos en el estado
  if( (30<=ADC_resultado) || (ADC_resultado<=70) ){
    //seguimos en el mismo estado
    estado[2]=estado50;
    max_duty=M50; //Asignamos el duty correspondiente a este estado
  }
  if( ADC_resultado>70 ){
    //vamos al estado10
    estado[2]=estado10;
    max_duty=M10; //Asignamos el duty correspondiente a este estado
  }
  if( ADC_resultado<30 ){
    //vamos al estado 100
    estado[2]=estado100;
    max_duty=M100; //Asignamos el duty correspondiente a este estado
  }

}
