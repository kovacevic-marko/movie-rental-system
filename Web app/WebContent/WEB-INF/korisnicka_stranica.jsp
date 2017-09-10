<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Video klub | Korisnicka stranica</title>
</head>
<body text="white">

<center>

<jsp:include page="/WEB-INF/header_za_korisnike.jsp" />

<br><br><br>
<h3><%=request.getSession().getAttribute("imeiprezime") %> , dobrodosli na korsnicku stranicu!</h3>
<h4>Ovde mozete da rezervisete vas film,rezervacija traje 24h.</h4>
</center>

</body>
</html>