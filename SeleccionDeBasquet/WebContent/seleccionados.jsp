<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.neoris.modelo.Jugador"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>

<div class="container">
		<div class="row mb-5">
			<div class="col-12">
				<nav class="navbar fixed-top navbar-light bg-light">
					<a class="navbar-brand" href="#">Ver
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
<%List<Jugador> jugadores = (List)request.getAttribute("base");%>
		<div class="row justify-content-center mt-5">
			<div class="col-md-9 mt-5">
			<%if(jugadores.size()>3){ %>
			<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong>No se pudo seleccionar a los mejores tres.</strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			<%} %>
  		<h4 class="text-muted">Base</h4>
	
			<ul class="list-group">
						<%for(Jugador j : jugadores){ %>

						<li class="list-group-item d-flex justify-content-between align-items-center">
							<div class="col-3"><%=j.getNombre()%>
								<%=j.getApellido()%></div>
							<div class="col-3">
								
							<label for="formGroupExampleInput2">Calificacion</label>
							<span class="badge badge-primary badge-pill"><%=j.getCalificacion()%></span>
							</div>
						</li>
						<%} %>


					</ul>
			
			</div>
		</div>
		<%jugadores = (List)request.getAttribute("ayuda-base");%>
		<div class="row justify-content-center mt-5">
			<div class="col-md-9 mt-5">
			<%if(jugadores.size()>3){ %>
			<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong>No se pudo seleccionar a los mejores tres.</strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			<%} %>
			<h4 class="text-muted">Ayuda base</h4>
			<ul class="list-group">
						<%for(Jugador j : jugadores){ %>

						<li class="list-group-item d-flex justify-content-between align-items-center">
							<div class="col-3"><%=j.getNombre()%>
								<%=j.getApellido()%></div>
							<div class="col-3">
								
							<label for="formGroupExampleInput2">Calificacion</label>
							<span class="badge badge-primary badge-pill"><%=j.getCalificacion()%></span>
							</div>
						</li>
						<%} %>


					</ul>
			
			</div>
		</div>
		<%jugadores = (List)request.getAttribute("ala");%>
		<div class="row justify-content-center mt-5">
			<div class="col-md-9 mt-5">
			<%if(jugadores.size()>3){ %>
			<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong>No se pudo seleccionar a los mejores tres.</strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			<%} %>
			<h4 class="text-muted">Ala</h4>
			<ul class="list-group">
						<%for(Jugador j : jugadores){ %>

						<li class="list-group-item d-flex justify-content-between align-items-center">
							<div class="col-3"><%=j.getNombre()%>
								<%=j.getApellido()%></div>
							<div class="col-3">								
							 <label for="formGroupExampleInput2">Calificacion</label>
							<span class="badge badge-primary badge-pill"><%=j.getCalificacion()%></span>
						</div>	
						</li>
						<%} %>


					</ul>
			
			</div>
		</div>
		<%jugadores = (List)request.getAttribute("ala-pivot");%>
		<div class="row justify-content-center mt-5">
			<div class="col-md-9 mt-5">
			<%if(jugadores.size()>3){ %>
			<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong>No se pudo seleccionar a los mejores tres.</strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			<%} %>
			<h4 class="text-muted">Ala pivot</h4>
			<ul class="list-group">
						<%for(Jugador j : jugadores){ %>

						<li class="list-group-item d-flex justify-content-between align-items-center">
							<div class="col-3"><%=j.getNombre()%>
								<%=j.getApellido()%></div>
								<div class="col-3"> 
							 <label for="formGroupExampleInput2">Calificacion</label>
							<span class="badge badge-primary badge-pill"><%=j.getCalificacion()%></span>
							</div>
						</li>
						<%} %>


					</ul>
			
			</div>
		</div>
		<%jugadores = (List)request.getAttribute("pivot");%>
		<div class="row justify-content-center mb-5">
			<div class="col-md-9 mt-5">
			<%if(jugadores.size()>3){ %>
			<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong>No se pudo seleccionar a los mejores tres.</strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			<%} %>
			<h4 class="text-muted">Pivot</h4>
			<ul class="list-group">
						<%for(Jugador j : jugadores){ %>

						<li class="list-group-item d-flex justify-content-between align-items-center">
							<div class="col-3"><%=j.getNombre()%>
								<%=j.getApellido()%></div>
								<div class="col-3"> 
							 <label for="formGroupExampleInput2">Calificacion</label>
							<span class="badge badge-primary badge-pill"><%=j.getCalificacion()%></span>
							</div>
						</li>
						<%} %>


					</ul>
			
			</div>
		</div>
		<div class="row mb-5">
			<div class="col-12">
				<nav class="navbar navbar-light bg-light d-flex justify-content-center">
					
						<a class="navbar-brand" href="#">Seleccion Argentina</a>
					

				</nav>
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