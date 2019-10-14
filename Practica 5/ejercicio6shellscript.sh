#Ejercicio 6 shell script

echo "Menu"
echo "1.Generar 20 numeros aleatorios entre 0 y 555 con repetición"
echo "2.Generar 20 numeros aleatorios entre 0 y 555 sin repetición"

echo "Introduzca una opcion:"

function  aleatoriosRepeticion(){
        #Utilio el comando shuf  
	declare -a vector
	v=(`shuf -i 0-255 -n 20`)
	for int i=0 i<0 i++

}

#Calcula opcion2 
function aleatoriosSinRepeticion(){
       	declare  -b vector
	 v=(`shuf -i 0-255 -n 20`) 
        printf "%d " $ {v[*]} / printf "%d " $ {v[@]} / echo $v


        #echo $(($RANDOM%255))
}

read var
#Controla si la opcion es 1 
if  test  $var -eq 1
	then 
	aleatoriosRepeticion
	#while
	
fi
#Controla si la opcion es 2
if test  $var -eq 2 
        then 
	aleatoriosSinRepeticion
           
fi

#Calcula opcion 1



