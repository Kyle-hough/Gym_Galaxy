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
<title>Gym Galaxy</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="bg-secondary">
	<div class="navbar navbar-dark bg-dark">
		<div class="container fluid">
			<h1 class="text-white">Gym Galaxy</h1>
		</div>
	</div>
	<div
		class=" container text-white bg-dark position-absolute top-50 start-50 translate-middle p-3">
		<h1>Login</h1>
		<form:form action="/login" method="post" modelAttribute="newLogin"
			class="row g-3">
			<div class="col-md-6">
				<form:label class="form-label" path="email">Email:</form:label>
				<form:errors class="text-danger" path="email" />
				<form:input class="form-control" path="email" />
			</div>
			<div class="col-md-6">
				<form:label class="form-label" path="password">Password:</form:label>
				<form:errors class="text-danger" path="password" />
				<form:password class="form-control" path="password" />
			</div>
			<div class="col-12">
				<input type="submit" value="Login" class="btn btn-outline-light" />
			</div>
			<div class="col-12">
			<a href="/">Go Back</a>
			</div>
		</form:form>
	</div>
</body>
</html>