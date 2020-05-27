<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote Page</title>
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
			<td><c:out value="${partyoption.votes}"/><form action="/add-vote"><a href="/add-vote">VOTE</a></form></td>
		</tr>
		</c:forEach>
	</table>
	<h2>Add an Option!</h2>
	<form action="/submit-add-option">
	<p>
		<label>Name</label> <input />
	</p>
	<p>
		<label>Description</label> <input />
	</p>
	<p>
		<button type="submit">Submit</button>
	</p>
</form>
	
</body>
</html>