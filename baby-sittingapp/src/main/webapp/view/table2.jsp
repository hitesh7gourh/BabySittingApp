<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Customer Table</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
    .bs-example{
    	margin: 20px;
    }
</style>
<h1>Customer Request</h1>
   </head>
</head>
<body>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" >Baby Sitting</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/Admin">Admin Page</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/"><input type="button" value="Logout"
						id="userbutton" class="btn btn-danger navbar-btn""></a></li>
			</ul>
		</div>
	</nav>
<br>

<form class="form-horizontal" method="get" modelAttribute="nanny" >
		<fieldset>
<div class="bs-example">
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Owner Name</th>
                <th>Nanny Name</th>
              
            </tr>
        </thead>
        <tbody>
        <c:forEach items= "${booking}" var="booking">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.ownerName}</td>
                <td>${booking.nannyName}</td>
                
											
            </tr>
             	</c:forEach>
              
        </tbody>
    </table>
</div>
</body>
</html>