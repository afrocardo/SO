
#Funciones

#Funcion menu del sistema
function menu1(){

echo "APLICACION APDCUM.Procesador de ficheros csv."

echo "1.Configuración"
echo "2.Procesamiento de información"
echo "3.Visualizador"
echo "4.Salir"

echo "Introduzca una opcion:"

}

#Visualiza los ficheros csv
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
	
	#Control nombre
 	if test -f $STRING && cat STRING
        then
        echo -e "\nExiste fichero"
        #cat STRING
        else
        echo "El fichero no ha sido encontrado en el sistema. "
	fi
		
	#Control ordenamiento por columnas y tipo de dato.
	echo "Escriba columna por las que quiere ordenar y tipo de dato(numerico,cadena)"
	echo "Cuando ya no quiera elegir vamos columnas escriba 0/0"
	


	#Control forma de ordenamiento
	echo "Como desea que esté ordenado: ascendente(a)/descedente(d)"
	read var 

	#Control nombre del fichero donde guardar el resultado.	
	echo "Escriba el nombre del fichero donde quiere guardar el resultado"
	read STRING 
			

}

#Menu Switch
function menuSwitch(){
read var
 case $var in
     1)
	echo "--------------------Fichero De Configuración-----------------------------------"	
        echo "opcion 1"
	cat fconfiguracion.csv
	echo "-------------------------------------------------------------------------------"
     ;;
     2)
        echo "opcion 2"
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





#---------------------------------MAIN----------------------------------------
#creaMatriz
menu1
menuSwitch
#mostrarFicheroOrig
#ordenarSinCriterio
#ordenarSegCampoAlfa
#ordenarValNumAlfa
#ordenarValNumDesc



#-------------------------------FIN MAIN---------------------------------------



