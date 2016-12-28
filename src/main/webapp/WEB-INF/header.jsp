<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<html>
<head>

<!-- Website Title & Description for Search Engine purposes -->
<meta name="description" content="">

<!-- Mobile viewport optimized -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

</head>
<body background="${pageContext.request.contextPath}/resources/images/back.jpg" />
<div align="center">
	<h1>
		Ori <a href="home"><img src="${pageContext.request.contextPath}/resources/images/logo.jpg" alt="OriBuy"
			height="50" width="50" align="middle" /></a> Buy
	</h1>
</div>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
	</div>
	<div class="collapse navbar-collapse" id="nav-1">
		<ul class="nav navbar-nav">
			<li class="active"><a href="home">Home<span class="sr-only">(current)</span></a></li>
			<li><a href="Products">Products</a></li>
			<li><a href="About">About Us</a></li>
			<li><a href="Contact">Contact Us</a></li>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<li><a href="ViewUsers">View Users</a></li>
			<li><a href="NewProd">Add New Products</a></li>
			</sec:authorize>
		</ul>
		<form class="navbar-form navbar-left">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
			<button type="submit" class="btn btn-default">Search</button>
		</form>
		<ul class="nav navbar-nav navbar-right">
		<sec:authorize access="isAnonymous()">
			<li><a href="Register">Register</a></li>
			<li><a href="Login">Login</a></li>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
			<li><a href="#">Hello, ${username}!</a></li>
			<li><a href="${pageContext.request.contextPath}/getAllCart?name=${username}">Cart</a></li>
			<li><a href="${pageContext.request.contextPath}/Logout">Log-out</a></li>
			</sec:authorize>
		</ul>
	</div>
</div>
</nav>
<div align="center">
	<hr>
	<h2>
		<b>All your origami needs at one destination!!</b>
	</h2>
</div>
<hr>
</body>
</html>