/*  **luisa**, una _jugadora_,
- **floki**, un _personaje_ guerrero,
- **mario**, un _personaje_ trabajador,
- **ballesta** y **jabalina**, dos _armas_. `floki` tiene una de estas armas.
- **castillo**, **aurora** (que es una vaca) y **tipa** (que es un árbol), tres _elementos_. */

object luisa {
    var personajeActivo = mario
    method aparece(elemento) = personajeActivo.encontrar(elemento)
}


object floki {
    var arma = javalina
    

    
    method encontrar(elemento) {
       arma.cargada()
       elemento.ataque(arma.potencia()) 
        arma.usar() 

    }
}


object mario {
    var valorRecolectado = 0
    var alturaElemento = 0
    
    method encontrar(elemento) {
        valorRecolectado = valorRecolectado  + elemento.valor()
        elemento.trabajo()  
        alturaElemento = elemento.altura()
        
    }
    method esfeliz() = valorRecolectado >= 50 || alturaElemento >= 10 
    method valorActual() = valorRecolectado 

}
// Armas
object ballesta {
  var flechas = 10
  method cargada() = flechas >= 1
  method usar() {flechas = flechas - 1} 
  
  method potencia() = 4
}

object javalina {
  var estado = true
  method cargada() = estado
  method usar() { estado = false}
  method potencia() = 30
   
}
// Elementos
object castillo {
  var defensa = 150
  method altura() = 20
  method defensa() = defensa
  method ataque(potenciaArma) {defensa = defensa - potenciaArma} 
  method valor() = defensa / 5
  method trabajo() {  defensa = (defensa + 20).min(200) }
   
  

}

object aurora {
  var potencia = 0
   method altura() = 1
   method viva() = potencia < 10
   method ataque(potenciaArma) {potencia = potenciaArma }
   method valor () = 15
   

   
}

object tipa {
  var altura = 8
   method altura() = altura
   method valor() = altura * 2
   method trabajo() =  altura + 1  


}







//if(self.ataque() )
// elemento.cargada() && (elemento.ataque(elemento.potencia()) === elemento.potencia() && elemento.usada())

//arma.cargada()