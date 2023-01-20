<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@include file="./authentication.jsp"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INSERT ROLE</title>
<link rel="stylesheet" href="./style.css">
</head>
<body>
	<%@include file="./header.jsp"%>

	<form method="post" action="./InsertRoleServlet"
		class="autentication">
		<h1>Insert Role</h1>
		<input type=text id="label" placeholder="Label" name="label_input"
			required> <input type="text" id="description"
			placeholder="Description" name="description_input" maxlength="50" required>
		<input type="number" id="level" placeholder="Level"
			name="level_input" required> 
		<!--             <input type="number" id="role" placeholder="Role" name="role_input" required> -->
		<button type="submit" name="register">Inserisci</button>
	</form>

</body>
</html>