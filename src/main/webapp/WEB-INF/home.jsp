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
				
					<li class="nav-item text-white">Welcome</li>
					<li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/cart">Cart</a></li>
					<li class="nav-item"><a class="nav-link" href="/update">Account</a></li>
					<li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
				</ul>
			</div>

		</div>
	</div>
	<div class="container justify-content-center d-flex py-5 mt-5 ">
		<div id="carouselWithControls" class="carousel carousel-dark slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/bag.jpg" width="500" height="500" alt="Slide 1">
					<div class="carousel-caption d-none d-sm-block text-warning">
						<h4>Gym Bag</h4>
						<h5>$53.99</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/belt.jpg" width="500" height="500" alt="Slide 2">
					<div class="carousel-caption d-none d-sm-block text-warning">
						<h4>Gym Belt</h4>
						<h5>$88.99</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/wrap.jpg" width="500" height="500" alt="Slide 3">
					<div class="carousel-caption d-none d-sm-block text-warning">
						<h4>Gym Wraps</h4>
						<h5>$29.99</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/pad.jpeg" width="500" height="500" alt="Slide 3">
					<div class="carousel-caption d-none d-sm-block text-warning">
						<h4>Bar Pad</h4>
						<h5>$9.99</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="images/clamp.jpeg" width="500" height="500" alt="Slide 3">
					<div class="carousel-caption d-none d-sm-block text-warning">
						<h4>Bar Clamp</h4>
						<h5>$15.99</h5>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselWithControls"
				role="button" data-bs-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselWithControls"
				role="button" data-bs-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
			</a>
		</div>
	</div>

	<div class="container">
		<h2>Popular Items</h2>
		<ul class="list-group list-group-vertical-md py-3">
			<li
				class="list-group-item d-flex justify-content-between align-items-center px-5">
				<div>
					<h5>Gym Belt</h5>
					<img src="images/belt.jpg" width="200" height="200">
				</div>
				<div>
					<p>$88.99</p>
					<a href="" class="btn btn-dark" >Add to cart</a>
				</div>
			</li>
			<li
				class="list-group-item d-flex justify-content-between align-items-center px-5">
				<div>
					<h5>Gym Bag</h5>
					<img src="images/bag.jpg" width="200" height="200">
				</div>
				<div>
					<p>$53.99</p>
					<a href="" class="btn btn-dark">Add to cart</a>
				</div>
			</li>
			<li
				class="list-group-item d-flex justify-content-between align-items-center px-5">
				<div>
					<h5>Gym Wraps</h5>
					<img src="images/wrap.jpg" width="200" height="200">
				</div>
				<div>
					<p>$29.99</p>
					<a href="" class="btn btn-dark">Add to cart</a>
				</div>
			</li>
			<li
				class="list-group-item d-flex justify-content-between align-items-center px-5">
				<div>
					<h5>Bar Clamp</h5>
					<img src="images/clamp.jpeg" width="200" height="200">
				</div>
				<div>
					<p>$15.99</p>
					<a href="" class="btn btn-dark">Add to cart</a>
				</div>
			</li>
			<li
				class="list-group-item d-flex justify-content-between align-items-center px-5">
				<div>
					<h6>Bar Pad</h6>
					<img src="images/pad.jpeg" width="200" height="200">
				</div>
				<div>
					<p>$9.99</p>
					<a href="" class="btn btn-dark">Add to cart</a>
				</div>
			</li>
		</ul>
	</div>
</body>
</html>