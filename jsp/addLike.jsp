<%@ page language="java" contentType="text/html; charset=utf-8" %>
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
		
		ArrayList<Movie> likesList = dao.getAllMovies();
		Movie likes = new Movie(); //빈 객체 생성, 좋아요 누른 정보 담으려고
		for(int i=0; i<likesList.size(); i++){
			likes = likesList.get(i);
			if(likes.getMovie_id().equals(id)){
				break;
			}
		}
		
		ArrayList<Movie> list = (ArrayList<Movie>) session.getAttribute("cartlist");
		
		if(list == null){
			list = new ArrayList<Movie>();
			session.setAttribute("cartlist", list);
		}
		
		int cnt = 0;
		Movie likesQnt = new Movie();
		for(int i=0; i<list.size(); i++){
			likesQnt = list.get(i);
			if(likesQnt.getMovie_id().equals(id)){
				cnt++;
				int orderQuantity = likesQnt.getQuantity() + 1;
				likesQnt.setQuantity(orderQuantity);
			}
		}
		
		if (cnt == 0){
			likes.setQuantity(1);
			list.add(likes);
		}
		response.sendRedirect("Movie_info.jsp?id=" + id);
		
	%>
</body>
</html>
