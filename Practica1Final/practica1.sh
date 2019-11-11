
#Funciones

#Funcion menu del sistema
function menu1(){

echo "APLICACION APDCUM.Procesador de ficheros csv."

echo "1.Configuración"
echo "2.Procesamiento de información"
echo "3.Visualizador"
echo "4.Salir"

echo "Introduzca una opcion:"
read var

#Controla si la opcion es 1
if  test  $var -eq 1
        then
        echo "opcion 1"
        #while

fi
#Controla si la opcion es 2
if test  $var -eq 2
        then
        echo "opcion 2"

fi

#Controla si la opcion es 3
if test  $var -eq 3
        then
        echo "Se mostrara el fichero"
	verFichero

        

fi

}

#Visualiza los ficheros csv
verFichero(){
echo "Escriba el nombre del fichero"
read STRING 
#if test -f STRING && cat STRING 
 if test -f $STRING 
        then
        cat $STRING 
        #echo e "n\linea 1"
        echo -e "\nExiste fichero"
        #cat STRING
	
       

fi

}

function menuSwitch(){
        read var
  case $var in
     1)
        echo "opcion 1"
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

#Main
#menu
menuSwitch



