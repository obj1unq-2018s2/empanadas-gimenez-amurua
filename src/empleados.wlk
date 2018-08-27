

object gimenez {
	
	var sueldo = 15000
	var sueldoAcumulado = 0
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		
	}
	method totalCobrado(){
		return sueldoTotal 
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	var deuda = 0
	var dinero = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){
		
	}
	method gastar(cuanto){
		deuda =+ cuanto
	}
	method totalDeuda(){
		return deuda	
	}
	method totalDinero(){
		return dinero	
	}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
