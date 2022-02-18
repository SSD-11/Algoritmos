Algoritmo Numeros_Primos
///Autor SSD-11
	Definir num, divisiones, cuentaPrimos Como Entero
	Definir tamañoArray Como Entero
	tamañoArray=25
	Dimension arrayNumerosPrimos[tamañoArray] ///los numeros primos del 1 al 100 son 25 en total
	cuentaPrimos=0 ///contador de numeros primos
	Escribir "Muestro numeros primos entre 1 y 100:"
	Para num=1 hasta 100 con paso 1 hacer ///bucle que recorre numeros del 1 al 100
		divisiones=0///variable que cuenta cuantas veces es divisible num actual
		Para i<-1 Hasta num Con Paso 1 Hacer ///bucle que recorre cada posibilidad de dividir el num por un contador i
			Si (num%i==0) Entonces
				divisiones=divisiones+1
			FinSi
		Fin Para
		
		Si (divisiones==2) Entonces ///las unicas dos veces que es divisible un numero primo son consigo mismo y con 1
			arrayNumerosPrimos[cuentaPrimos]=num ///almacena el numero primo encontrado en el arreglo
			cuentaPrimos=cuentaPrimos+1 ///suma 1 al contador de primos (que ademas sirve de indice para el arreglo)
		Finsi
	FinPara
	
	Para i<-0 Hasta tamañoArray-1 Con Paso 1 Hacer ///bucle que muestra en pantalla el contenido del arreglo de numeros primos
		Escribir "El numero primo ", arrayNumerosPrimos[i], " se encuentra en la pos. ", i
	Fin Para
	
	
	
FinAlgoritmo