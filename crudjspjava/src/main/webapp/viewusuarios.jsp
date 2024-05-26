<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualiza��o de Usu�rios</title>
</head>
<body>
	<%@ page import ="com.crudjspjava.dao.consumoDao,com.crudjspjava.bean.*,java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
	
	
	
	<h1>Listagem de Usu�rios</h1>
	
	<%
		List<Usuario> list = consumoDao.getAllUsuarios();
			
			request.setAttribute("list", list);
		%>
	
	<table border="1">
		<tr> 
		<th>Tipo de energia</th>
		<th>Quantidade</th>
		<th>Data</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
            <tr>
            <td>${usuario.getTipoEnergia()}</td>
            <td>${usuario.getQuantidade()}</td>
            <td>${usuario.getData()}</td>
            
            <td><a href="editform.jsp?id=${usuario.getId()}"> Editar </a></td>
            <td><a href="deleteusuario.jsp?id=${usuario.getId()}"> Excluir </a></td>
            </tr>
        </c:forEach>
	</table>
	<br>
	<a href="addusuarioform.jsp">Adicionar novo Usu�rio </a>
	
	
	
</body>
</html>