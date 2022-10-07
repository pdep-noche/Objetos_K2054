class Cuenta {
	
	var property saldo
	
	method transferir(monto, otraCuenta) {
		self.debitar(monto)
		otraCuenta.depositar(monto)
	}
	
	
	method debitar(monto) {
		if (saldo < monto) {
			throw new DomainException(message = "No hay saldo suficiente")
		}
		
		saldo -= monto
	}
	
	method depositar(monto) {
		saldo += monto
	}
	
}
