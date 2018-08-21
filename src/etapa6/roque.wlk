/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
 import pepita.*
 import comidas.* 
 import masAves.*

object roque {
	
	var property pupilo
	
	method tuPupiloEs(ave) {
		
		pupilo = ave	
	}
	
	method pupiloActual() {
		return pupilo
	}
	 	
	method entrenar() { 
		
		pupilo.volar(10)
		pupilo.comer(alpiste, 20)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
		
	}  
}