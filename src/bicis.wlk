import accesorios.*

class Bicicletas {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura() { return rodado * 2.5 + 15 }
	
	method velocidadCrucero() {
		return
			if (largo > 120) { rodado + 6 }
			else { rodado + 2  }
	}
	
	method carga() {
		return accesorios.sum( { a => a.carga() } )
	}
	
	method peso() {
		return rodado / 2 + self.pesoTotal()
	}
	
	method pesoTotal() {
		return accesorios.sum( { a => a.peso() } )
	}
	
	method tieneLuz() {
		return accesorios.any( { a => a.esLuminoso() } )
	}
		
	method accesoriosLivianos() {
		return accesorios.count( { a => a.peso() < 1 } )
	}
	
	method esCompaneraDe(unaBici) {
		return 
			self.marca() == unaBici.marca() and 	
			(self.largo() - unaBici.largo()).abs() < 10
	}
}