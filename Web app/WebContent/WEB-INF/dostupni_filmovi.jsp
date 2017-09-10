<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page
import="java.sql.Connection"
import="java.sql.DriverManager"
import="java.sql.ResultSet"
import="java.sql.SQLException"
import="java.sql.Statement"
 %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Video klub | Dostupni filmovi</title>

<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

</style>

</head>
<body text="white">

<%
String db_url = "jdbc:mysql://kovacevicm.com:3306/kovacevi_videoklub";
String user = "kovacevi_videoklubkorisnik";
String password = "sIFRA123";

String sql = "SELECT * FROM Film WHERE dostupno='da' AND rezervisano='ne';";
ResultSet rs = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = DriverManager.getConnection(db_url, user, password);
	Statement stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	
}
catch(SQLException e){
	System.out.println(e.getMessage());
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>


<center>
<jsp:include page="/WEB-INF/header_za_korisnike.jsp" />

<br><br>
<h2>Dostupni filmovi</h2>


<div style="width:80%; max-height:500px; overflow:scroll">
	<table> 
		<tr>  <th>ID</th> <th>Naslov</th> <th>Zanr</th> <th>Opis</th> <th>Godina izdanja</th> <th>Jezik</th> <th>Ocena</th> <th>Trajanje(minuti)</th> <th>Glavni glumci</th>   </tr>
		
		<%while(rs.next()){ %>
			<tr>  <td><%=rs.getInt("id")%></td> <td><%=rs.getString("naslov") %></td> <td><%=rs.getString("zanr")%></td> <td><%=rs.getString("opis")%></td> <td><%=rs.getString("godina_izdanja")%></td> <td><%=rs.getString("jezik")%></td> <td><%=rs.getDouble("ocena_imdb")%></td> <td><%=rs.getString("trajanje_minuti")%></td> <td><%=rs.getString("glavni_glumci")%></td>  </tr>
		<%} %>
		
	
	</table>
</div>

</center>

</body>
</html>