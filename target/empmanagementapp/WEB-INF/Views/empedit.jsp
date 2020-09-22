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
<form:form method="/empmanagementapp/edit" method="post" modelAttribute="employeeedit">
	<table>
		<tr>
			<td><form:label path="id">Id</form:label></td>
			<td><form:input path="id" disabled="true"></form:input></td>
			<td><form:errors path="id"></form:errors>
		</tr>
		<tr>
			<td><form:label path="name" >Name</form:label></td>
			<td><form:input path="name"/></td>
			<td><form:errors path="name"></form:errors>
		</tr>
		<tr>
			<td><form:label path="email">Email</form:label></td>
			<td><form:input path="email"/></td>
			<td><form:errors path="email"></form:errors>
		</tr>
		<tr>
			<td><form:label path="phone">Phone</form:label></td>
			<td><form:input path="phone"/></td>
			<td><form:errors path="phone"></form:errors>
		</tr>
		<tr>
			<td><input type="submit" value="register"></td>
		</tr>

	</table>
</form:form>
</body>
</html>