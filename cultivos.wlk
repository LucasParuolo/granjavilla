import wollok.game.*

class Maiz {
	var property position = game.origin()
	var esAdulta = false

	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return if (esAdulta){
		    "corn_adult.png"
		}else{
			"corn_baby.png"
		}
	}

	method regate() {
	  esAdulta = true
	}
}