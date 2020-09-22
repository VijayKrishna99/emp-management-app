<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">
<div class="row">
<div class="col">
<form:form action="/empmanagementapp/addemp" method="post" modelAttribute="employee">
	
	<div class="form-group">
			<label for="id">Id</label>
			<form:input path="id" readonly="true" cssClass="form-control" ></form:input>
	</div>		
	<div class="form-group">
		   <label for="name">Name</label>
			<form:input path="name" cssClass="form-control"/>
			<form:errors path="name"></form:errors>
	</div>	
	<div class="form-group">
			<label for="email">Email</label>
			<form:input path="email" cssClass="form-control"/>
			<form:errors path="email"></form:errors>
	</div>	
	<div class="form-group">
			<label for="phoneno">Phone no</label>
			<form:input path="phoneno" cssClass="form-control"/>
			<form:errors path="phoneno"></form:errors>
	</div>
		
			<td><input type="submit" class="btn btn-primary" value="register"></td>
	
</form:form>
</div>	
</div>
</div>
</body>
</html>