
#Funciones

#-------------------------------MENUS----------------------------------------------------

#Funcion menu del sistema
function menu1(){

echo "------------------------Menu-----------------------------------"
echo "APLICACION APDCUM.Procesador de ficheros csv."
echo "1.Configuración"
echo "2.Procesamiento de información"
echo "3.Visualizador"
echo "4.Salir"
echo "----------------------------------------------------------------"

echo "Introduzca una opcion:"

}
#Sub menu de Tranformación de fichero.
function subMenuProcInfo(){

echo "-----------------SubMenu Transformación de fichero---------------"
echo "1. Selección por columna"
echo "2. Selección por columna/patrón"
echo "3. Fichero completo"
echo "4. Salir del subMenu"
echo "-------------------------------------------------------------------"

echo "Introduzca una opcion:"
}

#Menu Switch.Menu alterantivo.
function menuSwitch(){
read var
 case $var in
     1)
        echo "opcion 1"
        mostrarFicheroOrig
     	;;
     2)
        echo "opcion 2"
        procesarInfoFichero
     	;;
     3)
        echo "Se mostrara el fichero"
        #awk '{print FNR "\t:" $0}' usuarios.csv
        verFichero
        ;;
     *)
        echo "no se qué numero es"
     ;;
  esac
}
#Menu until. Menu principal del programa.
function menuUntil(){
	menu1
	read var
	
	until [ $var -eq 4 ]
	do 
 		case $var in
     		1)
       			echo "opcion 1"
        		mostrarFicheroOrig
        		menu1
     			;;
     		2)
      			echo "opcion 2"
       			procesarInfoFichero
       			subMenuProcInfo
       			subMenuUntil
       			
     			;;
    		3)
        		echo "Se mostrara el fichero"
        		#awk '{print FNR "\t:" $0}' usuarios.csv
        		verFichero
        		menu1
        		;;
    		*)
       			echo "Ha introducido un numero incorrecto."
       			
     			;;
  		esac
  		read var 
  	done
  	
}

#Controla al MenuUntil. Submenu del apartado 2 del Menu principal.
subMenuUntil(){
	read var
	
	until [ $var -eq 4 ]
	do 
 		case $var in
     		1)
       			echo "opcion 1"
        		selecPorColumnas
        		
     			;;
     		2)
      			echo "opcion 2"
				selecPorColumnasPatron
				;;
			3) 
				echo "opcion 3"
				#procesarInfoFichero
				#Muestra el fichero completo
				cat usuarios.csv

				;;
    		*)
       			echo "Ha introducido un numero incorrecto."
       			#menuUntil	
     			;;
  		esac
  		read var 
  	done
  	menuUntil
}

#-------------------------------------------FIN DE MENUS-----------------------------------------------


#------------------------------------2.PROCESAMIENTO DE INFORMACIÓN-------------------------------------
#-------------------------------A.DATOS GENERALES DEL FICHERO-------------------------------------------
#2.Procesamiento de información.Pide valores por teclado sobre el fichero.
procesarInfoFichero() {
	echo "Introduciremos datos generales sobre el fichero:"
	echo "Introduzca nombre del fichero: "
	existeFichero
	echo "Cabecera de columnas (Ss/Nn)"
	read var
	echo "Cabecera de filas (Ss/Nn)"
	read var2 
	echo "Si cabecera de filas/columnas o ambas: ¿Mostrar cabeceras (Ss/Nn)? "
	read var3
	until [ $var3 -eq 5 ]
	do 
 		case $var3 in
     		S)
       			cat usuarios.csv
     			;;
     		s)
      			cat usuarios.csv
     			;;
    		N)
        		
        		;;
    		n)
       			echo "Ha introducido un numero incorrecto."
       			
     			;;
     		*) 	echo "No ha introducido ninguna de las opciones anteripres"
				;;
  		esac
  		break;
  	done 

	echo "Tamaño en Filas / Columnas"
	read var4
}
#-------------------------------A.DATOS GENERALES DEL FICHERO-------------------------------------------

#-------------------------------B.TRANSFORMACIÓN DE DATOS-----------------------------------------------

#1. Seleccionar por columnas
function selecPorColumnas(){
	
	#Valores de info fcihero
	#var1
	#var2
	#var3
	#var4

	echo "Introduzca las columnas (ej: 1,4,5)"
	read cadena
	
	#Mostrar el fichero en base a la cabecera de columnas,cabecera de filas,ambas,tamaño fila,columna.
	echo "Se mostrará cabecera de fila? "
	echo "Introduzca nombre del fichero: "
	echo "Cabecera de columnas (Ss/Nn)"
	#$var1
	echo "Cabecera de filas (Ss/Nn)"
	#$var2
	echo "Si cabecera de filas/columnas o ambas: ¿Mostrar cabeceras (Ss/Nn)? "
	#$var3
	echo "Tamaño en Filas / Columnas"
 	#$var4
	cut -d "," -f $cadena usuarios.csv >>usuariosColumnasSeleccionadas.csv

	echo "Fichero creado en"
	pwd 
	 
}
#2. Seleccionar por columnas/patron

function selecPorColumnasPatron(){
	echo "Qué tipo de patrón quiere utilizar? cadena o valor númerico (C/N)?"
	controlPatrones
	#Si es numerico 
	until [ $patron -eq 5 ]
	do 
 		case $var in
     		"=")
       			echo "opcion 1"
        		mostrarFicheroOrig
        		menu1
     			;;
     		"!=")
      			echo "opcion 2"
       			procesarInfoFichero
       			subMenuProcInfo
       			subMenuUntil
       			
     			;;
    		">")
        		echo "Se mostrara el fichero"
        		#awk '{print FNR "\t:" $0}' usuarios.csv
        		verFichero
        		menu1
        		;;
    		"<")
       			echo "Ha introducido un numero incorrecto."
       			
     			;;
     		*) 	echo "No ha introducido ninguna de las opciones anteripres"
				;;
  		esac
  		read patron 
  	done 

  	
  	#Si es cadena
	until [ $var -eq 3 ]
	do 
 		case $var in
     		Igual)
       			echo "opcion 1"
        		mostrarFicheroOrig
        		menu1
     			;;
     		Distinto)
      			echo "opcion 2"
       			procesarInfoFichero
       			subMenuProcInfo
       			subMenuUntil
       			
     			;;
     		*) 	echo "No ha introducido ninguna de las opciones anteripres"
				;;
  		esac
  		read var 
  	done 


}
#--------------------------------------------------------------------------------------------

#-------------------------------------3.ORDENAR-----------------------------------------------


#Verifica si un fichero existe 
existeFichero(){
	read STRING
	#if test -f STRING && cat STRING
 	if test -f $STRING
        then
        cat $STRING
        #echo e "n\linea 1"
        echo -e "\nExiste fichero"
        #cat STRING
        else
        echo "El fichero no ha sido encontrado en el sistema. "
	fi
	
}

#3.Visualiza los ficheros csv
verFichero(){
	echo "Fichero de datos a tratar"
	read STRING 
	echo "Cabecera de columnas(Ss/Nn)"
	read var
	
	echo "Cabecera de filas(Ss/Nn)"
	read var

#if test -f STRING && cat STRING 
 if test -f $STRING 
        then
        cat $STRING 
        #echo e "n\linea 1"
        echo -e "\nExiste fichero"
        #cat STRING
	else
        echo "El fichero no ha sido encontrado en el sistema. "
fi

}

#Ordenar
ordernar(){
	
	echo "Nombre de fichero a ordenar seguido de la extensión .csv, .txt"
	read STRING
	
	existeFichero
		
	#Control ordenamiento por columnas y tipo de dato.
	echo "Escriba columna por las que quiere ordenar y tipo de dato(numerico,cadena)"
	echo "Cuando ya no quiera elegir vamos columnas escriba 0/0"
	read var 
	

	#Control forma de ordenamiento
	echo "Como desea que esté ordenado: ascendente(a)/descedente(d)"
	read var 

	#Control nombre del fichero donde guardar el resultado.	
	echo "Escriba el nombre del fichero donde quiere guardar el resultado"
	read STRING 
			

}

#-------------------------------------ADICIONALES----------------------------------------------
#Crea matriz 
function creaMatriz(){
	array=(acbf 3 5)
	IFS=$'\n' sorted=($(sort < <<"${array[*]}")) 
}

function mostrarFicheroOrig(){
	echo "--------------------Fichero Original-----------------------------------"
	cat usuarios.csv 
	echo "-----------------------------------------------------------------------"

	
}

#Ordena por primer campo.
function ordenarSinCriterio(){
	echo "---------------------------Orden Sin Criterio------------------------------"
 	sort usuarios.csv 
 	sort usuarios.csv >> usuariosOrdSinCrit.csv
	echo "---------------------------------------------------------------------------"
}
#Ordena por segundo campo alfabéticamente.
function ordenarSegCampoAlfa(){
	echo "------------------Orden Segundo Campo Alfabéticamente----------------------"
	sort  -k 2 usuarios.csv
	sort  -k 2 usuarios.csv >> usuariosSegCampAlf.csv
	echo "-----------------------------------------------------------------------"

}
#Ordena por valor númerico ascendentemente.
function ordenarValNumAlfa(){
	echo "-----------------Orden Por Valor Númerico Acsendentemente--------------"
	sort -n usuarios.csv
	sort -n usuarios.csv >> usuariosPorValNumAlf.csv
	echo "-----------------------------------------------------------------------"
}
#Ordena por varlo numérico campo descendetemente.
function ordenarValNumDesc(){
	echo "-------------Orden Por Valor Númerico Descendetemente------------------"
	sort -nr usuarios.csv
	sort -nr usuarios.csv >> usuariosPorValNumDesc.csv
	echo "-----------------------------------------------------------------------"
}





#---------------------------------------------MAIN----------------------------------------
#creaMatriz
#menu
#menuSwitch
#menu1
var1=""
var2=""
var3=""
var4=""
menuUntil
#mostrarFicheroOrig
#ordenarSinCriterio
#ordenarSegCampoAlfa
#ordenarValNumAlfa
#ordenarValNumDesc



#------------------------------------------FIN MAIN---------------------------------------



