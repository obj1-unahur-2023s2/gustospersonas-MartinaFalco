import colores.*
import materiales.*
import objetos.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera //Definir la variable
	
	method objetoEnVidriera() = objetoEnVidriera //Getter - Consulta
	method objetoEnVidriera(unObjeto){objetoEnVidriera = unObjeto} //Setter
	
	method objetoEnMostrador() = objetoEnMostrador
	method objetoEnMostrador(unObjeto){objetoEnMostrador = unObjeto}
	
	//Indica si los dos objetos del mostrador y el de vidriera son de un material que brilla.
	method esBrillante() = objetoEnMostrador.material().esBrillante() and objetoEnVidriera.material().esBrillante() 
	// objetoEnMostrador.material().esBrillante() : Le pregunto al objeto de que material es y luego si ese material es brillante o no.
	
	//indica si los dos objetos que tiene son del mismo color
	method esMonocromatico() = objetoEnMostrador.color() == objetoEnVidriera.color()
	
	//indica si el objeto en el mostrador pesa más que el de la vidriera.
	method estaDesequilibrado() = objetoEnMostrador.peso() > objetoEnVidriera.peso()
	
	//indica si alguno de los dos objetos que tiene el boliche es del color indicado.
	method tieneAlgoDeColor(unColor) = objetoEnMostrador.color() == unColor or objetoEnVidriera.color() == unColor
	
	//indica si el bolichito puede mejorar en uno de los siguientes aspectos:
	// o bien está desequilibrado (falta de equilibrio), o bien es monocromático (falta de alegría).
	method puedeMejorar() = self.estaDesequilibrado() or self.esMonocromatico()
	
	//indica si alguno de los dos objetos que tiene en venta el boliche le gustan a la persona.
	method puedeOfrecerleAlgoA(persona) = persona.leGusta(objetoEnMostrador) or persona.leGusta(objetoEnVidriera)

}