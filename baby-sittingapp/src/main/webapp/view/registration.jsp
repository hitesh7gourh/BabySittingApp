<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User</title>
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
<body>
<div class="bgimg w3-display-container w3-text-black">
<h1 align="center" style="margin-bottom:50px">Welcome to baby sitting services</h1>

<form:form method="POST" action="/reg" class="form-horizontal" modelAttribute="user">
<fieldset>
<!-- Form Name -->
<legend align="center">Registration Page</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="name" for="textinput">Name</label>  
  <div class="col-md-4">
  <input id="name" name="name" path="name" type="text" placeholder="Name" class="form-control input-md" >
   <form:errors path="name"/>
	
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="email" for="Generate Id" autocomplete="off">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" path="email" type="text" placeholder="email" class="form-control input-md"  required="">
    <form:errors path="email"/> 
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="password"  for="password">Password </label>
  <div class="col-md-4">
    <input id="password" path="password" name="password" type="password" placeholder="Password" class="form-control input-md" required="">
     <form:errors path="password"/>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="contact" for="Contact no.">Contact no.</label>  
  <div class="col-md-4">
  <input id="Contact" name="contact" path="contact" type="text" placeholder="Contact" class="form-control input-md" required="" autocomplete="off">
   <form:errors path="contact"/>
  </div>
</div>


<!-- Button -->
<div align="center" class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
   <button type="submit" id="singlebutton" name="singlebutton" class="btn btn-success">Register</button></a>
  </div>

</div>
<div  align="center">

<a href="/" >Welcome Page</a>
</div>


</fieldset>
</form:form>

  
  
</div>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</body>
</html>