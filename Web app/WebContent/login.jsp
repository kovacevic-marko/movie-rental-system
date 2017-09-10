<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Video klub | Login</title>
</head>

<body text="white">

<center>
<jsp:include page="/header_za_posetioce.jsp"></jsp:include>

<br><br><br>
<h3>Unesite vas ID da biste pristupili Korisnickoj stranici</h3>

<form action="Login" method="post">
Identifikacioni broj(ID): <input type="text" name="id" /> <input type="submit" value="Login">
</form>
</center>

</body>
</html>