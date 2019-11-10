#Antes del proceso hijo de cerrar,Inicializar al avariable a a 20, y mostrar su valor.
#Se crea el proceso hijo,modifica el valor de esa variable y lo pone a 7.
#Visualiza el contenido de la variable y finaliza.
#El proceso padre visualiza el contenido de la variable su identificador de procesos y finaliza.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc,char * argv[]){
	int v=20;
	int p;
	printf("Antes del proceso hijo el valor de la variable es:  %d\n ",v);
	p=fork();
	//Proceso hijo
	if(p==0){
	v=7;
	printf("El valor de la variable del proceso hijo:%d\n ",v);
	exit(0);
	}
	//Proceso padre
	else{
	//sleep(1);
	v=10;
	printf("El valor de la variable en el proceso padre es: %d\n",v,getpid());
	exit(0);
	}

	exit(0);

}


