package com.neoris.service.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.neoris.dao.MySqldb;
import com.neoris.modelo.Jugador;
import com.neoris.modelo.Posicion;
import com.neoris.service.CrudRepository;

public class JugadorServiceImpl implements CrudRepository<Jugador> {

	@Override
	public void ingresar(Jugador t) {
		
		String sql = "insert into jugadores (nombre,apellido,edad,peso,altura,posicion,calificacion)values (?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = MySqldb.getInstance().getConn().prepareStatement(sql);
			ps.setString(1, t.getNombre());
			ps.setString(2,t.getApellido());
			ps.setInt(3, t.getEdad());
			ps.setDouble(4,t.getPeso());
			ps.setDouble(5,t.getAltura());
			ps.setObject(6, t.getPosicion().toString());
			ps.setInt(7, 0);
			ps.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

	@SuppressWarnings("finally")
	public List<Jugador> traerMejoresJugadores(String posicion){
		String sql = "select * from jugadores where posicion = ? order by calificacion desc";
		List<Jugador> jugadores = new ArrayList<Jugador>();
		try {
			PreparedStatement ps = MySqldb.getInstance().getConn().prepareStatement(sql);
			ps.setString(1, posicion);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				jugadores.add(new Jugador(rs.getString("nombre"),rs.getString("apellido"),Posicion.valueOf(rs.getString("posicion")),rs.getInt("calificacion")));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(!jugadores.isEmpty()) {
				if (jugadores.get(jugadores.size()-2).getCalificacion()!=jugadores.get(jugadores.size()-1).getCalificacion()) { // si el anteultimo no tiene la misma califcacion q el ultimo
					jugadores.remove(jugadores.size()-1);			
				}
		}
			return jugadores;
		
	}
		}

	@Override
	public void modificar(int id, Jugador t) {
	
	}
	
	public void modificarCalificacion(int id, int calificacion) {
		String sql = "update jugadores set calificacion = ? where id = ?";
		try{
			PreparedStatement ps = MySqldb.getInstance().getConn().prepareStatement(sql);
			ps.setInt(1,calificacion);
			ps.setInt(2, id);
			ps.execute();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	@SuppressWarnings("finally")
	@Override
	public List<Jugador> traerTodos() {
		List<Jugador> jugadores = new ArrayList<Jugador>();
		String sql = "select * from jugadores";
		try {
			Statement st = MySqldb.getInstance().getConn().createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {
				jugadores.add(new Jugador(rs.getInt("id"),rs.getString("nombre"),rs.getString("apellido"),rs.getDouble("peso"),rs.getDouble("altura"),Posicion.valueOf(rs.getString("posicion")),rs.getInt("edad"),rs.getInt("calificacion")));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			
			return jugadores;
		}
		
	}

	

}
