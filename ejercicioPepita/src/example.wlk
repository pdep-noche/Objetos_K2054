
object pepita {
	var energia
	
	method energia(cantidad) {
		energia = cantidad
	}
	
	method energia() {
		return energia
	}
	
	method volar(metros) {
		energia -= metros
	}
	
	method comer(gramos) {
		energia += gramos *2
	}
}
