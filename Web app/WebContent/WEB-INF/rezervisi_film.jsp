<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Video klub | Rezervisi film</title>
</head>
<body text="white">

<center>

<jsp:include page="/WEB-INF/header_za_korisnike.jsp" />

<br><br>
<h2>Rezervisi film</h2>


<i>*Pre nego sto rezervisete film molimo vas pogledajte da li je on dostupan u delu sajta "Dostupni filmovi".</i>
<br><i>*Dozvoljeno je SAMO JEDNO iznajmljivanje filma u periodu od 24h.</i>

<br><br><br><br>
<form action="Rezervisi_filmServlet" method="post">
	Unesite id filma: <input type="text" name="id_filma" />
					  <input type="submit" value="Rezervisi" />
</form>

</center>

</body>
</html>