<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<%@ include file="/WEB-INF/header.jsp" %>
	<head>
<title>Contact Us</title>
</head>
	<body>
<br>
<form:form modelAttribute="billing">
		<table align="center">
		
		<tr>
			<td><form:hidden path="id"/></td>
		</tr>
		<tr>
			<td><form:label path="name">Recipient Name</form:label></td>
			<td><form:input path="name" pattern="[A-Za-z\s]+" title="Enter Name" required="true"/></td>
		</tr>
		<tr>
			<td><form:label path="address">Recipient Address</form:label></td>
			<td><form:textarea path="address" title="Enter Address" required="true"/></td>
		</tr>
		
		<tr>
			<td><form:label path="city">Recipient City</form:label></td>
			<td><form:input path="city" pattern="[A-Za-z\s]+" title="Enter City" required="true"/></td>
		</tr>
		
		<tr>
			<td><form:label path="contact">Contact</form:label></td>
			<td><form:input path="contact" pattern="[0-9]{10}" title="Enter Contact" required="true"/></td>
		</tr>
			
			
			<tr>
			    <td><a href="getAllCart?name=${username}" class="style">Back</a></td>
				<td><input name="_eventId_submit" type="submit" class="style" value="Order"></td>
			</tr>
		</table>
	</form:form>
	
<%@include file="/WEB-INF/footer.jsp" %>
	</body>
	</html>
	