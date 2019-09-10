<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.List" %>
 <%@ page import="com.neoris.modelo.Jugador" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Jugadores</title>
</head>
<body>
<%List<Jugador> jugadores = (List)request.getAttribute("jugadores");
	String mensaje = (String)request.getAttribute("mensaje");%>

	<div class="container">
		<div class="row mb-5">
			<div class="col-12">
				<nav class="navbar fixed-top navbar-light bg-light">
					<a class="navbar-brand" href="/SeleccionDeBasquet/seleccionados">Ver
						seleccionados</a> 
						<a class="navbar-brand" href="#">Entrenador</a>
					<div class="btn-group" role="group">
						<button id="btnGroupDrop1" type="button"
							class="btn btn-secondary dropdown-toggle" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Ajustes</button>
						<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
							<a href="ajustes.jsp" class="dropdown-item" role="button" aria-pressed="true">Mi cuenta</a> 
						<a class="dropdown-item" href="/SeleccionDeBasquet/login.jsp">Salir</a>
						</div>
					</div>

				</nav>
			</div>

		</div>
	
		<div class="row justify-content-center mt-5">
			<div class="col-md-9 mt-5">
				<%if(mensaje!= null){ %>
	
				<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong><%=mensaje%></strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			
				<%} %>
				<form method="POST" action="/SeleccionDeBasquet/actualizarJugadores">
					<ul class="list-group">
						<%for(Jugador j : jugadores){ %>

						<li
							class="list-group-item d-flex justify-content-between align-items-center">
							<div class="col-3"><%=j.getNombre()%>
								<%=j.getApellido()%></div>

							<div class="col-3">
								<div class="form-group">
									<input type="number" min="0" max="100" name="<%=j.getId()%>" class="form-control"
										id="formGroupExampleInput2" placeholder="Calificacion">
								</div>
							</div> <label for="formGroupExampleInput2">Calificacion actual</label>
							<span class="badge badge-primary badge-pill"><%=j.getCalificacion()%></span>
						</li>
						<%} %>


					</ul>
					<button type="submit" class="btn btn-primary mt-3">Guardar
						cambios</button>
				</form>
			</div>

		</div>

	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>