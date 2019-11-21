

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <signal.h>

int q(){
	printf("Se a producido  la  señal SIGQUIT\n");
	//exit(2);
	//Ahora comentaremos la funcion ecit
	//Ahora 

}
int p(){
	printf("Se ha producido la señal SIGINT\n");
	exit(2);
}
int main(int argc ,char  *argv[]){
	signal(SIGQUIT,q);
	signal(SIGINT,p);
	//Ahora quitamos 
	while(1){
		printf("Hola");
		sleep(1);
	} 

}
	/*Bucle infinito.

}
/**

int main(int argc ,char  *argv[]){
	printf("Soy: %d y mi padre es: %d\n",getpid(),geppid());
	dato=5;
	p=fork();

	
	//Proceso hijo1
	if(p==0){
		printf("El valor de la variable del proceso hijo: %d\n ", v);
		for (int i = 0; i < 5; i++)
		{
			system("ls-l");
			sleep(1);
		}
		exit(0);
	}
	//Proceso padre
	else{
		p=fork();
		//Proceso hijo 2
	    if(p==0){
	    	printf("Soy: %d\n y mi padre es: %d\n",getpid(),geppid());
	    	for (int i = 0; i <; ++i)
	    	{
	    		system("ps -ef");
	    		sleep(2);	
	    	}
	    	exit(0);
	    }
	    else{//Proceso padre
	    		p=fork();
		//Codigo del hijo 3	
	    	if(p==0){
	    		printf("Soy: %d\n y mi padre es: %d\n",getpid(),geppid());
	    		for (int i = 0; i <dato; i++)
	    	{
	    		system("echo hola>>fhola");
	    		sleep(1);	
	    	}
	    		exit(0);
	    	}
	    	else{
	    		dato=3;
	    		printf("Soy: %d\n y mi padre es %d dato=%d\n", getpid(9,geppid(),dato);
	   		 }
	    

	exit(0);

}
}
}
*/