#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

void* aprovizionare(void *);
void* cumparare(void *);
void* monitorizare(void *);

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
sem_t SemA, SemC, GataA, GataC;
int cantitateA = 0, cantitateB = 0, cantitateC = 0;

void* (*functie[])(void*) = {aprovizionare, cumparare, monitorizare};

int main(void){
pthread_t FIR[2];
int i;

sem_init(&SemA, 1, 0);
sem_init(&GataA, 1, 0);
sem_init(&SemC, 1, 0);
sem_init(&GataC, 1, 0);

for(i=0; i<3;i++)
pthread_create(FIR+i,NULL,(void*)(*(functie+i)),NULL);

for(i=0; i<3; i++)
pthread_join(*(FIR+i), NULL);
printf("Main: fireles-au terminat. \n");
pthread_exit(NULL);
}

void* aprovizionare(void *arg){
int s,rasp,prod;
while(1)
{sem_wait(&SemA);
printf("Doriti sa adaugati produse pe stoc (da=1/nu=0)?\n");
fflush(stdin);
scanf("%d", &rasp);
fflush(stdin);
pthread_mutex_lock(&mutex);
while(rasp==1){
printf("Ce produs doriti sa adaugati pe stoc? (1/2/3)\n");
fflush(stdin);
fflush(stdin);
scanf("%d", &prod);
printf("Ce cantitate din produsul %d doriti sa adaugati pe stoc?\n",prod);
fflush(stdin);
fflush(stdin);
scanf("%d", &s);
fflush(stdin);

switch (prod){
case 1: cantitateA+=s;break;
case 2: cantitateB+=s;break;
case 3: cantitateC+=s;break;
default : printf("Va rugam alegeti un produs din cele mentionate?\n");

}
printf("Doriti sa mai adaugati produse pe stoc (da=1/nu=0)?\n");
fflush(stdin);
scanf("%d", &rasp);
}


pthread_mutex_unlock(&mutex);
sem_post(&GataA);
sleep(6);
}
}

void* cumparare(void *arg){
int s, temp,tempA,tempB,tempC,rasp,prod;

while(1){
sem_wait(&SemC);
printf("Doriti sa cumparati un produs? (da=1/nu=0)\n");
fflush(stdin);
scanf("%d", &rasp);
pthread_mutex_lock(&mutex);
while(rasp==1){
printf("Ce produs doriti sa cumparati(1/2/3)\n");
fflush(stdin);
scanf("%d", &prod);
printf("Ce cantitate din produsul %d doriti sa cumparati?\n",prod);
fflush(stdin);
scanf("%d", &s);

switch (prod){
case 1: {tempA=cantitateA;
           tempA-=s;
           if (tempA < 0)
           printf("Nu puteti cumpara, stoc insuficient(%d).\n", cantitateA);
           else
           cantitateA = tempA;
           break;
           }
case 2: {tempB=cantitateB;
           tempB-=s;
           if (tempB < 0)
           printf("Nu puteti cumpara, stoc insuficient(%d).\n", cantitateB);
           else
           cantitateB = tempB;
           break;
           }
case 3: {tempC=cantitateC;
           tempC-=s;
           if (tempC < 0)
           printf("Nu puteti cumpara, stoc insuficient(%d).\n", cantitateC);
           else
           cantitateC = tempC;
           break;
           }
default : printf("Va rugam alegeti un produs din cele mentionate?\n");
}

printf("Doriti sa mai cumparati un produs? (da=1/nu=0)\n");
fflush(stdin);
scanf("%d", &rasp);
}


pthread_mutex_unlock(&mutex);
sem_post(&GataC);
sleep(6);
}
}

void* monitorizare(void* arg){
sem_post(&SemA);
while(1){
sem_wait(&GataA);
sem_post(&SemC);
sem_wait(&GataC);
sem_post(&SemA);
}
}

