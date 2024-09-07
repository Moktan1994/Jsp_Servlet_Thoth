<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="registerForm" method="post">
		Name : <input type="text" name="name1"><br><br>
		Email : <input type="text" name="email1"><br><br>
		Password : <input type="text" name="pass1"><br><br>
		Gender : <input type="radio" name="gender1" value="Male">Male<input type="radio" name="gender1" value="Female">Famale<br><br>
		City : <select name="city1">
					<option>Select City</option>
					<option>New York</option>
					<option>Washington DC</option>
					<option>California</option>
					<option>Texas</option>
					<option>Boston</option>
				</select><br><br>
			<input type="submit" value="Register">
	</form>

</body>
</html>