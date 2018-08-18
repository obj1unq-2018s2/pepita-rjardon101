
object alpiste {
	method energiaPorGramo() { 
		return 4
	}
}

object mondongo {
	method energiaPorGramo() { 
		return 100
	}
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { 
		return 2
	}
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() {
		return 20
	}
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() {
		return 9
	}
}

object mijo {
	
	var property estaMojado 
   
   method mojarse() {
   	 estaMojado = true
   }
   
   method secarse() {
   	estaMojado = false
   }
   
   method energiaPorGramo() {
   	if(self.estaMojado()) {
   		return 20
   	}
   	else {
   		return 15
   	}
   }
   
}

object canelones {
	
	var property tieneSalsa
	var property tieneQueso

	method ponerSalsa() {
		tieneSalsa = true
	}
	
	method sacarSalsa() {
		tieneSalsa = false
	}
	
	method ponerQueso() {
		tieneQueso = true
	}
	
	method sacarQueso() {
		tieneQueso = false
	}
	
	method energiaPorGramo() {
	return  20 +	(
	   if(self.tieneSalsa())	{
	   	 5
	   }
	   else (
	   	  if(self.tieneQueso()) {
	   	  	7
	   	  }
	   	  
	   	  else(
	   	  	if(self.tieneSalsa() and self.tieneQueso()) {
	   	  		12
	   	  	}
	   	  	
	   	  	else 0 	
	   	  )
	   )	
	)
			
	}
}











