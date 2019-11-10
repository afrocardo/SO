#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char*argv[]){
	int p;
	p=fork();
	printf("Hola");
	printf("Hola proceso %d\n",getpid());
	if(p==0){
		printf("Nuevo = %d",getpid());
		printf("p=%d\n",p);
		exit(0);	

	}
	else{
		printf("Viejo=%d",getpid());
		exit(0);
	}
	exit(0);
}

