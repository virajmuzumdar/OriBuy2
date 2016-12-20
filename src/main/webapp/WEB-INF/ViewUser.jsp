<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>View User</title>
</head>
<body>
<%@ include file="header.jsp"%>
	<h2 align="center">View Users</h2>
	<div align="center">
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Number</th>
			<th>Password</th>
			<th>Username</th>
			<th>Role</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="user" items="${list}">
			<tr>
				<td>${user.id}</td>
				<td>${user.fName}</td>
				<td>${user.lName}</td>
				<td>${user.number}</td>
				<td>${user.password}</td>				
				<td>${user.userName}</td>
				<td>${user.role}</td>
				<td><a href="edituser?id=${user.id}">Edit</a></td>
				<td><a href="deleteuser?id=${user.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<br />
	<a href="NewUser">Add New Users</a>

	<%@include file="footer.jsp"%>
</body>
</html>
