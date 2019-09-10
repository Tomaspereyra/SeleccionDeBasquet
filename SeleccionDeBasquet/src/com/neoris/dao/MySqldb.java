package com.neoris.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class MySqldb {
	private Connection conn;
	private static MySqldb instancia;
	
	
	private MySqldb() throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/seleccion";
			this.conn = DriverManager.getConnection(url,"root","");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
			
	}
	
	public static MySqldb getInstance() throws ClassNotFoundException {
		if(instancia==null) {
			instancia=new MySqldb();
		}
		
		return instancia;
	}

	public Connection getConn() {
		return conn;
	}
	
	

}
