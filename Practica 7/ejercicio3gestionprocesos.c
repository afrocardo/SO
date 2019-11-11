

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>

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
	    else{//Proceso hijo 3
	    		p=fork();
				
	    if(p==0){
	    	printf("Soy: %d\n y mi padre es: %d\n",getpid(),geppid());
	    	for (int i = 0; i <dato; ++i)
	    	{
	    		system("ps -ef");
	    		sleep(2);	
	    	}
	    	exit(0);
	    }
	    }
	   
	}

	exit(0);

}