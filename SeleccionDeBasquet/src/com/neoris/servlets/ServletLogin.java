package com.neoris.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neoris.modelo.Rol;
import com.neoris.modelo.Usuario;
import com.neoris.service.impl.JugadorServiceImpl;
import com.neoris.service.impl.UsuarioServiceImpl;


public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UsuarioServiceImpl usuarioService = new UsuarioServiceImpl();

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		try {
			response.setContentType("text/html;charset=UTF-8");
			String email = request.getParameter("email");
			String contrasena = request.getParameter("contrasena");
			Usuario usuario = usuarioService.traerPorEmailContrasena(email, contrasena);
			if (usuario != null) { //si existe usuario con ese email y contraseña
				request.setAttribute("email", email);

				if (usuario.getRol() == Rol.ENTRENADOR) {
					JugadorServiceImpl jugadorService = new JugadorServiceImpl();
					request.setAttribute("jugadores",jugadorService.traerTodos());
					request.getRequestDispatcher("/jugadores.jsp").forward(request, response);
				} else {
					request.getRequestDispatcher("/inicio.jsp").forward(request, response);
				}
			} else {
				request.setAttribute("error", "Email o contraseña incorrectos");
				request.getRequestDispatcher("/login.jsp").forward(request, response);;
			}
		} catch (Exception e) {
			response.sendError(500, "Error");
		}

	}

}
