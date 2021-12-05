<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title >payment</title>


<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<Head>
<header align="center" class="w3-container w3-black">
  <h1>BabySitter Service</h1>
   
  	<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout"><input type="button" value="logout"
						id="userbutton" class="btn btn-danger navbar-btn""></a></li>
			</ul>

</header>
</Head>


<body>
<div  class="container">
	<div class="row-fluid">
      <form method="POST" action="/payment" class="form-horizontal">
        <fieldset>
          <div id="legend">
            <legend class="">Payment</legend>
          </div>
          
          <!-- Name -->
          <div class="control-group">
            <label class="control-label" path="nannyName" for="nannyName">Nanny name</label>
            <div class="controls">
              <input type="text" id="nannyName" path="nannyName" name="nannyName" placeholder="Nanny name" class="input-xlarge" Required="">
            </div>
          </div>
     
          <!-- Name -->
          <div class="control-group">
            <label class="control-label" path="ownerName"  for="ownerName">Your name</label>
            <div class="controls">
              <input type="text" id="ownerName" path="ownerName" name="ownerName" placeholder="Your name" class="input-xlarge"  Required="">
            </div>
          </div>
      
     
          <!-- Card Number -->
          <div class="control-group">
            <label class="control-label" for="number">Card Number</label>
            <div class="controls">
              <input type="text" id="number" name="number" placeholder="Card Number" class="input-xlarge"  Required="" autocomplete="off">
            </div>
          </div>
     
          <!-- Expiry-->
          <div class="control-group">
            <label class="control-label" for="password">Card Expiry Date</label>
            <div class="controls">
              <select class="span3" name="expiry_month" id="expiry_month"  Required="">
                <option></option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>1
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
              <select class="span2" name="expiry_year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
            </div>
          </div>
     
          <!-- CVV -->
          <div class="control-group">
            <label class="control-label" for="password_confirm">Card CVV</label>
            <div class="controls">
              <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="span2">
            </div>
          </div>
     
          <!-- Save card -->
          <div class="control-group">
            <div class="controls">
              <label class="checkbox" for="save_card">
                <input type="checkbox" id="save_card" value="option1">
                Save card on file?
              </label>
            </div>
          </div>
     
          <!-- Submit -->
          <div class="control-group">
            <div class="controls">
             <a href="/thankyou"><input type="submit" value="pay" class="w3-button w3-teal"></a>
            </div>
          </div>
          
   
     
        </fieldset>
      </form>
    </div>
</div>



		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</body>
</html>