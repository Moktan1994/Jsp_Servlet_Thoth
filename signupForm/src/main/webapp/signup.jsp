<%@page import="java.util.ArrayList"%>
<%@page import="com.signupForm.SignupClass"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Signup</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<header style="height:30px;background-color:yellow"></header>
<div class="container mt-4">
  <img alt="" style="height: 100px;" src="signup.jpg">
  <img alt="" style="height: 100px;" src="signup.jpg">
  <img alt="" style="height: 100px;" src="signup.jpg">
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
  	<input type="password" name="password" class="form-control">
  	<br>
  	<div class="form-group">
  	<label>Gender : </label>
  	<select class="form-group" name="gender">
  		<option>male</option>
  		<option>female</option>
  		<option>other</option>
  	</select>
  	<div class="form-group mt-2">
  		<button type="submit" class="btn btn-primary">signup</button>
  		<button type="reset" class="btn btn-danger">clear</button>

  	</div>
  	<hr>
  	<div>
  		<footer style="background-color:aliceblue;font-color:red">cookies contact</footer>
  		<footer style="background-color:aliceblue;font-color:red">contact</footer>
  	</div>

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
  	     <h3><%=count++%>.&nbsp;<%=signup.getUsername()%> - <span style="background: yellow;"><%=signup.getGender()%></span></h3>
  	   <%
     }
     %>
     </div>
  </form>
</div>
</body>
</html>