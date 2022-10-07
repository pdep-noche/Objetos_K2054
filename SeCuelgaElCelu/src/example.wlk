class Mensajeria {
	var property memoriaBase
	var property memoriaPorConversacion
	var property consumoBateriaConversacion = 1
	var property cantidadConversaciones
	
	
	method memoriaOcupada() = memoriaBase + (cantidadConversaciones* memoriaPorConversacion)
	
	method gastoBateria() = cantidadConversaciones * consumoBateriaConversacion
	
	
}

class Reproductor {
	var property memoriaPorElemento
	var property cantidadElementos
	var property limiteMaxMemoria
	var property consumoBateria = 2
	
	method memoriaOcupada() = (cantidadElementos * memoriaPorElemento).min(limiteMaxMemoria)
	
	method gastoBateria() = consumoBateria
	
}

object calculadora {
	var property memoriaOcupada = 10
	
	method gastoBateria() = 0
}

object celular {
	
	var property memoriaRam = 1000
	
	const property aplicaciones = []
	
	var property bateria = 100
	
	method memoriaLibre() = memoriaRam - self.memoriaOcupada()
	
	method memoriaOcupada() = aplicaciones.sum({unaAplicacion => unaAplicacion.memoriaOcupada()})
	
	method agregarAplicacion(unAplicacion) {
		aplicaciones.add(unAplicacion)
	}


	method usarCelularPorUnMinuto() = bateria -self.totalBateriaConsumida()
	
	method totalBateriaConsumida() = aplicaciones.sum({unaAplicacion => unaAplicacion.gastoBateria()})
	
}




