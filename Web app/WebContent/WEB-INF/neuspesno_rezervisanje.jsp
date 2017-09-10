<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Video klub | Neuspesno rezervisanje</title>
</head>
<body text="white">

<center>

<jsp:include page="/WEB-INF/header_za_korisnike.jsp" />

<br><br>
<h2>Rezervisi film</h2>

<br><br>
<h1>Doslo je do greske!</h1>
<h3>Uneli ste nevazeci ID filma ili je izabrani film vec iznajmljen(rezervisan).</h3>
<h3>Molimo vas pokusajte</h3>
<form action="Korisnicka_stranica" method="post">
	<input type="submit" name=dugme value="PONOVO" />
</form>

</center>

</body>
</html>