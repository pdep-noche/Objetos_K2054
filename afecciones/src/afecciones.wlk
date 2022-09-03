
object sara {
	 var peso = 55
	 var vitalidad = 90
	 var temperatura = 37
	 
	 method esAfectadaPor(afeccion) {
	 	afeccion.afectaA(self)
	 }
	 
	 method modificarTemperatura(cantidad) {
	 	temperatura += cantidad
	 }
	 method peso() {
	 	return peso
	 }
	 
	 method modificarVitalidad(cantidad) {
	 	vitalidad += cantidad
	 }
	 
	 method modificarPeso(cantidad) {
	 	peso += cantidad
	 }
	 
	 method temperatura() {
	 	return temperatura
	 }
	 
	 method temperatura(cantidad) {
	 	temperatura = cantidad
	 }
	 
	 method vitalidad() {
	 	return vitalidad
	 }
}


object malaria {
	
	method afectaA(persona) {
		persona.modificarTemperatura(3)
	}
}

object varicela {
	method afectaA(persona) {
		persona.modificarVitalidad(-5)
		persona.modificarPeso(-0.1 * persona.peso())
	}
}

object gripe {
	
	method afectaA(persona) {
		persona.modificarVitalidad(-0.2*persona.vitalidad())
	}
}

object paracetamol {
	method afectaA(persona) {
		persona.temperatura(37.min(persona.temperatura()))
	}
}

object polen {
	var cantidad = 10
	method afectaA(persona) {
		persona.modificarVitalidad(0.1* cantidad)        
	}
}

object nuez {
	method afectaA(persona) {
		persona.modificarVitalidad(0.3*persona.vitalidad())
	}
}


