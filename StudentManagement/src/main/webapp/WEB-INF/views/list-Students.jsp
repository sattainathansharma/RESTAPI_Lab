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
    
<title>Students Directory</title>
</head>

<body>
	
	<div class ="container">
		<h3>Students Directory</h3>
		<hr>
		
		<!--Add a search form -->
		
		<form action="/StudentManagement/student/search" class="form-inline">
		
			<!--Add a button>
			<a href = "/StudentManagement/student/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add Student </a>
			<a href = "/StudentManagement/Logout"
				class="btn btn-primary btn-sm mb-3 mx-auto"> Logout </a>
		</form>
		
		<table class= "table table-bordered table-striped">
			<thead class= "thead-dark">
				<tr>
				 	<th>FirstName</th>
					<th>LastName</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${Students}" var="tempStudent">
					<tr>
						<td><c:out value="${tempStudent.firstName}" /></td>
						<td><c:out value="${tempStudent.lastName}" /></td>
						<td><c:out value="${tempStudent.course}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>
						<td>
							<!--Add update button/link--> 
							<a href = /StudentManagement/student/showFormForUpdate?studentId=${tempStudent.id}"
							class="btn btn-info btn-sm"> Update </a>
							
							<!--Add update button/link-->
							<a href = /StudentManagement/student/delete?studentId=${tempStudent.id}"
							class="btn btn-danger btn-sm" onclick="if(!(confirm('Are you sure you want to delete this Student?')))return false">
							  Delete </a>
						</td>
						
						
					</tr>
						
				</c:forEach>
				
			</tbody>
			
		</table>
		
	</hr>
	
	</body>

</html>
						

		
		
		
		
		
