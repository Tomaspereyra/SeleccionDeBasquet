package com.neoris.test;

import com.neoris.modelo.Jugador;
import com.neoris.modelo.Posicion;
import com.neoris.service.impl.JugadorServiceImpl;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Jugador jugador = new Jugador("n","",100.0,181.20,Posicion.BASE,28);
		JugadorServiceImpl jugadorService = new JugadorServiceImpl();
		//jugadorService.ingresar(jugador);
		System.out.println("hola");
		System.out.println(jugadorService.traerMejoresJugadores("BASE"));
		

	}

}
