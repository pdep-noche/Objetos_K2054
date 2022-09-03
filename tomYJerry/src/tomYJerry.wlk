
object tom {
	var energia = 40
	var posicion = 30
	
	method energia(cantidad) {
		energia = cantidad
	}
	
	method energia() {
		return energia
	}
	
	method puedeAtraparRaton(unRaton) {
		return self.velocidad() > unRaton.velocidad()
	}
	
	method velocidad() {
		return 5 + (energia/10)
	}
	
	method correrA(raton) {
		energia -= self.consumoParaAtrapar(raton)
		posicion = raton.posicion()
	}
	
	method consumoParaAtrapar(unRaton) {
		return 0.5 * self.velocidad() * self.distanciaA(unRaton)
	}
	
	method distanciaA(unRaton)
	{
		return (posicion - unRaton.posicion()).abs()
	}
	
	method posicion() {
		return posicion
	}
}


object jerry {
	var peso = 4
	var posicion = 34
	
	method velocidad() {
		return 10 - peso
	}
	
	method posicion() {
		return posicion
	}
}

object ratonRobot {
	var posicion = 36
	
	var velocidad = 8
	
	method velocidad() {
		return velocidad
	}
	
	method posicion() {
		return posicion
	}
	
	
	
}