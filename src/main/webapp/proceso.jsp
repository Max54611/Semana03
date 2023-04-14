<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresa ABC</title>
<%@ include file="encabezado.jsp" %>
</head>
<%@ page import="java.sql.*"  %>
<%@ page import="datos.Mantenimiento"  %>
<body>
<h2>Procesando Datos</h2>
<% 
	int cod=Integer.parseInt(request.getParameter("codigo"));
	String nom=request.getParameter("nombre");
	int can=Integer.parseInt(request.getParameter("cantidad"));
	double pre=Double.parseDouble(request.getParameter("precio"));
	Mantenimiento m=new Mantenimiento();
	boolean x=m.insertar(cod,nom,can,pre);
	if (x==true){
%>
	<strong>Producto registrado correctamente</strong>
	<%}else{ %>
	<strong>ERROR</strong>
	<%} %>
</body>
</html>