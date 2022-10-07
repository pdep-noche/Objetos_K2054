object andy {
	
	const property libros = [misterioPrincipeMestizo, lasDosTorres, elPrincipito, juegosDelHambre, venasAbiertasAmeticaLatina, rayuela]
	
	method recordarUltimoLibro() = libros.last()
	
	method recordarPrimerLibro() = libros.first()
	
	
	method cantidadDeLibrosLeidos() = libros.size()
	
	method olvidarPrimerLibro() = libros.remove(self.recordarPrimerLibro())
	
	method olvidarLibro(unLibro) = libros.remove(unLibro)
	
	method peorLibroLeido() = libros.min({unLibro => unLibro.valoracion()})
	
	method mejorLibroLeido() = libros.max({unLibro => unLibro.valoracion()})
	
	method librosBuenos() = libros.filter({unLibro => unLibro.valoracion() > 12})
	
	method olvidarLibrosMalos() = libros.removeAllSuchThat({unLibro => unLibro.valoracion() < 7})
	
	method promedioValoracionLibros() = self.sumaValoracionLibrosLeidos()/ self.cantidadDeLibrosLeidos()
	
	method sumaValoracionLibrosLeidos() = libros.sum({unLibro => unLibro.valoracion()})
	
	method libroConValoracionMayorA(valoracion) = libros.find({unLibro => unLibro.valoracion() > valoracion})
		
}

object misterioPrincipeMestizo {
	var property lectores = 10500156
	
	method valoracion() = lectores/1000000
}

object lasDosTorres {
	const property cantPaginas = 450
	
	method valoracion() = cantPaginas / 45
	
}

object elPrincipito {
	var property valoracion = 50
}


object juegosDelHambre {
	
	var property votosPositivos = 1600200 
	var property votosNegativos = 300600
	
	method coeficiente() = votosPositivos - votosNegativos
	
	method valoracion() = 0.max(self.coeficiente()/100000)
	
}

object venasAbiertasAmeticaLatina {
	const property anioPublicacion = 1971
	
	method valoracion() = self.cantidadAniosPublicacion()/3
	
	method cantidadAniosPublicacion() {
		var hoy = new Date()
		return hoy.year() - anioPublicacion
	}
}


object rayuela {
	const titulo = "rayuela"
	
	method valoracion() = 2 * self.cantidadLetrasTitulo()

	method cantidadLetrasTitulo() = titulo.size()
}


