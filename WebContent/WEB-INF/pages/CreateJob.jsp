<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Seeker</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<link rel="stylesheet" type="text/css" href="dist/bootstrap-clockpicker.min.css">
<script>
    $(document).ready(function(){
      var start_date=$('input[name="startDate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      start_date.datepicker(options);
    })
</script>
<script>
    $(document).ready(function(){
      var end_date=$('input[name="endDate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      end_date.datepicker(options);
    })
</script>
<script type="text/javascript" src="dist/bootstrap-clockpicker.min.js"></script>
</head>
<body>
<div class="bootstrap-iso">
 <div class="container-fluid">
  <div class="row">
   <div class="col-md-6 col-sm-6 col-xs-12">
   <h3>Please fill Job Details!</h3>
<form action="CreateJob" method="post">
<!--  jQuery -->
<label for="jobtitle">Enter Job Title:</label>
  <input class="form-control" name="jobTitle" type="text"><br>
<label for="memberid">Enter Your Member Id:</label>
  <input class="form-control" name="memberId" type="text" value=<%=session.getAttribute("MEMBERID") %> readonly="readonly"><br>
<div class="form-group"> <!-- Date input -->
        <label class="control-label" for="date">Enter Start Date:</label>
        <input class="form-control" id="startDate" name="startDate" placeholder="MM/DD/YYYY" type="text"/>
      </div><br><br>
      <div class="form-group"> <!-- Date input -->
        <label class="control-label" for="date">Enter End Date:</label>
        <input class="form-control" id="endDate" name="endDate" placeholder="MM/DD/YYYY" type="text"/>
      </div><br><br>
       
      <div class="input-group clockpicker">
    Enter Start Time:<input name="startTime" type="text" class="form-control" value="18:00">
    <span class="input-group-addon">
        <span class="glyphicon glyphicon-time"></span>
    </span>
</div><br><br>
<script type="text/javascript">
$('.clockpicker').clockpicker({
    placement: 'top',
    align: 'left',
    donetext: 'Done'
});
</script>
<!-- Enter Start Time:<input name="startTime"><br><br> -->
<!-- Enter End Time:<input name="endTime"><br><br> -->

<div class="input-group clockpicker">
    Enter End Time:<input name="endTime" type="text" class="form-control" value="18:00">
    <span class="input-group-addon">
        <span class="glyphicon glyphicon-time"></span>
    </span>
</div><br><br>
<script type="text/javascript">
$('.clockpicker').clockpicker({
    placement: 'top',
    align: 'left',
    donetext: 'Done'
});
</script>
<label for="payperhour">Enter Pay Per Hour:</label>
  <input class="form-control" name="payPerHour" type="text"><br>
  <input  type="submit" class="btn btn-primary btn-lg" value="Create Job">
</form>
</body>
</html>