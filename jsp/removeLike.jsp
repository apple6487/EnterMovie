<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<title>좋아요 삭제하기</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		if(id == null || id.trim().equals("")){
			response.sendRedirect("MAIN.jsp"); //id가 없으면 메인페이지로 이동
			return;
		}
	
		MovieRepository dao = MovieRepository.getInstance();
		Movie movie = dao.getMovieById(id);
		if(movie == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('해당 영화는 존재하지 않습니다')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		ArrayList<Movie> likeList = (ArrayList<Movie>) session.getAttribute("cartlist");
		Movie likesQnt = new Movie();
		for(int i=0; i<likeList.size(); i++){
			likesQnt = likeList.get(i);
			if(likesQnt.getMovie_id().equals(id)){
				likeList.remove(likesQnt);
			}
		}
		response.sendRedirect("Category.jsp");
	%>
</body>
</html>
