object olivia {
	var gradoDeConcentracion = 6
	method gradoDeConcentracion(){ //consulta
		return gradoDeConcentracion
	}
	method recibirMasajes(){ //indicacion
		gradoDeConcentracion += 3 //+= es lo mismo q "gradoDeConcentracion = gradoDeConcentracion + 3"
	}
	method discutir(){
		gradoDeConcentracion -= 1
	}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz()= esFeliz
	method tieneSed()= tieneSed
	method peso() = peso
	
	method recibirMasajes(){
		esFeliz = true
	}
	method darseBanioDeVapor(){
		peso -= 500
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	method correr(){
		peso -= 300
	}
    method verElNoticiero(){
    	esFeliz = false
    }
    method estaPerfecto(){
    	return esFeliz and not tieneSed and peso.between(50000,70000)
    }

}
