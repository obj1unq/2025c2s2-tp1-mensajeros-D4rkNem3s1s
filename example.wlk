//Mensajeros
object neo {
	var property credito = false
	const peso = 0
	
	method puedeLlamar() = self.credito()
	
	method pesoTotal() = peso
}

object jeanGray {
	const property puedeLlamar = true
	const peso = 65
	
	method pesoTotal() = peso
}

object saraConnor {
	const property puedeLlamar = false
	var property peso = 70
	var property vehiculo = moto
	
	method pesoTotal() = peso + vehiculo.pesoTotal()
} //Destinos

object brooklyn {
	method puedeLlegar(_mensajero) = _mensajero.pesoTotal() <= 1000
}

object matrix {
	method puedeLlegar(_mensajero) = _mensajero.puedeLlamar()
} //paquete

object paquete {
	var property estaPago = false
	
	method puedeLlegar(_mensajero, _destino) = estaPago && _destino.puedeLlegar(
		_mensajero
	)
} //vehiculos

object moto {
	const peso = 100
	
	method pesoTotal() = peso
}

object camion {
	const peso = 500
	var property cantidadAcoplados = 0
	
	method pesoTotal() = peso + (cantidadAcoplados * 500)
}