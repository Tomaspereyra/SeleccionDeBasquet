<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<%String email = (String)request.getAttribute("email");
	String mensaje = (String)request.getAttribute("mensaje");%>
	<div class="container">
		<div class="row mb-5">
			<div class="col-12">
				<nav class="navbar fixed-top navbar-light bg-light">
					<a class="navbar-brand" href="/SeleccionDeBasquet/seleccionados">Ver
						seleccionados</a> 
						<a class="navbar-brand" href="#">Secretaria</a>
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
				<form method="POST" class="mt-5"
					action="/SeleccionDeBasquet/ingresarJugador">
					<div class="form-group">
						<label for="exampleInputEmail1">Nombre</label> <input
							name="nombre" type="text" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Ingrese nombre"> <small id="emailHelp"
							class="form-text text-muted">We'll never share your email
							with anyone else.</small>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Apellido</label> <input
							name="apellido" type="text" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Ingrese apellido">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Edad</label> <input type="number"
							name="edad" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Ingrese la edad">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Peso</label> <input type="number"
							name="peso" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Ingrese el peso">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Altura</label> <input
							type="number" step=0.01 name="altura" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Ingrese la altura">
					</div>
					<div class="input-group mb-3">
						<select name="posicion" class="custom-select"
							id="inputGroupSelect02">
							<option selected>Elegir posicion</option>
							<option value="BASE">Base</option>
							<option value="AYUDA_BASE">Ayuda Base</option>
							<option value="ALA">Ala</option>
							<option value="ALA_PIVOT">Ala Pivot</option>
							<option value="PIVOT">Pivot</option>
						</select>
						<div class="input-group-append">
							<label class="input-group-text" for="inputGroupSelect02">Opciones</label>
						</div>
					</div>


					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>


		</div>
		<%if(mensaje!= null){ %>
		<div class="row justify-content-center mt-5">
			<div class="col">
				<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong><%=mensaje%></strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		</div>
		<%} %>
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