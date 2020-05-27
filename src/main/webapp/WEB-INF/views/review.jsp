<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review Page</title>
</head>
<a href="/home">Back to Home</a>
<h1>PIZZA OPTIONS</h1>
<body>
<table>
		<tr>
			<th>Name</th><th>Description</th><th>Votes</th>
		</tr>
	    <c:forEach items="${listofpartyoptions}" var="partyoption">
	    <tr>
	    	<td><c:out value="${partyoption.name}"/></td>
			<td><c:out value="${partyoption.description}"/></td>
			<td><c:out value="${partyoption.votes}"/></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>