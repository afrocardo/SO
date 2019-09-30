echo "?=" $?
echo "$=" $$
echo "*=" $*
echo "#=" $#
echo "0=" $0
echo "1=" $1
echo "2=" $2

echo $1
shift
echo $1
shift
echo $1

for i in `ls -l`
 do
	echo $i
done

a = $#

for i in `ls -l`
 do
        echo $1
	shift
done

#Controlaremos si el elemento que busco es un fichero o un directorio.
for i in `ls -l`
do
	if test -f $i
       	 then
        	echo "Es un fichero"
	 elif test -d $i
	   then
	     echo "Es un directorio"
	fi
done
