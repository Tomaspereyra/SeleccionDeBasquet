package com.neoris.service.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.neoris.dao.MySqldb;
import com.neoris.modelo.Rol;
import com.neoris.modelo.Usuario;
import com.neoris.service.CrudRepository;

public class UsuarioServiceImpl implements CrudRepository<Usuario> {

	@Override
	public void ingresar(Usuario t) {
		String sql= "insert into usuarios (email,contrasena,rol) values(?,?,?)";
		try {
			PreparedStatement ps = MySqldb.getInstance().getConn().prepareStatement(sql);
			ps.setString(1, t.getEmail());
			ps.setString(2, t.getContrasena());
			ps.setObject(3, t.getRol().name());
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				MySqldb.getInstance().getConn().close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
	}

	@SuppressWarnings("finally")	
	public Usuario traerPorEmailContrasena(String email, String contrasena) {
		String sql = "select * from usuarios where email = ? and contrasena = ?";
		Usuario usuario = null;
		try {
			PreparedStatement ps = MySqldb.getInstance().getConn().prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2, contrasena);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				usuario = new Usuario(rs.getInt("id"),rs.getString("email"),rs.getString("contrasena"),Rol.valueOf(rs.getString("rol")));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			
			return usuario;
			
			
		}
		
	}

	@Override
	public void modificar(int id, Usuario t) {
		String sql = "update usuarios set contrasena = ? where id = ?";
		try {
			PreparedStatement ps = MySqldb.getInstance().getConn().prepareStatement(sql);
			ps.setString(1, t.getContrasena());
			ps.setInt(2, t.getId());
			ps.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Usuario> traerTodos() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
