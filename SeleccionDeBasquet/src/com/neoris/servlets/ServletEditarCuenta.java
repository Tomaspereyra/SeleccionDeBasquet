package com.neoris.servlets;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neoris.modelo.Usuario;
import com.neoris.service.impl.UsuarioServiceImpl;


public class ServletEditarCuenta extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioServiceImpl  usuarioService = new UsuarioServiceImpl();
    public ServletEditarCuenta() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	

		String email = request.getParameter("email");
		String contrasenaActual = request.getParameter("contrasena");		
		String contrasenaNueva= request.getParameter("contrasenanueva");
		Usuario u = usuarioService.traerPorEmailContrasena(email, contrasenaActual);
	
		
	
		if(u!=null) {
			u.setContrasena(contrasenaNueva);
			usuarioService.modificar(u.getId(),u);
			request.setAttribute("resultado", "Contraseña cambiada");
		}else {
			request.setAttribute("resultado","email o contraseña incorrectos");
			
		}
		request.getRequestDispatcher("/ajustes.jsp").forward(request, response);
	}

}
