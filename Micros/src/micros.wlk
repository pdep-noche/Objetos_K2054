class Micro {
	
	var property cantSentados
	var property cantParados
	const property pasajeros = #{}
	var property volumen
	
	
	method subirA(unEmpleado) {
		self.cumpleCondiciones(unEmpleado)
		pasajeros.add(unEmpleado)
	}
	
	method cumpleCondiciones(unEmpleado) {
		if (not self.hayLugar() || not unEmpleado.aceptaIr(self)) {
			throw new DomainException(message ="pasajero no se puede subir")
		}
	}
	
	method bajarA(empleado) {
		
		if (not self.esta(empleado)) {
			throw new DomainException(message = "No se puede bajar empleado")
		}
		self.eliminarEmpleado(empleado)
	}
	
	
	method esta(empleado) = pasajeros.contains(empleado)
	
	method eliminarEmpleado(empleado) = pasajeros.remove(empleado)
	
	method hayLugar() = self.cantLugaresLibres() > 0
		
	method cantLugaresLibres() = self.capacidad() - self.cantPasajeros()
	
	method capacidad() = cantParados + cantSentados
	
	method cantPasajeros() =  pasajeros.size()
	
	method puedeViajarSentado() = cantSentados > self.cantPasajeros()
	
}


class Apurado {
	
	method aceptaIr(_) = true
}

class Claustrofobico {
	
	method aceptaIr(micro) = micro.volumen() > 120
}

class Fiaca {
	method aceptaIr(micro) = micro.puedeViajarSentado()
}

class Moderado {
	
	var property cantLugaresLibres
	method aceptaIr(micro) = cantLugaresLibres <= micro.cantLugaresLibres()
}
