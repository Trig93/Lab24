<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<nav>
<a href="/vote">( Vote )</a><a href="/review">( Review )</a>
</nav>
<h1>PARTIES!</h1>
<table>
		<tr>
			<th>Name</th><th>Date</th>
		</tr>
	    <c:forEach items="${listofparties}" var="party">
	    <tr>
	    	<td><c:out value="${party.name}"/></td>
			<td><c:out value="${party.date}"/></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>