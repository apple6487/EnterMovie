<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*"%>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>
<%
  		String userID = null;
  		if(session.getAttribute("userID") != null){
  			userID = (String) session.getAttribute("userID");
  		}
%>
<jsp:useBean id="movieDAO" class="dao.MovieRepository" scope="session"/>

<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="극장판 귀멸의 칼날: 무한열차편​, 미나리​, 고질라 VS. 콩​, 지금 뜨는 콘텐츠, 새로 올라온 콘텐츠">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>영화 상세</title>
<link rel="stylesheet" href="./resources/css/nicepage.css"
	media="screen">
<link rel="stylesheet" href="./resources/css/Movie_info.css"
	media="screen">
<script class="u-script" type="text/javascript"
	src="./resources/js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="./resources/js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 3.13.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">


<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "MAIN.jsp",
		"logo": ".resources/images/logo.png"
}</script>
<meta property="og:title" content="영화 상세">
<meta property="og:type" content="website">
<meta name="theme-color" content="#478ac9">
<link rel="canonical" href="MAIN.jsp">

<script type="text/javascript">
  function addToLike(){
	  if(confirm("영화를 좋아요 목록에 추가하시겠습니까?")){
		  document.addForm.submit();
	  }else{
		  document.addForm.reset();
	  }
  }
</script>
<meta property="og:url" content="MAIN.jsp">
</head>
<body class="u-body">
	<%@ include file="header.jsp" %>

	<section class="u-black u-clearfix u-section-1" id="carousel_3c00">

		<%@ include file="dbconn.jsp"%>
		<%
			String id = request.getParameter("id");

			PreparedStatement pstmt = null;
			ResultSet rs = null;

			String sql = "select * from movie where movie_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
		%>
		<%
			MovieRepository dao = MovieRepository.getInstance();
			Movie movie = dao.getMovieById(id);
		%>


		<img src="./resources/images/<%=rs.getString("movie_url")%>" alt=""
			class="u-image u-image-default u-image-1" data-image-width="500"
			data-image-height="300">
		<h2 class="u-text u-text-default u-text-1"><%=rs.getString("movie_name")%>_<%=rs.getString("movie_class") %></h2>
		<h2 class="u-text u-text-2">장르: <%=rs.getString("movie_genre")%></h2>
		<h2 class="u-text u-text-3">소개: <%=rs.getString("movie_story")%></h2>
		<br>
		<div align="center">
            <p><form name="addForm" action="./addLike.jsp?id=<%=movie.getMovie_id()%>" method="post">
                 <a href="#" class="" onclick="addToLike()"> 좋아요 &nbsp;&nbsp;&nbsp; </a> 
                 <a href="./Category.jsp"> 목록 보기 &nbsp;&nbsp;&nbsp; </a>
                 <a href="./MAIN.jsp"> 메인으로 </a> 
              </form>  
		</div>

		<%
			}
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		%>

	</section>

	<%@ include file="footer.jsp" %>
</body>
</html>