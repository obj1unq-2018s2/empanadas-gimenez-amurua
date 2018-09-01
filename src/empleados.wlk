

object gimenez {
	
	var sueldo = 15000
	var sueldoAcumulado = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		sueldoAcumulado += self.sueldo()
	}
	method totalCobrado(){
		return sueldoAcumulado 
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	
	var deuda = 0
	var dinero = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		if(self.sueldo() > deuda){
			dinero += self.sueldo() - deuda
			deuda = 0
		}else{
			deuda -= self.sueldo()
		}
	}
	
	method gastar(monto){
		if(monto > dinero){
			deuda += monto - dinero
			dinero = 0
		}else{
			dinero -= monto
		}
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
