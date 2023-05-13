<%a page language = "java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%a taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	  content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
    
<title>Save Student</title>
</head>

<body>

	<div class ="container">
	
		<h3>Students Directory</h3>
		<hr>
		
		<p class="h4 mb-4"> Student </p>
		
		<form action="/StudentManagement/student/save" method="POST">
		
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value = "${Stduent.id}"/>
			
			<div class = "form-inline">
				<input type="text" name="firstName" value="${Student.firstName}"
					class="form-control mb-4 col-4" placeholder="FirstName">
					
			</div>
			
			<div class = "form-inline">
				<input type="text" name="lastName" value="${Student.lastName}"
					class="form-control mb-4 col-4" placeholder="LastName">
					
			</div>
			
			<div class = "form-inline">
				<input type="text" name="course" value="${Student.course}"
					class="form-control mb-4 col-4" placeholder="Course">
					
			</div>
			
			<div class = "form-inline">
				<input type="text" name="country" value="${Student.country}"
					class="form-control mb-4 col-4" placeholder="Country">
					
			</div>
			
			<button type="submit" class ="btn btn-info col-2">Save</button>
			
		</form>
		
		<hr>
		<a href = "/StudentManagement/student/list"> Back to Students List </a>
		
	</div>
	
</body>
</html>	 	
				