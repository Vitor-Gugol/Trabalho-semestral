<%@page import="com.crudjspjava.dao.consumoDao,java.util.*" %>
<jsp:useBean id="u" class="com.crudjspjava.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>/>


<%
int i = consumoDao.salvarUsuario(u);

	if(i>0){
		response.sendRedirect("addusuario-success.jsp");
	}else{
		response.sendRedirect("addusuario-error.jsp");
	}
%>