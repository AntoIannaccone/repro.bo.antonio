<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String utente="";
String utenteLoggato="";
if(session.getAttribute("userLoggedEmail")==null){
	utente = "ACCESSO NON EFFETTUATO";
	utenteLoggato = "";
}else{
	utente = "ACCESSO EFFETTUATO COME :";
	utenteLoggato = "" + session.getAttribute("userLoggedEmail");
}
%>   


<div class="topnav">
  <a href="./users.jsp">Lista Utente</a>
  <a href="./insertUser.jsp">Inserisci Utente</a>
  <a href="./roles.jsp">Lista Ruoli</a>
  <a href="./insertRole.jsp">Inserisci Ruoli</a>
  <a href="./LogoutServlet">Log Out</a>
</div> 
  <h2><%= utente%> <%= utenteLoggato%></h2>

    