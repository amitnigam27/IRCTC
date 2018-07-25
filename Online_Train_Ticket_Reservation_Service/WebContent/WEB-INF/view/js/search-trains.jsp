<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search For Trains</title>
</head>
<body style="color: blue">
	<h1>Fill this Form to get Your Trains</h1>

	<form:form action="processForm" modelAttribute="storage">
Source: &nbsp&nbsp&nbsp&nbsp <form:input path="source" />
		<br />
		<br />
Destination:&nbsp&nbsp&nbsp&nbsp <form:input path="destination" />
		<br />
		<br />
Journey Date(mm-dd-yyyy):&nbsp&nbsp&nbsp&nbsp<%--  <form:input path="jdate" /> --%>

<input type="text" path="jdate" class= "date" name = "jdate" value = "<fmt:formatDate value="" pattern="MM-dd-yyyy" />"/>

		<br />
		<br />
Class: &nbsp&nbsp&nbsp&nbsp <form:select path="tclass" />
	//	<select id="tclass" name="tclass">
			<option value="1AC">1AC</option>
			<option value="2AC">2AC</option>
			<option value="3AC">3AC</option>
			<option value="SL">SL</option>
<option value="ALL">ALL</option>

		//</select>
		<br />
		<br />

                                     
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input
			type="submit" value="Search for Trains" />
	</form:form>





















</body>
</html>