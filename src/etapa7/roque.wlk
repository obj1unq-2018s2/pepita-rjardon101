/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
 import pepita.*
 import comidas.* 
 import masAves.*
 import cosasQueVuelan.*

object roque {
	
	var property pupilo
	var pupilos = []
	
	method tuPupiloEs(ave) {
		
		pupilo = ave	
	}
	 	
	method entrenar() { 
		
		//dudas sobre si esta bien o si hay que hacer un FOREACH
		//PREGUTAR
		pupilos.volar(10)
		pupilos.comer(alpiste, 20)
		pupilos.volar(5)
		pupilos.haceLoQueQuieras()
		
	}  
	
	method agregarPupilo(unAve) {
		pupilos.add(unAve)
	}
	
	method dejarPupilo(unAve) {
		pupilos.remove(unAve)
	}
	
	method pupilosCapacesDeVolar(unosKms) {
		
	 return  pupilos.filter({estudiante => estudiante.puedeVolar(unosKms)})	
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}