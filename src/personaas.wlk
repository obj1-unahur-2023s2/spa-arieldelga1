object olivia {
	var gradoDeConcentracion = 6
	method gradoDeConcentracion(){ //consultaa
		return gradoDeConcentracion
	}
	method recibirMasajes(){ //indicacion
		gradoDeConcentracion += 3 //+= es lo mismo q "gradoDeConcentracion = gradoDeConcentracion + 3"
	}
	method discutir(){
		gradoDeConcentracion -= 1
	}
	method darseBanioDeVapor(){} //METODO VACIO = NO HACE NADA
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
    method mediodiaEnCasa(){
    	self.comerFideos()
    	self.tomarAgua()
    	self.verElNoticiero()
    }
}

object Ramiro{
	var nivelDeContractura = 0
	var pielGrasosa = false
	
	method nivelDeContractura() = nivelDeContractura
	method pielGrasosa() = pielGrasosa
	method recibirMasajes(){
		nivelDeContractura = 0.max(nivelDeContractura - 2)
	} 
	method darseBanioDeVapor(){
		pielGrasosa = false
	}
	method comerBigMac(){
		pielGrasosa = true
	}
	method bajarALaFosa(){
		pielGrasosa = true
		nivelDeContractura +=1
	}
	method jugarAlPaddle(){
		nivelDeContractura += 3 
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
	
}
