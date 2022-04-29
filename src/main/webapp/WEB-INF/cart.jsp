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
	<div class="navbar navbar-expand-x1 navbar-dark bg-dark fixed-top">
		<div class="container position-static">
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
	<div class="container py-5 "></div>
	<div class="container d-flex justify-content-between">
		<div class="container">
			<h2>Your Cart</h2>
			<ul class="list-group list-group-vertical-md py-3">
				<li
					class="list-group-item d-flex justify-content-between align-items-center px-5">
					<div>
						<h5>Gym Bag</h5>
					</div>
					<div>
						<p>$53.99</p>
						<a href="" class="btn btn-dark">Remove from cart</a>
					</div>
				</li>
				<li
					class="list-group-item d-flex justify-content-between align-items-center px-5">
					<div>
						<h5>Gym Belt</h5>
					</div>
					<div>
						<p>$88.99</p>
						<a href="" class="btn btn-dark">Remove from cart</a>
					</div>
				</li>
				<li
					class="list-group-item d-flex justify-content-between align-items-center px-5">
					<div>
						<h5>Gym Wraps</h5>
					</div>
					<div>
						<p>$29.99</p>
						<a href="" class="btn btn-dark">Remove from cart</a>
					</div>
				</li>
				<li class="list-group-item d-flex justify-content-between align-items-center px-5">
					<div>
						<h5>Total:</h5>
						<h5>Tax: @8.9%</h5>
						<h3>Grand Total:</h3>
					</div>
					<div>
						<p>$172.97</p>
						<p>$15.39</p>
						<p>$188.36</p>
					</div>
				</li>
			</ul>
		</div>
		<div class="container text-white bg-dark p-5">
			<h2>Shipping Address</h2>
			<form:form action="/register" method="post" modelAttribute="newUser" class="row-g-3">
			<div class="col-12">
				<form:label class="form-label" path="password">Address:</form:label>
				<form:errors class="text-danger" path="password" />
				<form:input class="form-control" path="password" />
			</div>
			<div class="col-12">
				<form:label class="form-label" path="confirm">Address 2:</form:label>
				<form:errors class="text-danger" path="confirm" />
				<form:input class="form-control" path="confirm" />
			</div>
			<div class="col-md-6">
				<form:label class="form-label" path="confirm">City:</form:label>
				<form:errors class="text-danger" path="confirm" />
				<form:input class="form-control" path="confirm" />
			</div>
			<div class="col-md-4">
				<form:label class="form-label" path="confirm">State:</form:label>
				<form:errors class="text-danger" path="confirm" />
				<form:input class="form-control" path="confirm" />
			</div>
			<div class="col-md-2">
				<form:label class="form-label" path="confirm">Zip code:</form:label>
				<form:errors class="text-danger" path="confirm" />
				<form:input class="form-control" path="confirm" />
			</div>
			<form action='/charge' method='POST' id='checkout-form'>
    <input type='hidden' th:value='${amount}' name='amount' />
    <label><span th:text='${amount/100}' /></label>
    <!-- NOTE: data-key/data-amount/data-currency will be rendered by Thymeleaf -->
    <script
       src='https://checkout.stripe.com/checkout.js' 
       class='stripe-button'
       th:attr='data-key=${stripePublicKey}, 
         data-amount=${amount}, 
         data-currency=${currency}'
       data-name='Baeldung'
       data-description='Spring course checkout'
       data-image
         ='https://www.baeldung.com/wp-content/themes/baeldung/favicon/android-chrome-192x192.png'
       data-locale='auto'
       data-zip-code='false'>
   </script>
</form>
			</form:form>
		</div>
	</div>
</body>
</html>