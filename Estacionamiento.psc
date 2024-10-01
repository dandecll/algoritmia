Algoritmo  Estacionamiento
    Definir horaEntrada, minutoEntrada, horaSalida, minutoSalida Como Entero
    Definir totalHoras, totalMinutos, tiempoTotalMinutos, cobroTotal Como Real
	
    Escribir "Ingrese la hora de entrada (en formato 24 horas):"
    Leer horaEntrada
    Escribir "Ingrese los minutos de entrada:"
    Leer minutoEntrada
	

    Escribir "Ingrese la hora de salida (en formato 24 horas):"
    Leer horaSalida
    Escribir "Ingrese los minutos de salida:"
    Leer minutoSalida
	
    totalHoras = (horaSalida - horaEntrada) * 60
    totalMinutos = minutoSalida - minutoEntrada
    tiempoTotalMinutos = totalHoras + totalMinutos
    Si tiempoTotalMinutos < 0 Entonces
        tiempoTotalMinutos = (24 * 60) + tiempoTotalMinutos
    FinSi
    Si tiempoTotalMinutos < 15 Entonces
        cobroTotal = 0
    Sino
        horasCompletas = Trunc(tiempoTotalMinutos / 60)
        minutosAdicionales = tiempoTotalMinutos % 60
		Finsi
        cobroTotal = horasCompletas * 15
		
        Si minutosAdicionales > 0 Entonces
            Si minutosAdicionales <= 15 Entonces
                cobroTotal = cobroTotal + 6
            SiNo 
				Si minutosAdicionales <= 30 Entonces
					cobroTotal = cobroTotal + 12
				SiNo Si minutosAdicionales <= 45 Entonces
						cobroTotal = cobroTotal + 18
					SiNo
						cobroTotal = cobroTotal + 24
					FinSi
				FinSi
			FinSi
		FinSi
		
			Escribir "El tiempo total estacionado fue de ", tiempoTotalMinutos, " minutos."
			Escribir "El cobro total es de: $", cobroTotal
			
FinAlgoritmo

