<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Blog hub | Home</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="#">Blog</a>
				</li>

				<li class="nav-item active"><a class="nav-link" href="#">About
						Us</a></li>

				<li class="nav-item active"><a class="nav-link" href="#">Contact
						Us</a></li>
		</div>
	</nav>

	<div class="alert alert-secondary" role="alert">This is a
		secondary alert—check it out!</div>

	<div class="container mt-3">
		<h1 class="text-center">Todo App</h1>


		<div class="row mt-4">
			<div class="col-md-2">


				<div class="list-group">
					<a href="#" class="list-group-item list-group-item-action active">
						All ToDo </a> <a href='<c:url value='/add'></c:url>'
						class="list-group-item list-group-item-action">Add ToDo</a> <a
						href='<c:url value='/home'></c:url>'
						class="list-group-item list-group-item-action">View ToDo</a>
				</div>

			</div>

			<div class="col-md-10">



				<c:if test="${ str=='home'}">
					<h1 class="text-center">All Todo</h1>
				</c:if>

				<c:if test="${ str=='add'}">
					<h1 class="text-center">Add Todo</h1>

<form:form action="/todo" method="post" modelAttribute="todo">

						<div class="form-group">
							<form:input path="notesTittle" type="text" class="form-control"
								id="exampleInputPassword1" placeholder="Tittle" />
						</div>


						<div class="form-group">
 							<textarea path="notesDesc" class="form-control" placeholder="Content" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
						<div class="form-group text-center">
						
						  <button type="submit" class="btn btn-danger">Add ToDo</button>
											</div>

					</form:form>

				</c:if>
			</div>

		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>