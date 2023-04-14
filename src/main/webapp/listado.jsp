<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import="java.sql.*" %>
<%@ page import="datos.Mantenimiento" %>
<title>Reporte de productos</title>
<%@ include file="encabezado.jsp" %>
</head>
<body>
<% 
	Mantenimiento m=new Mantenimiento();
	ResultSet data=m.consulta("select * from producto");
%>
	<table>
	<% while(data.next()){ %>
		<tr>
			<td><%=data.getInt(1)%></td>
			<td><%=data.getString(2)%></td>
			<td><%=data.getInt(3)%></td>
			<td><%=data.getDouble(4)%></td>
		</tr>
	<%} %>
	</table>
</body>
</html>