//OBJETOS
/*una remera roja de lino, pesa 800 gramos.
una pelota parda de cuero, pesa 1300 gramos.
una biblioteca verde de madera, pesa 8000 gramos.
un muñeco celeste de vidrio, de peso variable.
una placa de cobre, de peso y color variables.*/
import colores.*
import materiales.*

object remera{
	method material() = lino
	method color()= rojo
	method peso() = 800
}

object pelota{
	method material() = cuero
	method color()= pardo
	method peso() = 1300
}

object biblioteca{
	method material() = madera
	method color()= verde
	method peso() = 8000
}

object munieco{
	var peso//1)Creamos la variable peso
	method material() = vidrio
	method color()= celeste
	method peso() = peso //2)Getter (Hacemos la consulta)
	method peso(unPeso) { peso = unPeso} //3)Setter (Seteamos un valor parametrizado)
}

object placa{
	var color
	method material() = cobre
	method color() = color
	method color(unColor) {color = unColor}
}