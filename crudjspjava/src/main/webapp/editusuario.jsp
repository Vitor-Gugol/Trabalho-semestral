<%@page import="com.crudjspjava.dao.consumoDao"%>

<jsp:useBean id="u" class="com.crudjspjava.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%
int i = consumoDao.updateUsuario(u);
	response.sendRedirect("viewusuarios.jsp");
%>