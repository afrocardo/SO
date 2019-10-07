if [ $# -gt 1 ]
	then i=1
		until [ -z $1 ]
		do
			echo "Parámetro $i:" $1
			#Desplaza el array hacia la derecha y saca al primero
			shift 
			i=$((i+1))
		done
fi


