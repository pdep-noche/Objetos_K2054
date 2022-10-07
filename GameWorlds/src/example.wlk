/** First Wollok example */
class Jugador {
	
	var property antiguedad
	var property cantCompetenciasJugadas
	var property cansancio = 0
	
	method esTitular() = antiguedad > 2
	
	method tieneExperiencia() = cantCompetenciasJugadas > 2
	
	method puedeJugar() = self.esTitular() && self.tieneExperiencia()
	
	method tomarBebidaEnergizante(cantidad) {
		cansancio =  (cansancio - cantidad* 10).max(0)
	}
	
	method jugar() {
		cansancio += 20
	}
	
	method habilidad() = (antiguedad * 2)  + (cantCompetenciasJugadas* 3) - cansancio
		
	
}

object faker {
	var property estaTilteado = false
	var  habilidad = 0 
	
	method tomarTecito() {
		estaTilteado = false
	}
	
	method jugar() {
		habilidad += 50
	}
	
	method habilidad() = if (estaTilteado) 0 else habilidad
	
	method puedeJugar() = estaTilteado.negate()
	
}

class Partida {	
	
	const property participantes = []
	method agregarParticipante(unParticipante) {
		participantes.add(unParticipante)
	}
	
	method comenzar() = participantes.forEach({unParticipante => unParticipante.jugar()})
	
	method ganador() = participantes.max({participante => participante.habilidad()})
	
}

class Equipo {
	
	const property participantes = []
	
	method contratarJugador(unJugador) {
		participantes.add(unJugador)
	}
	
	method jugadoresDisponibles() = participantes.filter({unParticipante => unParticipante.puedeJugar()})
	
	method habilidad() = participantes.sum({unParticipante => unParticipante.habilidad()})
	
	method jugar() {
		self.jugadoresDisponibles().forEach({unJugador => unJugador.jugar()})
	}
	
	
}