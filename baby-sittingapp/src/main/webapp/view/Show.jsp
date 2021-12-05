<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>BabyService</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
<header class="w3-container w3-teal">
  <h1>BabySitter Service</h1>
    <a href="/"> <button class="w3-button w3-section w3-green w3-ripple "> Log Out </button>
</header>
<body>



<form:form class="form-horizontal"  modelAttribute="nanny" >
<div class="w3-container">
  <h2>Available Nanny</h2>
</div>
<br>

<div class="w3-row-padding">

<div class="w3-row-padding">

<div class="w3-third w3-margin-bottom">
	< items= "${nanny}" var="nanny">
<% 	<while(nanny.next())>{
  <ul class="w3-ul w3-border w3-center w3-hover-shadow">
  
    <li class="w3-black w3-xlarge w3-padding-32" id="name"  path="name" value="${nanny.name}" >${nanny.name}</li>
    <li class="w3-padding-16" id="email" path="email" value="${nanny.email}"><b>10GB</b> ${nanny.email}</li>
    <li class="w3-padding-16" id="contact" path="contact" value="${nanny.contact}"><b>10</b> ${nanny.contact}</li>
    <li class="w3-padding-16" id="qualification" path="qualification" value="${nanny.qualification}">><b>10</b> ${nanny.qualification}</li>
    <li class="w3-padding-16"><b>Endless</b> Support</li>
    <li class="w3-padding-16">
      <h2 class="w3-wide">$ 10</h2>
      <span class="w3-opacity">per month</span>
    </li>
    <li class="w3-light-grey w3-padding-24">
      <button class="w3-button w3-green w3-padding-large">Sign Up</button>
    </li>

  </ul>
  %>
</div>
</div>
</form:form>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</div>

</body>
</html> 