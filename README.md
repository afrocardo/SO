# SO

#Define vector  
#entero =(1 5 10 15 20)
echo ${enteros[0]}
echo ${enteros[5]}
enteros[5]=5
#Define Matriz
declare -A matriz
        nfileas=3; ncol=2
        for ((i=1;i<=nfilas;i++)) do
                for((j=1 j<=ncol;j++)) do
                        echo -n ${-A[$i,$j}]
                done
        done
#Recorrer filas
for ((i=1 ;i<=ncol;i++))
         do
        for ((j=0;j<nFilas;j++))
         do
        echo -n  -A matriz
        done
done
