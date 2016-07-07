<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h3>Please Login to Continue...</h3><br><br>
<form action="loginServlet" method="post">
<div class="col-xs-2">
      <label for="userid">User Id:</label>
      <input class="form-control" name="userId" type="text">
    </div>
<div class="col-xs-3">
      <label for="userpass">User Password:</label>
      <input class="form-control" name="userPass" type="password">
    </div><br>
<div align="left">
<input  type="submit" class="btn btn-primary btn-lg" value="Login"><br>
</div>
</form>
<a href="regServlet">Register Here!</a>
<a href="ChangePassword">Change Password!</a>

<% String membershipid=(String)request.getAttribute("membershipId");
	if(membershipid!=null)
		out.println("<script>alert(\"Your Membership Id is:"+membershipid+"\");</script>");
	membershipid="";
%>
</body>
</html>