<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@include file="./authentication.jsp"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INSERT USER</title>
</head>
<body>
	<%@include file="./header.jsp"%>

	<form method="post" action="./InsertRoleServlet"
		class="autentication">
		<h1 style="margin-left: 80px; margin-top: -25px;">Insert User</h1>
		<input type=text id="email" placeholder="Email" name="email_input"
			required> <input type="text" id="password"
			placeholder="Password" name="password_input" maxlength="50" required>
		<input type="text" id="firstname" placeholder="Firstname"
			name="firstname_input" required> <input type="text"
			id="lastname" placeholder="Lastname" name="lastname_input"
			maxlength="50" required> <input type="date" id="birthdate"
			placeholder="Birthdate" name="birthdate_input" required>
		<!--             <input type="number" id="role" placeholder="Role" name="role_input" required> -->
		<button type="submit" name="register" style="margin-left: 135px">Inserisci</button>
	</form>

</body>
</html>