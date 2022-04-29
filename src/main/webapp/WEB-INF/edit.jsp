
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tacos</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="bg-secondary">
	<div class="navbar navbar-expand-x1 navbar-dark bg-dark">
		<div class="container fluid">
			<h1 class="text-white">Gym Galaxy</h1>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarDark"
				aria-controls="navbarDark" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse show" id="navbarDark">
				<ul class="navbar-nav me-auto mb-2 mb-xl-0">

					<li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/cart">Cart</a></li>
					<li class="nav-item"><a class="nav-link" href="/update">Account</a></li>
					<li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div
		class="container text-white bg-dark position-absolute top-50 start-50 translate-middle p-3">
		<h1>Update Your Account</h1>
		<form:form action="/register" method="post" modelAttribute="newUser"
			class="row g-3">
			<div class="col-md-6">
				<form:label class="form-label" path="userName">User Name:</form:label>
				<form:errors class="text-danger" path="userName"/>
				<form:input class="form-control" path="userName"/>
			</div>
			<div class="col-md-6">
				<form:label class="form-label" path="email">Email:</form:label>
				<form:errors class="text-danger" path="email"/>
				<form:input class="form-control" path="email"/>
			</div>
			
			<div class="col-md-2">
				<input type="submit" value="Update" class="btn btn-outline-light" />
			</div>
		</form:form>
	</div>
</body>
</html>