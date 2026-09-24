import wollok.game.*
import cultivos.Maiz


object personaje {
	var property position = game.center()
	const property image = "fplayer.png"

	method plantaMaiz(cultivo) {
	  self.validarPosicionVacia()
	  game.addVisual(new Maiz(position = self.position()))
	}

	method regar() {
	  
	  self.cultivosEnMiPosicion().forEach({cultivo => cultivo.regate()})
	}

	method cultivosEnMiPosicion(){ return game.colliders(self) }

	method validarPosicionVacia(){
		if (not self.cultivosEnMiPosicion().isEmpty()){
			self.error("Ya hay un cultivo")
		}
	}
}