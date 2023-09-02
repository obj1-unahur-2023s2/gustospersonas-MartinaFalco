//PERSONAS
//import colores.verde //Para un objeto en especifico
import colores.* //Para importar todos los objetos de ese archivo
import materiales.*
import objetos.*

object rosa {
	
	method leGusta(algo){return algo.peso() <= 2000 }
}

object estefania{
	
	method leGusta(algo){return algo.color().esFuerte()}
}

object luisa{
	method leGusta(algo){return algo.material().esBrillante()}
}

object juan{
	method leGusta(algo){return not algo.color().esFuerte() or algo.peso().between(1200, 1800)}

}

