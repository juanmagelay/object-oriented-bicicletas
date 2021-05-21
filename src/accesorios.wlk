object farolito {
	method peso() { return 0.5 }
	method carga() { return 0 }
	method esLuminoso() { return true }
}

class Canasto {
	var property volumen
	
	method peso() { return volumen / 10}
	method carga() { return volumen * 2 }
	method esLuminoso() { return false }	
}

class Morral {
	var property largo
	var property tieneOjo
	
	method peso() { return 1.2}
	method carga() { return largo / 3 }
	method esLuminoso() { return if (tieneOjo) { true } else { false } }		
}

/*
 * Para agregar un nuevo tipo de accesorio, simplemente lo creo como objeto.
 * Es nuevo objeto debe tener los mismos mensajes que los otros accesorios,
 * es decir, tiene que ser polimorfico con los otros accesorios. 
 * Debe entender los mensajes peso, carga y esLuminoso, en otras palabras
 * respetar el mismo contrato.
*/

