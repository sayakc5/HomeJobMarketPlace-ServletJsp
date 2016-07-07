<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="com.apostek.HomeJobMarketPlace.entity.Seeker" %>
     <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Sitters</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h3>List of All Sitters</h3>
<table class="table table-striped">
<thead>
    <tr>
<td>MemberId</td>
<td>First Name</td>
<td>Last Name</td>
<td>Phone Number</td>
<td>Email</td>
<td>Address</td>
<td>Type</td>
<td>Experience</td>
<td>Expected Pay</td>
</tr></thead>
<tbody>
<c:forEach items="${listAllSitters}" var ="s">
<tr>
<td>${s.getId()}</td>
<td>${s.getFristName()}</td>
<td>${s.getLastName()}</td>
<td>${s.getPhoneNumber()}</td>
<td>${s.getEmail()}</td>
<td>${s.getAddress()}</td>
<td>${s.getType()}</td>
<td>${s.getExperience()}</td>
<td>${s.getExpectedPay()}</td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>