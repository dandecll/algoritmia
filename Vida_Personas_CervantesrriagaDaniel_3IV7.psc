Algoritmo Vida_Personas_CervantesrriagaDaniel_3IV7
	//Definir variables
	Definir Npersonas , Aconsulta ,Tpersonas , Ejoven , Evieja , E , i , x, l , z Como Entero
	//Limpiar variables
	Npersonas <- 0 
	Tpersonas <- 0
	//Lista de personas 
	Escribir "Ingresa el número de personas de la lista"
	Leer Npersonas
	// Arreglos 
	Dimension Anacimiento[Npersonas] 
	Dimension Afallecimiento[Npersonas]
	//Estructura
	Para i <- 1 Hasta Npersonas Con Paso 1 Hacer
		Escribir "Ingresa el año de la persona n", i
		Leer Anacimiento[i]
		Escribir "Ingresa el año de fallecimiento de la persona n", i
		Leer Afallecimiento[i]
		Si Afallecimiento[i] - Anacimiento[i] < 0 Entonces
			Escribir "La persona no puede morir antes de nacer"
		Fin Si
	Fin Para
	//Consulta de años segun la lista
	Escribir "Ingresa el número de años para consultar"
	Leer Aconsulta
	Dimension Aingresado[Aconsulta]
	Si Aconsulta <= 0 Entonces
		Escribir "Ingrese un valor valido"
	SiNo
		Para X <- 1 Hasta Aconsulta Con Paso 1 Hacer
			Escribir "Año del que desea conocer los datos"
			Leer Aingresado[x]
		Fin Para
		Para l <- 1 Hasta Aconsulta Con Paso 1 Hacer
			Tpersonas <- 0
			Ejoven <- 9999
			Evieja <- 0
			Para z <- 1 Hasta Npersonas Con Paso 1 Hacer
				Si Anacimiento[z] <= Aingresado[l] Y Afallecimiento[z] >= Aingresado[l] Entonces
					Tpersonas = Tpersonas + 1
				Fin Si
				
				E = Aingresado[l] - Anacimiento[z]
//Persona más joven
				Si E < Ejoven Y E >= 0 Entonces
					Ejoven <- E
				Fin Si
//Persona más vieja
				Si E >= Evieja Y E >= Ejoven Y 0 >= Aingresado[l]-Afallecimiento[z] Entonces
					Evieja <- E
				Fin Si
			Fin Para
			Escribir "En el año", Aingresado[l]," habia", Tpersonas, " personas con vida"
			Si Tpersonas <= 0 Entonces
				Escribir "No habia personas vivas, por lo que no hay personas jovenes ni viejas"
			SiNo
				Escribir "La persona más joven tenia ", Ejoven, " años"
				Escribir "y"
				Escribir "La persona más vieja tenia ", Evieja, " años"
			Fin Si
		Fin Para
	Fin Si
FinAlgoritmo
