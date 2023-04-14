<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import="java.sql.*" %>
<%@ page import="datos.Mantenimiento" %>
<title>RESULTADO DE BUSQUEDA</title>
<%@ include file="encabezado.jsp" %>
</head>
<body>
<% 
	Mantenimiento m=new Mantenimiento();
	String nom=request.getParameter("nombre");
	ResultSet data=m.consulta("select * from producto where nombre='"+nom+"'");
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