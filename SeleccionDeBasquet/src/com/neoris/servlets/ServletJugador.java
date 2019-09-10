package com.neoris.servlets;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neoris.modelo.Jugador;
import com.neoris.modelo.Posicion;
import com.neoris.service.impl.JugadorServiceImpl;


public class ServletJugador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private JugadorServiceImpl jugadorService = new JugadorServiceImpl();
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.traerMejores(request, response);

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(request.getRequestURI());
			if(request.getRequestURI().compareTo("/SeleccionDeBasquet/ingresarJugador")==0) {
				this.cargarJugadores(request, response);
				
			}
			else if(request.getRequestURI().compareTo("/SeleccionDeBasquet/actualizarJugadores")==0) {
				this.actualizarJugadores(request,response);
			}
			else {
				this.traerMejores(request, response);
			}
		
		
		
	}
	private void traerMejores(HttpServletRequest request, HttpServletResponse response) {
		
		List<Jugador> jugadoresBase = jugadorService.traerMejoresJugadores(Posicion.BASE.toString());
		List<Jugador> jugadoresAyuda = jugadorService.traerMejoresJugadores(Posicion.AYUDA_BASE.toString());
		List<Jugador> jugadoresAla = jugadorService.traerMejoresJugadores(Posicion.ALA.toString());
		List<Jugador> jugadoresAlaPivot = jugadorService.traerMejoresJugadores(Posicion.ALA_PIVOT.toString());
		List<Jugador> jugadoresPivot = jugadorService.traerMejoresJugadores(Posicion.PIVOT.toString());
		request.setAttribute("base",jugadoresBase);
		request.setAttribute("ayuda-base",jugadoresAyuda);
		request.setAttribute("ala",jugadoresAla);
		request.setAttribute("ala-pivot",jugadoresAlaPivot);
		request.setAttribute("pivot",jugadoresPivot);
		try {
			request.getRequestDispatcher("/seleccionados.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}


	}
	private void actualizarJugadores(HttpServletRequest request, HttpServletResponse response){
		Enumeration en = request.getParameterNames();
		String mensaje="No se cambio ningun valor";
		while(en.hasMoreElements()) {
			Object obj = en.nextElement();
			String param = (String) obj;
			String valor = request.getParameter(param);
			if(!valor.isEmpty()) {
				jugadorService.modificarCalificacion(Integer.parseInt(param), Integer.parseInt(valor));
				mensaje="Calificado/s con exito";
			}
			
		}
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("jugadores", jugadorService.traerTodos());
		try {
			request.getRequestDispatcher("/jugadores.jsp").forward(request,response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private void cargarJugadores(HttpServletRequest request, HttpServletResponse response) throws IOException{
		try {
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			int edad = Integer.parseInt(request.getParameter("edad"));
			Double peso = Double.valueOf(request.getParameter("peso"));
			Double altura = Double.valueOf(request.getParameter("altura"));
			String posicion = request.getParameter("posicion");			
			Jugador jugador = new Jugador(nombre,apellido,peso,altura,Posicion.valueOf(posicion),edad);
			System.out.println(jugador);
			jugadorService.ingresar(jugador);
			request.setAttribute("mensaje","Jugador cargado" );
			request.getRequestDispatcher("/inicio.jsp").forward(request, response);
			
		
		}
		catch(Exception e) {
			response.sendError(500,"error");
			System.out.println(e.getMessage());
		}
	}

}
