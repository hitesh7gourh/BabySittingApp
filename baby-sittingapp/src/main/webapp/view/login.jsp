<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title >login</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
<style>
body,h1,h5 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('https://i.pinimg.com/originals/d5/f9/c6/d5f9c69ed498ba4d243a2b8db0b1588f.gif');
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
				<li class="active"><a href="/">Welcome</a></li>
			</ul>
		
		</div>
	</nav>
<div class="bgimg w3-display-container w3-text-black">
  <div class="w3-display-middle w3-jumbo">
    <p>Baby Sitting Services</p>
  </div>
<h1 align="center" style="margin-bottom:50px">Welcome to baby sitting services</h1>

<form:form method="POST" action="/login" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend align="center">Login Page</legend>

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
<div style="margin-left:" class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton"  class="btn btn-success">Login</button>
  </div>
</div>
 
<p align="center">New User?</p>
<a href="/reg" >Register here.</a>

</div>
</fieldset>
</form:form>





		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>