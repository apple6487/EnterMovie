<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>
<%
  		String userID = null;
  		if(session.getAttribute("userID") != null){
  			userID = (String) session.getAttribute("userID");
  		}
 %>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="극장판 귀멸의 칼날: 무한열차편​, 미나리​, 고질라 VS. 콩​, 지금 뜨는 콘텐츠, 새로 올라온 콘텐츠">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>좋아요 목록</title>
<link rel="stylesheet" href="./resources/css/nicepage.css"
	media="screen">
<link rel="stylesheet" href="./resources/css/Category.css"
	media="screen">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
		"logo": "./resources/images/logo.png"
}</script>
<meta property="og:title" content="카테고리">
<meta property="og:type" content="website">
<meta name="theme-color" content="#478ac9">
<link rel="canonical" href="MAIN.jsp">
<meta property="og:url" content="MAIN.jsp">
</head>
<style>
	.like{
		font-color:white;
		background-color: black;
	}
</style>
<body class="u-body">

<%@ include file="header.jsp" %>

	<%
		String likeId = session.getId();
	%>
	<div class="container like">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"> <a href="./deleteLike.jsp?likeId=<%=likeId %>"> 삭제하기</a> </td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover like">
				<tr>
					<th style="color:yellow"> 영화제목 </th>
					<th style="color:yellow"> 장르 </th>
					<th style="color:yellow"> 관람등급 </th>
					<th style="color:yellow"> 관객수 </th>
					<th style="color:yellow"> 비고 </th>
				</tr>
				<%
					int sum = 0;
					ArrayList<Movie> likeList = (ArrayList<Movie>) session.getAttribute("cartlist");
					if(likeList == null)
						likeList = new ArrayList<Movie>();
					for(int i=0; i<likeList.size(); i++){
						Movie movie = likeList.get(i);
						int total = movie.getQuantity();
						sum += total;
				%>
				<tr>
					<td style="color:white"><%=movie.getMovie_id()%>_<%=movie.getMovie_name()%></td>
					<td style="color:white"><%=movie.getMovie_genre() %> </td>
					<td style="color:white"><%=movie.getMovie_class() %> </td>
					<td style="color:white"><%=movie.getMovie_audience() %> </td>
					<td style="color:white"><a href="./removeLike.jsp?id=<%=movie.getMovie_id() %>">삭제</a></td>				
				</tr>
				<%
					}
				%>
			</table>
			<a href="./MAIN.jsp"> 메인 화면으로 </a>
		</div>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>