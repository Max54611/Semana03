<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
</head>
<body>
<h2>ABC- REGISTRO PRODUCTO</h2>
<form action="proceso.jsp">
	<table>
		<tr>
			<td>Codigo</td>
			<td><input type="number" name="codigo" value=""></td>
		</tr>
		<tr>
			<td>Nombre</td>
			<td><input type="text" name="nombre" value=""></td>
		</tr>
		<tr>
			<td>Cantidad</td>
			<td><input type="number" name="cantidad" value=""></td>
		</tr>
		<tr>
			<td>Precio</td>
			<td><input type="number" name="precio" value=""></td>
		</tr>
		<tr>
			<td><input type="submit" value="Registrar"></td>
		</tr>
	</table>
</form>
</body>
</html>