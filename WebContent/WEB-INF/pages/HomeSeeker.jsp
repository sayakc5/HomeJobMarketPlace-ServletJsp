<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seeker Home</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<H1>Welcome to Home Job Market Place!!!!</H1>
<div><form action="ListAllSeeker" method="get">
<input type="submit" name="ListAllSeeker" value="View All Members" class="btn btn-info btn-md">
</form>
</div>
<br>
<div><form action="UpdateSeeker" method="GET">
<input type="submit" name="UpdateSeeker" value="Update Details" class="btn btn-info btn-md">
</form></div><br>
<div><form action="SearchByEmail" method="get">
<input type="submit" name="SearchByEmail" value="Search Member" class="btn btn-info btn-md">
</form></div><br>
<div><form action="DeleteMember" method="get">
<input type="submit" name="DeleteMember" value="Delete Account" class="btn btn-info btn-md">
</form></div><br>
<div><form action="CreateJob" method="GET">
<input type="submit" name="CreateJob" value="Create Job!" class="btn btn-info btn-md">
</form></div><br>
<div><form action="ListAllJobs" method="GET">
<input type="submit" name="ListAllJobs" value="View Jobs" class="btn btn-info btn-md">
</form></div><br>
<div><form action="DeleteJob" method="GET">
<input type="submit" name="DeleteJob" value="Delete Job" class="btn btn-info btn-md">
</form></div><br>

<div><form action="Logout" method="post">
<input type="submit" name="Logout" value="Logout" class="btn btn-info btn-md">
</form></div>

</body>
</html>