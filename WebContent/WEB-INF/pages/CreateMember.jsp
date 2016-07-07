<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <!--  <script type="text/javascript" src="jquery-3.0.0.min.js"></script> --> 
</head>
<body>
<h3>Register Here !</h3>
<div class="col-xs-2">
<form action="regServlet" method="post" onsubmit="return checkPassword()">
<label for="firstname">First Name:</label>
  <input class="form-control" name="firstName" type="text"><br>
  <label for="lastname">Last Name:</label>
  <input class="form-control" name="lastName" type="text"><br>
  <label for="phonenumber">Phone Number:</label>
  <input class="form-control" name="phoneNumber" type="text"><br>
  <label for="email">Email:</label>
  <input class="form-control" name="email" type="text"><br>
  <label for="address">Address:</label>
  <input class="form-control" name="address" type="text"><br>
  
<p><b>Type of Member:</b></p><select id="selectType" name="type" height="30px" style="width: 90px" onchange="divShowing()">
	 <option>Select</option>
     <option value="seeker">SEEKER</option>
     <option value="sitter">SITTER</option></select><br><br>
  <div id="seekercontent" style="display:none">
  <label for="numberofchildren">Number Of Children:</label>
  <input class="form-control" name="numberOfChildren" type="text">
  <label for="spousename">Spouse Name:</label>
  <input class="form-control" name="spouseName" type="text"><br>
  </div>
  <div id="sittercontent" style="display:none">
  <label for="experience">Experience:</label>
  <input class="form-control" name="experience" type="text">
  <label for="expectedpay">Expected Pay:</label>
  <input class="form-control" name="expectedPay" type="text"><br>
  </div>
  <label for="password">Password:</label>
  <input id="pass1" class="form-control" name="password" type="password"><br>
  <label for="cpassword">Confirm Password:</label>
  <input id="pass2" class="form-control" name="cpassword" type="password"><br>
  <input  type="submit" class="btn btn-primary btn-lg" value="Register">
</form>
</div>
<script src="scripts/divShowing.js"></script>
<script src="scripts/checkPassword.js"></script>
</body>
</html>