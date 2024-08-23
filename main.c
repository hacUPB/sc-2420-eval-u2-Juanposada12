#include <stdio.h>
#include <math.h>

float calcula_imc(float,float); 

int main(int argc, char const *argv[])
{
    float estatura, peso, IMC;
    char nombre [30];

    printf("ingrese su nombre: \n");
    fgets(nombre, 30, stdin);

    printf("ingrese su peso: \n");
    scanf("%f",&peso);

    printf("ingrese su estatura: \n");
    scanf("%f",&estatura);

    IMC = calcula_imc(peso,estatura);

    printf("%s su IMC = %f\n", nombre, IMC);

    return 0;



}
float calcula_imc(float peso,float estatura)
{
    float IMC;
    // IMC = peso / estatura2
    IMC= peso / pow (estatura,2);
    return IMC; 

}