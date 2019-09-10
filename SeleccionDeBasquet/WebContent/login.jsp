<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>Iniciar</title>
</head>
<body>
<%String error = (String)request.getAttribute("error"); %>
	<div class="container">
		<div class="row mb-5">
			<div class="col-12">
				<nav class="navbar fixed-top navbar-light bg-light">
					<a class="navbar-brand" href="#">Seleccion</a> <a
						class="navbar-brand" href="#">Log in</a>

				</nav>
			</div>

		</div>

		<div class="row mt-5 justify-content-center">
			<div class="col-md-6">
			<%if(error!= null){ %>
	
				<div class="mt-5 alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong><%=error%></strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			
				<%} %>
				<form class="mt-5"   method="POST" action="/SeleccionDeBasquet/login">
					<div class="form-group">
						<label for="exampleInputEmail1">Direccion de email</label>
						 <input	type="email" name="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Email"> <small
							id="emailHelp" class="form-text text-muted">No lo compartiremos con nadie</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Contraseña</label> 
						<input type="password" name="contrasena" class="form-control" id="exampleInputPassword1"
						placeholder="Contraseña">
					</div>					
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