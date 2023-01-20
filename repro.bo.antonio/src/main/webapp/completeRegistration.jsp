<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>COMPLETE REGISTRATION</title>
</head>
<body>
	<%@include file="./header.jsp"%>

	<form method="post" action="./InsertRoleServlet"
		class="autentication">
		<h1>Imposta una nuova password: </h1>
		<input type="text" id="password" placeholder="Password" name="password_input" maxlength="50" required>
		<input type="text" id="password" placeholder="Password" name="confirmpassword_input" maxlength="50" required>
		<button type="submit" name="register">Invia</button>
	</form>

</body>
</html>