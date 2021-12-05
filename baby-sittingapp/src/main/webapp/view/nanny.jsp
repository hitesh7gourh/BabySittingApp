<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("nannyId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "babysitter1";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>BabyService</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
<header align="center" class="w3-container w3-black">
  <h1>BabySitter Service </h1>
   
  	<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout"><input type="button" value="Logout"
						id="userbutton" class="btn btn-danger navbar-btn""></a></li>
			</ul>

</header>
<body>

<body>

<div align="center" class="w3-container">
<div class="bgimg w3-display-container w3-text-black">
  <h2>Available Nanny</h2>
</div>
<br>
<div class="w3-row-padding">
<div class="bgimg w3-display-container w3-text-black">

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM nanny";

resultSet = statement.executeQuery(sql);


while(resultSet.next()){
	%>



<div class="w3-third w3-margin-bottom">
  <ul class="w3-ul w3-border w3-center w3-hover-shadow">
    <li class="w3-black w3-xlarge w3-padding-32"><%=resultSet.getString("id") %></li>
    <li class="w3-padding-16"><b>Name :-</b><b><%=resultSet.getString("name") %></b> </li>
    <li class="w3-padding-16"><b>Email :-</b><b><%=resultSet.getString("email") %></b> </li>
    <li class="w3-padding-16"><b>Qualification :-</b><b><%=resultSet.getString("qualification") %></b> </li>
    <li class="w3-padding-16"><b>Contact no :-</b><b><%=resultSet.getString("contact") %></b> </li>
         <li class="w3-padding-16"><b>Experience :-</b><b><%=resultSet.getString("experience") %></b>years </li>
     
    <li class="w3-padding-16">
      <h2 class="w3-wide">Rs:- <b><%=resultSet.getString("charge") %></b></h2>
      <span class="w3-opacity">per month</span>
    </li>
    <li class="w3-light-grey w3-padding-24">
  
       <a href="/payment"><button class="w3-button w3-green w3-padding-large">Book</button></a>
       </li>
  </ul>
</div>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</div>
</html> 