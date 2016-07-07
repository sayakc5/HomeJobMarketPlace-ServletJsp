<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h3>Change Password!!</h3>
<div class="col-xs-2">
<form action="ChangePassword" method="post" onsubmit="return checkPassword()" >

<label for="memberid">Member Id:</label>
<input class="form-control" name="memberId" type="text"/><br>
<label for="oldpassword">Old Password:</label>
<input class="form-control" name="oldPassword" type="password"/><br>
<label for="newpassword">New Password:</label>
<input id="pass1" class="form-control" name="newPassword" type="password"/><br>
<label for="cpassword">Confirm Password:</label>
<input id="pass2" class="form-control" name="cPassword" type="password"/><br>
<input type="submit" name="ChangePassword" class="btn btn-info btn-md" value="Change Password!">
</form>
</div>
<script src="scripts/checkPassword.js"></script>
</body>
</html>