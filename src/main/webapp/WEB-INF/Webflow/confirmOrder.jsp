<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<%@ include file="/WEB-INF/header.jsp" %>
	<head>
<title>Contact Us</title>
</head>
	<body>
<br>
<h4>Confirm Your Order</h4>
<form:form>
<table>
<tr>
<th><input name="_eventId_submit" type="submit" value="Confirm Order"></th>
<th><input name="_eventId_backToSubmitInfo" type="submit" class="style" value="Re-enter Billing Details"></th>
</tr>
</table>
</form:form>
<%@include file="/WEB-INF/footer.jsp" %>
	</body>
	</html>
	