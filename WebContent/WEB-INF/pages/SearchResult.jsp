<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h3>Details:</h3>
<c:choose>
  <c:when test="${!empty seeker}">
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
<td>Number Of Children</td>
<td>Spouse Name</td>
</tr>
</thead>
<tbody>
<tr>
<td>${seeker.getId()}</td>
<td>${seeker.getFristName()}</td>
<td>${seeker.getLastName()}</td>
<td>${seeker.getPhoneNumber()}</td>
<td>${seeker.getEmail()}</td>
<td>${seeker.getAddress()}</td>
<td>${seeker.getType()}</td>
<td>${seeker.getNumberOfChildren()}</td>
<td>${seeker.getSpouseName()}</td>
</tr>
</tbody>
   </table>
  </c:when>
 <c:when test="${!empty sitter}">    
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
</tr>
</thead><tbody>
<tr>
<td>${sitter.getId()}</td>
<td>${sitter.getFristName()}</td>
<td>${sitter.getLastName()}</td>
<td>${sitter.getPhoneNumber()}</td>
<td>${sitter.getEmail()}</td>
<td>${sitter.getAddress()}</td>
<td>${sitter.getType()}</td>
<td>${sitter.getExperience()}</td>
<td>${sitter.getExpectedPay()}</td>
</tr>
</tbody>
</table>
  </c:when>
</c:choose>

</body>
</html>