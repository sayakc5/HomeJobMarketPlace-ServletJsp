<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Sitter</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h3>Update Here !</h3>
<div class="col-xs-2">
<form action="UpdateSitter" method="post">
<label for="mid">Member Id:</label>
  <input class="form-control" name="memberId" type="text" value=<%=request.getAttribute("memberId") %> readonly="readonly"><br>
<label for="firstname">First Name:</label>
  <input class="form-control" name="firstName" type="text" value=<%=request.getAttribute("firstName") %>><br>
  <label for="lastname">Last Name:</label>
  <input class="form-control" name="lastName" type="text" value=<%=request.getAttribute("lastName") %>><br>
  <label for="phonenumber">Phone Number:</label>
  <input class="form-control" name="phoneNumber" type="text" value=<%=request.getAttribute("phoneNumber") %>><br>
  <label for="email">Email:</label>
  <input class="form-control" name="email" type="text" value=<%=request.getAttribute("email") %>><br>
  <label for="address">Address:</label>
  <input class="form-control" name="address" type="text" value=<%=request.getAttribute("address") %>><br>
  <label for="type">Type:</label>
  <input class="form-control" name="type" type="text" value=<%=request.getAttribute("type") %> readonly="readonly"><br>
  <label for="experience">Experience:</label>
  <input class="form-control" name="experience" type="text" value=<%=request.getAttribute("experience") %>><br>
  <label for="expectedpay">Expected Pay:</label>
  <input class="form-control" name="expectedPay" type="text" value=<%=request.getAttribute("expectedPay") %>><br>
   <input  type="submit" class="btn btn-primary btn-lg" value="Update">
</form>
</div>
</body>
</html>