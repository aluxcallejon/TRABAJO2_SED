#-------------------------------------------------------------
# Ficheros fuente C
#-------------------------------------------------------------
FICHEROS = trabajo procesoHisteresis procesoSecuencia procesoTeclado interrupcion inicializacion TECLADO LCD

#-------------------------------------------------------------
# Ejecutable: trabajo.COF, trabajo.HEX
#-------------------------------------------------------------
EJECUTABLE = trabajo


#------------------------------------------------------------
# Rutas
#------------------------------------------------------------
RUTA_MAKE=  'c:/sed_tools/make'
RUTA_BIN =  'c:/sed_tools/xc8/bin'

#------------------------------------------------------------
# Ejecutables
#------------------------------------------------------------
CC       = $(RUTA_BIN)/xc8.exe
LK       = $(RUTA_BIN)/xc8.exe

RM    = $(RUTA_MAKE)/rm.exe -f
MD    = $(RUTA_MAKE)/mkdir.exe -p
MV    = $(RUTA_MAKE)/mv.exe
CP    = $(RUTA_MAKE)/cp.exe

## Tools general options
CCFLAGS=--chip=16F88 --errors=10 --pass1
LKFLAGS=--chip=16F88 --errors=10


#-------------------------------------------------------------
# Comando Principal "all" que ejecutara 3 tareas
#-------------------------------------------------------------
all : dir_obj   $(EJECUTABLE).cof   limpiar


#-------------------------------------------------------------
# Comando "dir_obj". Crea la carpeta "./obj" si no existe
#-------------------------------------------------------------
dir_obj :
ifeq ($(wildcard ./obj),)
	$(MD) ./obj
endif

#-------------------------------------------------------------
# OBJS. Listado de ficheros intermedios 
#-------------------------------------------------------------
OBJS := $(foreach i,$(FICHEROS),obj/$(i).p1)

#------------------------------------------------------------
# Proceso de "linkar" (enlazar todos los OBJs)
#-------------------------------------------------------------
$(EJECUTABLE).cof : $(OBJS)
	$(LK) -O"obj/$(EJECUTABLE).cof"  $(OBJS)  $(LKFLAGS)
	$(MV) ./obj/$(EJECUTABLE).cof  .
	$(RM) funclist      
	$(RM) l.obj 

#------------------------------------------------------------
# Proceso de "compilar" los fuentes en C (salida con extensión *.p1)
#-------------------------------------------------------------
./obj/%.p1:	%.c
	$(CC) $(CCFLAGS) -o"$@" $<


#------------------------------------------------------------
# Comando de limpieza de ficheros intermedios
#-------------------------------------------------------------
# No dependencias -> derecha de los dos puntos
# "rm" indentado con TAB (obligatorio)
.Phony : limpiar
limpiar :
ifneq  ($(wildcard ./Last\ Loaded\ $(EJECUTABLE).DBK),)
		$(RM) "./Last Loaded $(EJECUTABLE).DBK"
endif 


