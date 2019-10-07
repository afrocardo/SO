#Define un funcion
f1(){
echo "En f1"
echo "0=" $0
echo "1=" $1
echo "2=" $2
echo "*=" $*
echo "#=" $#
#Devuelve 2 
return 2
}
echo "Antes de llamar la funcion"
#Se llama a la función pasandoles tres parametros a,1 y 5.
f1 a 1 5
echo "Devuelto" $? 
echo "Despues de llamar a f1"
