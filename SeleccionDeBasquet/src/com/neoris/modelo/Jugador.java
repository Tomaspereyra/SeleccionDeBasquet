package com.neoris.modelo;

public class Jugador {
	private int id;
	private String nombre;
	private String apellido;
	private Double peso;
	private Double altura;
	private Posicion posicion;
	private int edad;
	private int calificacion;
	
	
	public Jugador(String nombre, String apellido, Double peso, Double altura, Posicion posicion, int edad,
			int calificacion) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.peso = peso;
		this.altura = altura;
		this.posicion = posicion;
		this.edad = edad;
		this.calificacion = calificacion;
	}
	
	public Jugador(int id, String nombre, String apellido, Double peso, Double altura, Posicion posicion, int edad,
			int calificacion) {
		
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.peso = peso;
		this.altura = altura;
		this.posicion = posicion;
		this.edad = edad;
		this.calificacion = calificacion;
	}

	public Jugador(String nombre, String apellido, Posicion posicion, int calificacion) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.posicion = posicion;
		this.calificacion = calificacion;
	}

	public Jugador(String nombre, String apellido, Double peso, Double altura, Posicion posicion, int edad) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.peso = peso;
		this.altura = altura;
		this.posicion = posicion;
		this.edad = edad;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public Double getPeso() {
		return peso;
	}
	public void setPeso(Double peso) {
		this.peso = peso;
	}
	public Double getAltura() {
		return altura;
	}
	public void setAltura(Double altura) {
		this.altura = altura;
	}
	public Posicion getPosicion() {
		return posicion;
	}
	public void setPosicion(Posicion posicion) {
		this.posicion = posicion;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public int getCalificacion() {
		return calificacion;
	}
	public void setCalificacion(int calificacion) {
		this.calificacion = calificacion;
	}
	@Override
	public String toString() {
		return "Jugador [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", peso=" + peso + ", altura="
				+ altura + ", posicion=" + posicion + ", edad=" + edad + ", calificacion=" + calificacion + "]";
	}
	
	
}
