<%@page import="java.util.ArrayList"%>
<%@page import="com.signup.SignupClass"%>
<%@page import="java.util.List"%>
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
<title>Signup here</title>
</head>
<body>
	<header style="background-color: blue; height: 30px"></header>
	<div class="container mt-4">
	<img alt="" style="height: 100px;"src="https://png.pngtree.com/png-vector/20220518/ourmid/pngtree-sign-up-button-now-register-png-image_4649785.png">
	<img alt="" style="height: 100px;"src="https://png.pngtree.com/png-vector/20220518/ourmid/pngtree-sign-up-button-now-register-png-image_4649785.png">
	<img alt="" style="height: 100px;"src="https://png.pngtree.com/png-vector/20220518/ourmid/pngtree-sign-up-button-now-register-png-image_4649785.png">
	<img alt="" style="height: 100px;"src="https://png.pngtree.com/png-vector/20220518/ourmid/pngtree-sign-up-button-now-register-png-image_4649785.png">
	<img alt="" style="height: 100px;"src="https://png.pngtree.com/png-vector/20220518/ourmid/pngtree-sign-up-button-now-register-png-image_4649785.png">
	<img alt="" style="height: 100px;"src="https://png.pngtree.com/png-vector/20220518/ourmid/pngtree-sign-up-button-now-register-png-image_4649785.png">
	<hr>
	<span style="color:blue;font-weight: bold;">${message}</span>
	<form action="signup" method="post">
	<div style="width: 50%">
	<div class="form-group">
	<label>Username : </label>
	<input type="text" name="username" class="form-control">
	</div>
	<div class="form-group">
	<label>Password : </label>
	<input type="password" name ="password" class="form-control">
	</div>
	<div class="form-group">
	<label>Gender : </label>
		<select name="gender" class="form-control">
			<option>male</option>
			<option>female</option>
			<option>other</option>
		</select>
	</div>
	<br>
	<div class="form-group mt-2">
	<button type="submit" class="btn btn-primary">signup</button>
	<button type="reset" class="btn btn-warning">clear</button>
	</div>
	</div>
		<%
	List<SignupClass> signupList = (List<SignupClass>)request.getAttribute("csignupList");
	if(signupList==null) {
		signupList = new ArrayList<>();
		}
	int count = 1;
	for(SignupClass signup : signupList) {
		   %>
  	     <h3><%=count++%>.&nbsp;<%=signup.getUsername()%> - <span style="background: blue;"><%=signup.getGender()%></span></h3>
  	   <%
     }
     %>
	</form>
	</div>
</body>
</html>