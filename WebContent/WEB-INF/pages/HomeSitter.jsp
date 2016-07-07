<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sitter Home</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<H1>Welcome to Home Job Market Place!!!!</H1>
<form action="ListAllSitter" method="get">
<input type="submit" name="ListAllSitter" value="View All Members" class="btn btn-info btn-md">
</form><br>
<form action="UpdateSitter" method="GET">
<input type="submit" name="UpdateSitter" value="Update Details" class="btn btn-info btn-md">
</form><br>
<form action="SearchByEmail" method="GET">
<input type="submit" name="SearchByEmail" value="Search Member!" class="btn btn-info btn-md">
</form><br>
<form action="DeleteMember" method="get">
<input type="submit" name="DeleteMember" value="Delete Account" class="btn btn-info btn-md">
</form><br>
<form action="ListAllJobs" method="GET">
<input type="submit" name="ListAllJobs" value="View Jobs" class="btn btn-info btn-md">
</form><br>
<form action="CreateApplication" method="GET">
<input type="submit" name="CreateApplication" value="Apply for Job" class="btn btn-info btn-md">
</form><br>
<form action="ListAllApplications" method="GET">
<input type="submit" name="ListAllApplications" value="View Applications" class="btn btn-info btn-md">
</form><br>
<form action="DeleteApplication" method="GET">
<input type="submit" name="DeleteApplication" value="Delete Application" class="btn btn-info btn-md">
</form><br>
<div><form action="Logout" method="post">
<input type="submit" name="Logout" value="Logout" class="btn btn-info btn-md">
</form></div>
</body>
</html>