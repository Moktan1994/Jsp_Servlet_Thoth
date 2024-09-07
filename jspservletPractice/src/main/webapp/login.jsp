<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Login here</title>
</head>
<body>
<header style="height: 40px; background-color: blue"></header>
<div class="container mt-4">
<div style="width: 50%">
<hr>
<form action="login">


<h1>Login Forms</h1>
<div class="group-form">
	<label>Username : </label>
	<input type="text" name="username" class="form-control">
</div>
<div class="group-form">
	<label>Password : </label>
	<input type="password" name="password" class="form-control">
</div>
<br>
<div class="group-form">
	<button type="submit" class="btn btn-primary" >Login</button>
</div>
</form>
</div>
</div>
</body>
</html>