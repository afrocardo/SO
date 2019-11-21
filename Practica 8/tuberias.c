#include <stdio.h>
#include <stdlib.h>
//Para tuberias
#include <fcntl.h>
#include <unisted.h>
#include <sys/types.h>

//Prototipos
void killProcess();


int main(int argc, char *argv[]){
	int var; 
	var=7;
	int vector[2];
	signal(SIGUSR1,killProcess);
	pipe(vector);

	//Proceso hijo 
	int p;
	p=fork();
	//Pregunto quie lo está haciendo, si el hijo o el padre.
	//Hijo
	if(p=0){
		printf("Soy el hijo %d y mi padre tiene el id %d\n",getpid(),"p=%d\n",p);
		
	}
	//Padre.
	else{
		printf("Viejo=%d",getpid());
		exit(0);
	}
	exit(0);


}

//Mata procesos
void killProcess(){

}