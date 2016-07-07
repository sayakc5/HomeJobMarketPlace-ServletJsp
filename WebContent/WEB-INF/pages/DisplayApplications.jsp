<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applications</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h3>List of All Applications</h3>
<table class="table table-striped">
<thead>
    <tr>
<td>Application Id</td>
<td>Job Id</td>
<td>Member Id</td>
<td>Expected Pay</td>
</tr>
</thead>
<tbody>
<c:forEach items="${applications}" var ="a">
<tr>
<td>${a.getId()}</td>
<td>${a.getJobId()}</td>
<td>${a.getMemberId()}</td>
<td>${a.getExpectedPay()}</td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>