Algoritmo  Inventario

    Definir NombreP Como Cadena
    Definir CodigoP, CantidadP, PrecioP, VentasT, TotalVentasP Como Real
    Definir opcion, CantidadV Como Entero
    VentasT = 0
    
    Mientras Verdadero Hacer
        Escribir " SISTEMA DE GESTIÓN DE INVENTARIOS"
        Escribir "1. Ingresar nuevo producto"
        Escribir "2. Registrar venta"
        Escribir "3. Inventario"
        Escribir "4. Reporte de Ventas"
        Escribir "5. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
	
        Segun opcion Hacer
            Caso 1:
                Escribir "Ingrese nombre de producto:"
                Leer NombreP
                Escribir "Ingrese codigo de producto:"
                Leer CodigoP
                Escribir "Ingrese la cantidad en existencia:"
                Leer CantidadP
                Escribir "Ingrese el precio del producto:"
                Leer PrecioP
                TotalVentasP = 0 
                Escribir "Producto ingresado correctamente."
				
            Caso 2:
                Si CantidadP > 0 Entonces
                    Escribir "Ingrese la cantidad vendida:"
                    Leer CantidadV
                    
                    Si CantidadPd >= CantidadV Entonces
                         CantidadP = CantidadP - CantidadV
                        TotalVentasP = CantidadV * PrecioP
                        VentasT = VentasT + TotalVentasP
                        Escribir "Venta registrada correctamente."
                    SiNo
                        Escribir "No esta en existencia."
                    FinSi
                SiNo
                    Escribir "No esta en existencia. Por favor ingrese más stock."
                FinSi
                
            Caso 3:
                Escribir " INVENTARIO ACTUAL"
                Escribir "Producto: ", NombreP
                Escribir "Código: ", CodigoP
                Escribir "Cantidad en stock: ", CantidadP
                Escribir "Precio unitario:$ ", PrecioP
				
            Caso 4:
                Escribir " REPORTE DE VENTAS"
                Escribir "Producto: ", NombreP
                Escribir "Código: ", CodigoP
                Escribir "Ventas del producto: $", TotalVentasP
                Escribir "Ventas totales del día: $", VentasT			
            Caso 5:
                Escribir "Saliendo del sistema..."

De Otro Modo:
	Escribir "Opción no válida. Intente nuevamente."
FinSegun
FinMientras

FinAlgoritmo


