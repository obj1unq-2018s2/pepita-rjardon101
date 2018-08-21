 import roque.*
 import pepita.*
 import masAves.*


object instituto { 
	
	var entrenadores = []
	
	method contratar(entrenador) {
		entrenadores.add(entrenador)
	}
	
	method prescindir(entrenador) {
		entrenadores.remove(entrenador)
	}
	
	method entrenamientoGeneral() {
		entrenadores.forEach({entrenador => entrenador.entrenar()})
	}
	
	method buenAmbiente() {
		return entrenadores.all({entrenador => entrenador.estaContento()})
	}
	
	
}  