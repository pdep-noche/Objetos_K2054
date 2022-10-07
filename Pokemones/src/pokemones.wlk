object ash {
	
	const property pokebola = [charizard, pikachu, psyduck , blastoise ]
	
	method esGroso() = pokebola.all({unPokemon => unPokemon.nivel() > 100})
	
	method pokemonPreferido() = pokebola.max({unPokemon => unPokemon.potenciaAtaqueMaximo()})
	
	method pokemonesPulenta() =  pokebola.filter({unPokemon => unPokemon.esPulenta()})
	
}

object charizard {
	
	var property tipo = "fuego"
	var property ataque = lanzallamas
	
	method nivel()= ataque.potencia()
	
	method potenciaAtaqueMaximo() = self.nivel()
	method esPulenta() = false
}

object pikachu {
	var property tipo = "electrico"
	const property ataques = [agilidad, trueno, colaDeHierro]
	
	method nivel() = ataques.sum({ataque => ataque.potencia()})
	
	method potenciaAtaqueMaximo() = ataques.max({unAtaque => unAtaque.potencia()}).potencia()
	method esPulenta() = ataques.size() > 2
}


object psyduck {
	var property tipo = "agua"
	
	method nivel() = 0
	method potenciaAtaqueMaximo() = self.nivel()
	method esPulenta() = false
}

object blastoise  {
	var property tipo = "agua"
	var property ataquePrincipal = hidrobomba
	var property ataqueSecundario = rayoDeHielo
	
	method nivel() = ataquePrincipal.potencia() + ataqueSecundario.potencia()
	method potenciaAtaqueMaximo() = ataquePrincipal.potencia().max(ataqueSecundario.potencia())
	method esPulenta() = false
}

object hidrobomba {
	var property potencia = 7
}

object rayoDeHielo {
	var property potencia = 6
}

object lanzallamas {
	var property potencia = 5
}

object agilidad {
	var property potencia = 10
}

object trueno {
	var property potencia = 7
}

object colaDeHierro {
	var property potencia = 9
}
