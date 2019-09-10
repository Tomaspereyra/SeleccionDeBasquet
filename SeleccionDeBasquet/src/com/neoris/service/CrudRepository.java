package com.neoris.service;

import java.util.List;

public interface CrudRepository<T> {
	
	public void ingresar(T t);
	public void modificar(int id, T t);
	public List<T> traerTodos();
	

}
