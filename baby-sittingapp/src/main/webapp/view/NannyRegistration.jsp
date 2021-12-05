<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NannyRegistration</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"rel="stylesheet">


<style>
body,h1,h5 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('https://www.kindpng.com/picc/m/169-1695691_teardrop-drawing-draw-baby-easy-to-draw-hd.png');
  min-height: 100%;
  background-position: center;
  background-size: ;
}
</style>






</head>


<body>

<div class="bgimg w3-display-container w3-text-teal">
<h1 align="center" style="margin-bottom:50px">Welcome to baby sitting services</h1>

<form:form method="POST" action="/NannyRegistration" class="form-horizontal" modelAttribute="nanny">
<fieldset>
<!-- Form Name -->
<legend align="center">Nanny Registration Page</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="name" for="textinput">Name</label>  
  <div class="col-md-4">
  <input id="name" name="name" path="name" type="text" placeholder="Name" class="form-control input-md" required="">
        <form:errors path="name"/>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="email" for="Generate Id">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" path="email" type="email" placeholder="email" class="form-control input-md" required="">
     <form:errors path="email"/>
    
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="contact" for="Contact no.">Contact no.</label>  
  <div class="col-md-4">
  <input id="Contact" name="contact" path="contact" type="text" placeholder="Contact" class="form-control input-md" required="">
     <form:errors path="contact"/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="qualification" for="textinput">Qualification </label>  
  <div class="col-md-4">
  <input id="qualification"  path="qualification" name="qualification" type="text" placeholder="qualification" class="form-control input-md" required="">
     <form:errors path="qualification"/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="experience" for="textinput">Experience </label>  
  <div class="col-md-4">
  <input id="charge"  path="experience" name="experience" type="text" placeholder="experience" class="form-control input-md" required="">
     <form:errors path="experience"/>
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="charge" for="textinput">FEE </label>  
  <div class="col-md-4">
  <input id="charge"  path="charge" name="charge" type="text" placeholder="charge" class="form-control input-md" required="">
    		            <form:errors path="charge"/>
    
  </div>
</div>


<!-- Button -->
<div  align="center" class="form-group">
  <label    class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
   <button type="submit" id="singlebutton" name="singlebutton" class="btn btn-success">Register</button></a>
  </div>
</div>

</fieldset>
</form:form>

<!-- Button -->
<div align="center" class=form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
     <a href="/">Welcome Page?</button></a>
  </div>
</div>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</body>
</html>