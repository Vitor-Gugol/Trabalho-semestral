<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import ="com.crudjspjava.dao.consumoDao" %>
<%@page import="com.crudjspjava.bean.Usuario" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edição do usuario</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		Usuario usuario = consumoDao.getRegistroById(Integer.parseInt(id));
		
		java.util.Date data = usuario.getData();
		String dataFormatada = "";
		if (data != null) {
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		    dataFormatada = sdf.format(data);
		}
		%>
		
	
	<h1>Edição do Usuário</h1>
	
	<form action="editusuario.jsp" method="post">
		<table>
		
		<tr>
		<td>Tipo de energia:</td>
		<td>
			<select name="tipo_energia">
			
			<option>Carvão</option>
			<option>Gás Natural</option>
			<option>Óleo</option>
			<option>Energia Hidrelétrica</option>
			<option>Solar</option>
			<option>Eólica</option>
			</select>
			</td>
		</tr>
		
		
			<tr>
				<td>Quantidade:</td>
				<td><input type="number" name="number" value="<%=usuario.getQuantidade()%>"/> </td>
			</tr>
		
		
			<tr>
				<td>Data: </td>
				<td><input type="date" name="data" value="<%= dataFormatada %>"/> </td>
			</tr>
		
		
			<tr>
					<td colspan="2">
					
					<input type="submit" value="Editar Value">
					
					</td>
			</tr>
			
		</table>
	</form>
	
	
</body>
</html>