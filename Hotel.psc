Algoritmo Hotel
	
    Definir NombreC Como Cadena
    Definir FechaE, FechaS Como Cadena
    Definir NumeroR, HabitacionSelec, TotalH, Ocupadas, opcion, ReservaA Como Entero
    TotalH = 10 
    Ocupadas = 0
    ReservaA = 0 
	
    Mientras Verdadero Hacer
        Escribir " SISTEMA DE GESTIÓN DE RESERVAS DE HOTEL"
        Escribir "1. Registrar nueva reserva"
        Escribir "2. Cancelar reserva"
        Escribir "3. Consultar disponibilidad de habitaciones"
        Escribir "4. Gestionar ocupación del hotel"
        Escribir "5. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
        
        Segun opcion Hacer
            Caso 1:
                Si Ocupadas < TotalH Entonces
                    Escribir "Ingrese su nombre:"
                    Leer NombreC
                    Escribir "Ingrese la fecha de entrada (dd/mm/aaaa):"
                    Leer FechaE
                    Escribir "Ingrese la fecha de salida (dd/mm/aaaa):"
                    Leer FechaS
					
                    Escribir "Habitaciones disponibles:"
                    Escribir "Hay ", TotalH - Ocupadas, " habitaciones disponibles."
					
                    Escribir "Seleccione el número de habitación a reservar (1 a ", TotalH, "):"
                    Leer HabitacionSelec
					
                    Si HabitacionSelec >= 1 Y HabitacionSelec <= TotalH Entonces
                        Ocupadas = Ocupadas + 1
                        ReservaA = 1 
                        NumeroR = Ocupadas
                        Escribir "Reserva confirmada. Su número de reserva es: ", NumeroR
                    SiNo
                        Escribir "Número de habitación no válido."
                    FinSi
                SiNo
                    Escribir "No hay habitaciones disponibles."
                FinSi
				
            Caso 2:
                Si ReservaA = 1 Entonces
                    Escribir "Ingrese su número de reserva para cancelar:"
                    Leer NumeroR
                    
                    Si NumeroR = Ocupadas Entonces
                        Ocupadas = Ocupadas - 1
                        ReservaA = 0
                        Escribir "Reserva cancelada correctamente."
                    SiNo
                        Escribir "Número de reserva no válido."
                    FinSi
                SiNo
                    Escribir "No hay reservas activas para cancelar."
                FinSi
				
            Caso 3:
                Escribir " HABITACIONES DISPONIBLES"
                Si Ocupadas < TotalH Entonces
                    Escribir "Hay ", TotalH - Ocupadas, " habitaciones disponibles."
                SiNo
                    Escribir "El hotel está completamente ocupado."
                FinSi
				
            Caso 4:
                Definir PorcenO Como Real
                PorcenO = (Ocupadas / TotalH) * 100
                Escribir "Porcentaje de ocupación del hotel: ", PorcenO, "%"
				
            Caso 5:
                Escribir "Saliendo del sistema..."

De Otro Modo:
	Escribir "Opción no válida. Intente nuevamente."
FinSegun
FinMientras

FinAlgoritmo


