package com.neoris.modelo;

public	class Usuario {
	private int id;
	private String email;
	private String contrasena;
	private Rol rol;
	
	public Usuario(String email, String contrasena,Rol rol) {
		this.email = email;
		this.contrasena = contrasena;
		this.rol=rol;
	}
	
	
	public Usuario(int id, String email, String contrasena, Rol rol) {
		super();
		this.id = id;
		this.email = email;
		this.contrasena = contrasena;
		this.rol = rol;
	}


	public Usuario() {
		super();
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Rol getRol() {
		return rol;
	}

	public void setRol(Rol rol) {
		this.rol = rol;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContrasena() {
		return contrasena;
	}
	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	@Override
	public String toString() {
		return "Usuario [email=" + email + ", contrasena=" + contrasena + "]";
	}
	
}
