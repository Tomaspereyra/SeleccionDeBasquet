<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajustes</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<%String resultado = (String)request.getAttribute("resultado"); %>
<div class="container">
		<div class="row mb-5">
			<div class="col-12">
				<nav class="navbar fixed-top navbar-light bg-light">
					<a class="navbar-brand" href="#">Seleccion</a>
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
			<div class="col-md-6">
				<form class="mt-5" method="POST" action="/SeleccionDeBasquet/editar">
					<div class="form-group">
						<label for="exampleInputEmail1">Direccion de email</label>
						 <input	type="email" name="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="ingrese su email"> <small
							id="emailHelp" class="form-text text-muted">No lo compatiremos con nadie</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Contraseña actual</label> 
						<input type="password" name="contrasena" class="form-control" id="exampleInputPassword1"
						placeholder="Contraseña">
					</div>	
					<div class="form-group">
						<label for="exampleInputPassword1">Contraseña nueva</label> 
						<input type="password" name="contrasenanueva" class="form-control" id="exampleInputPassword2"
						placeholder="Contraseña nueva">
					</div>
						<% if(resultado!=null){
							%>
							<h2><%=resultado%></h2>
							
							<%}%>
						
					<button type="submit" class="btn btn-primary">Submit</button>
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