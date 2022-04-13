import cosas.*
import armas.*

object luisa{
	
	var jugadorActivo
	
	method jugadorActivo(unJugador){
		jugadorActivo = unJugador
	}
	
	method jugadorActivo()= jugadorActivo
	
}


object floki {
	var arma = ballesta
	
	method encontrar(elemento){
		if (arma.estaCargada()){
			elemento.recibirAtaque(arma.nivelDePotencia())
			arma.usar()
		}
		
	}
	
	method cambiarArma(unArma){
		arma = unArma
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoVisto 
	method encontrar(elemento){
		ultimoElementoVisto = elemento
		valorRecolectado += elemento.valorQueOtorga()
		elemento.recibirTrabajo()
	
	}
	
	method estaFeliz() = valorRecolectado >= 50 || ultimoElementoVisto.altura() >= 10
	
	method valorRecolectado() = valorRecolectado
}


