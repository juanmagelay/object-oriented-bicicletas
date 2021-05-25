import bicis.*
import accesorios.*

class Deposito {
	var property bicis = []
	var property parejas = []
	var property parDeBicis = []
	
	method bicisRapidas() {
		return bicis.filter( { b => b. velocidadCrucero() > 25 } )
	}	
	
	method marcas() {
		return bicis.map( { b => b.marca() } )
	}
	
	method esNocturno() {
		return bicis.all( { b => b.tieneLuz() } )
	}
	
	method puedeLlevarCarga(kg) {
		return bicis.any( { b => b.carga() > kg } )
	}
	
	method marcaMasRapida() {
		return bicis.max( { b => b.velocidadCrucero() } ).marca()
	}
	
	method cargaBicisLargas() {
		return bicis.filter( { b => b.largo() > 170 } ).sum( { b => b.carga() } ) 
	}
	
	method sinAccesorios() {
		return bicis.filter( { b => b.accesorios() == [] } )
	}
	
	method bicisCompanerasDe(unaBici) {
		return bicis.filter( { b => b.esCompaneraDe(unaBici) and b != unaBici  } )
	}

	method hayCompanera() {
		return bicis.any( { b => self.bicisCompanerasDe(b).size() > 0 } )
	}
		
	method parejasDeCompaneras() { //NO ME FUNCIONO
		parDeBicis.addAll( { bicis.forEach( b => self.agregarAPareja(b) ) } )
		return parejas
	}
	
	method agregarPareja(unaBici) { //NO ME FUNCIONO
		if ( self.bicisCompanerasDe(unaBici).size() > 0 ) {
			parDeBicis.add( { b => self.bicisCompanerasDe(b) } )
			parDeBicis.add( { b } )
		}		
	}
	
	method seHizoLaLuz() {
		//NO SE COMO ENCARARLO
	}*/
}


