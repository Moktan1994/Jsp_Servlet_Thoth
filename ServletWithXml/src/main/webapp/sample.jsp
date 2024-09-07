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
<title>sample web</title>
</head>
<body>
<header style="background-color: blue; height:30px"></header>
<div class="container mt-4">
<h1><span style="background-color:yellow">Hey,You are here for enter numbers</span></h1>
<form action="add">
<div class="form-group">
<label>First Number : </label>
<input type="text" name="num1" class="form-control">
</div>
<div class="form-group">
<label>Second Number : </label>
<input type="text" name="num2"class="form-control">
</div>
<br>
<div class="form-group">
<button type="submit" class="form-control">submit</button>
</div>
</form>
</div>
</body>
</html>