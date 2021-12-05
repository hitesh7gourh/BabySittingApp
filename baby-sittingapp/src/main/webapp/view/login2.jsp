<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title >hitesh</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
<style>
body,h1,h5 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('https://www.kindpng.com/picc/m/169-1695691_teardrop-drawing-draw-baby-easy-to-draw-hd.png');
  min-height: 100%;
  background-position: center;
  background-size: cover;
}
</style>


</head>
<body align="center">
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Baby Sitting</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active" ><a href="/">Welcome</a></li>
			</ul>
			
		</div>
	</nav>
<div class="bgimg w3-display-container w3-text-black">
  <div class="w3-display-middle w3-jumbo">
    <p>Baby Sitting Services</p>
  </div>
<h1 align="center" style="margin-bottom:50px">Welcome to baby sitting services</h1>

<form method="POST" action="/login2" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend align="center">Admin Login Page</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="email" for="textinput">Email Id</label>  
  <div class="col-md-4">
  <input id="email" name="email" path="email" type="text" placeholder="your Email" class="form-control input-md" required>
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="password" for="password">Password </label>
  <div class="col-md-4">
    <input id="password" path="password" name="password" type="password" placeholder="enter your password" class="form-control input-md" required>
    
  </div>
</div>

<!-- Button -->
<div style="margin-left: px" class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton"  class="btn btn-success">Login</button>
  </div>
</div>
 


</div>
</fieldset>
</form>



		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>