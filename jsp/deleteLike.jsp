<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("likeId");
		if(id == null || id.trim().equals("")) {
			response.sendRedirect("Category.jsp"); //id가 없으면 메인페이지로 이동
			return;
		}
		session.invalidate();
		response.sendRedirect("Category.jsp");
	%>
</body>
</html>
