<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<body>
<%@ include file="/WEB-INF/header.jsp" %>
	<h2>Payment</h2>
    <h3 align="center">Total = ${Total}</h3>
    <h3 align="center">Username = ${name}</h3>
	<form:form modelAttribute="payment">
		<table align="center">
		
		   <tr>
				<td><form:label path="ctype">Card type</form:label></td>
				<td>
                     <form:select path="exdate">
                         <form:option value="Select a Card" cssStyle="width:160%" required="true"></form:option>
                         <form:option value="Debit Card">Debit Card</form:option>
                          <form:option value="Credit Card">Credit Card</form:option>
                     </form:select>
                </td>
			</tr>
			
			<tr>
				<td><form:label path="cno">Card Number</form:label></td>
				<td><form:input path="cno" pattern="[0-9]{16}" title="Enter 16-Digit Card Number" required="true"/></td>
			</tr>
			
			<tr>
				<td><form:label path="cname">Card Holder Name</form:label></td>
				<td><form:input path="cname" pattern="[A-Z\s]+" title="Enter Card Holder Name in UpperCase" required="true"/></td>
			</tr>
			
			<tr>
				<td><form:label path="exdate">Expiry Date</form:label></td>
			       <td>
                     <form:select path="exdate">
                         <form:option value="Select Month" cssStyle="width:160%" required="true"></form:option>
                         <form:option value="Jan">Jan</form:option>
                          <form:option value="Feb">Feb</form:option>
                          <form:option  value="Mar">Mar</form:option>
                          <form:option  value="Apr">Apr</form:option>
                          <form:option  value="May">May</form:option>
                          <form:option  value="Jun">Jun</form:option>
                          <form:option  value="Jul">Jul</form:option> 
                          <form:option  value="Aug">Aug</form:option> 
                          <form:option  value="Sep">Sep</form:option> 
                          <form:option  value="Oct">Oct</form:option>
                          <form:option  value="Nov">Nov</form:option>
                          <form:option  value="Dec">Dec</form:option>                   
                     </form:select> 
                     <form:select path="exdate">
                         <form:option value="Select Year" cssStyle="width:160%" required="true"></form:option>
                         <form:option value="2027">2027</form:option>
                         <form:option value="2026">2026</form:option>
                         <form:option value="2025">2025</form:option>
                         <form:option value="2024">2024</form:option>
                         <form:option value="2023">2023</form:option>
                         <form:option value="2022">2022</form:option>
                         <form:option value="2021">2021</form:option>
                         <form:option value="2020">2020</form:option>
                          <form:option value="2019">2019</form:option>
                          <form:option  value="2018">2018</form:option>
                          <form:option  value="2017">2017</form:option>
                          <form:option  value="2016">2016</form:option>
                                         
                     </form:select> 
                  </td>
                  
			</tr>
			
			<tr>
				<td><form:label path="cvno">CVV</form:label></td>
				<td><form:password path="cvno" pattern="[1-9]{3}" title="Enter 3-Digit CVV Number" required="true"/></td>
			</tr>
			<tr>
				<td><input name="_eventId_submit" type="submit" class="style" value="Proceed Payment">
				<td><input name="_eventId_back" type="submit" class="style" value="Back">
			</tr>
			
		</table>

	</form:form><br><br><br><br><br>

<%@ include file="/WEB-INF/footer.jsp" %>
</body>
</html>