<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Edit Employee details</h2>
<form:form action="/empmanagementapp/editemp" method="post" modelAttribute="employeeedit">
	<table>
		<tr>
			<td>id</td>
			<td><form:input path="id" readonly="true"></form:input></td>
			<td><form:errors path="id"></form:errors>
		</tr>
		<tr>
			<td>Name</td>
			<td><form:input path="name"/></td>
			<td><form:errors path="name"></form:errors>
		</tr>
		<tr>
			<td>Email</td>
			<td><form:input path="email"/></td>
			<td><form:errors path="email"></form:errors>
		</tr>
		<tr>
			<td>phoneno</td>
			<td><form:input path="phoneno"/></td>
			<td><form:errors path="phoneno"></form:errors>
		</tr>
		<tr>
			<td><input type="submit" value="register"></td>
		</tr>

	</table>
</form:form>
</body>
</html>