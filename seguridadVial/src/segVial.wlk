class Conductor {
	
	var property vehiculo
	var property tieneRegistro
	
	method esSeguro() = vehiculo.esSeguro() && tieneRegistro
	
	
	
}

class Auto {
	
	var property tieneRuedaAux
	var property plusVelocidad
	
	method esSeguro() = tieneRuedaAux && self.velocidad() < 140
	
	method velocidad()  =  100 + plusVelocidad	
		
}

class Moto {
	var property velocidad
	var property canEspejosRetro
	
	method esSeguro() = velocidad < 160 && canEspejosRetro >= 2
}