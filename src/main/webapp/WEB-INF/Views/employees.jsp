<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
<div class="row"><div class="col">
	<h2>Employee management application</h2>
	<a class="btn btn-primary" role="button" href="/empmanagementapp/add">add employee</a>
	<div align="center">
		<table class="table table-sm table-hover ">
		<caption><h2>List of Users</h2></caption>
		<thead class="thead-dark">
		<tr>
			<th scope="col">id</th>
			<th scope="col">name</th>
			<th scope="col">Email</th>
			<th scope="col">phoneno</th>
			<th scope="col">edit</th>
			<th scope="col">remove</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="user" items="${userlist}">
			<tr>
				<th scope="row"><c:out value="${user.id}"></c:out></th>
				<td><c:out value="${user.name}"></c:out></td>
				<td><c:out value="${user.email}"></c:out></td>
				<td><c:out value="${user.phoneno}"></c:out></td>
				<td><a href="/empmanagementapp/edit?id=${user.getId()}">edit</a></td>
				<td><a href="/empmanagementapp/delete?id=${user.getId()}">remove</a></td>
			</tr>
		</c:forEach>
		</tbody>
		</table>
	</div>
</div>
</div>
</div>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
</html>