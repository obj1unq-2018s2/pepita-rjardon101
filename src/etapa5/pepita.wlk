import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
}

object patagonia {
	
	var turista 
	
	method energiaRevitalzadora() {
		turista.energia() + 30
	}
	
}

object sierrasCordobesas {
	
	var turista 
	
	method energiaRevitalzadora() {
		turista.energia() + 70
	}
	
}


object marDelPlata {
	
	var turista
	var temporadaBaja
	
	method temporadaBaja() {
		 temporadaBaja = true
	}
	
	method temporadaAlta() {
		temporadaBaja = false
	}
	
	method esTemporadaBaja() {
		return temporadaBaja
	}
	
	method energiaRevitalizadora() {
		turista.energia() + (
			if(self.esTemporadaBaja()) {
				80
			}
			else -20
		)
		
	}
	
}

object norOeste {
	
	var turista 
	
	method energiaRevitalizadora() {
		turista.energia() + turista.energia() *0.10
	}
	
}




































