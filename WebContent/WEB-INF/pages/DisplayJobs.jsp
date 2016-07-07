<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Jobs</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h3>List of All Jobs</h3>
<table class="table table-striped">
<thead>
    <tr>
<td>Job Id</td>
<td>Job Title</td>
<td>Member Id</td>
<td>Start Date</td>
<td>End Date</td>
<td>Start Time</td>
<td>End Time</td>
<td>Pay Per Hour</td>
</tr>
</thead>
<tbody>
<c:forEach items="${jobs}" var ="j">
<tr>
<td>${j.getId()}</td>
<td>${j.getTitle()}</td>
<td>${j.getMemberId()}</td>
<td>${j.getStartDate()}</td>
<td>${j.getEndDate()}</td>
<td>${j.getStartTime()}</td>
<td>${j.getEndTime()}</td>
<td>${j.getPayPerHour()}</td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>