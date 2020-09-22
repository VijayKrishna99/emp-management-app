<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/empmanagementapp/add">add employee</a>
<table>
<thead>
	<tr>
	<th>emp id</th>
	<th>emp name</th>
	<th>emp email</th>
	<th>emp phone</th>
	<th>edit</th>
	<th>delete</th>
	</tr>
</thead>
<tbody>
<c:forEach var="employee" items="${employees}" >
	<tr>
		<td><c:out value="${employee.id}"/></td>
		<td><c:out value="${employee.name}"/></td>
		<td><c:out value="${employee.email}"/></td>
		<td><c:out value="${employee.phone}"/></td>
		<td><c:url value="http://localhost:8080/empmanagementapp/edit" var="myurl">
				<c:param name="id" value="${employee.id}"></c:param>
			</c:url><a href="${myurl}">edit</a>
		</td>
		<td><c:url value="http://localhost:8080/empmanagementapp/delete" var = url>
				<c:param name="id" value="${employee.id}"></c:param>
			</c:url><a href="${url}">delete</a>}
		</td>
	</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>