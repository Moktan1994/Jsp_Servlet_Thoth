<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <header  style="height: 30px;background-color: yellow;">
  </header>
  <div class="container mt-4">
  <img alt="" style="height: 200px;" src="https://cdn-icons-                                                      png.flaticon.com/512/295/295128.png">
  <img alt="" style="height: 200px;" src="https://cdn-icons-png.flaticon.com/512/295/295128.png">
  <img alt="" style="height: 200px;" src="https://cdn-icons-png.flaticon.com/512/295/295128.png">
  <hr/>
  <form action="login" method="post">
       <div style="width: 50%">
       <div class="form-group">
       		<label>Username</label>
       		<input type="text" name="username" class="form-control"/>
       </div>
       <div class="form-group">
       		<label>Password</label>
       		<input type="password" name="password" class="form-control"/>
       </div>
        <div class="form-group mt-2">
       		<button type="submit" class="btn btn-danger">Sign</button>
       		<button type="reset" class="btn btn-warning">Clear</button>
       </div>
       <hr/>
       <span style="color:blue;font-weight: bold;">${usa}</span>
       </div>
  </form>
</div>
</body>
</html>