import comidas.*

object pepon {
	var energia 
	
	method comer(cosa, cuanto) {energia += cosa.energiaPorGramo() / 2 * cuanto  }
	method volar(kms) { energia -=  kms * 0.5 + 1  }           
	method haceLoQueQuieras() { 
		self.volar(1)
	}   }

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kmsRecorridos
	var grIngeridos
	
	method kmsRecorridos() = kmsRecorridos
	
	method gramosIngeridos() = grIngeridos
	
		method haceLoQueQuieras() { }   
	// pregunta: ¿por qué es necesario agregar este método, sin código
	//para mantener el polimorfismo
}

object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos  }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { 
		return self.energia() < 50
	}  
	method estaFeliz() { 
		return energia.between(500,1000)
	}  
	
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() {
		self.volar(5)
		self.comer(alpiste, 80)
		self.volar(5)
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} 
		 
		else (if (self.estaFeliz()) {
			self.volar(8) 
			}
		 else {})
	}
}
