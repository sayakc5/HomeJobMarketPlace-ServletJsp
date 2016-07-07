<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Application</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h3>Application Form!!</h3>
<div class="col-xs-2">
<form action="CreateApplication" method="post">
<label for="jobid">Job Id:</label>
<input class="form-control" name="jobId" type="text"/> <br>
<label for="memberid">Member Id:</label>
<input class="form-control" name="memberId" type="text" value=<%=session.getAttribute("MEMBERID") %> readonly="readonly"/><br>
<label for="expectedpay">Expected Pay:</label>
<input class="form-control" name="expectedPay" type="text"/><br>
<input type="submit" name="CreateApplication" class="btn btn-info btn-md" value="Create Application!">
</form>
</div>
</body>
</html>