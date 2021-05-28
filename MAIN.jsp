
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
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
<title>MAIN</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/nicepage.css"
	media="screen">
<link rel="stylesheet" href="./resources/css/MAIN.css" media="screen">
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
<meta property="og:title" content="MAIN">
<meta property="og:type" content="website">
<meta name="theme-color" content="#478ac9">
<link rel="canonical" href="MAIN.jsp">
<meta property="og:url" content="MAIN.jsp">
</head>
<body class="u-body">

		
<%@ include file="header.jsp" %>


	<section class="u-black u-clearfix u-section-2" id="sec-cc98">
		<div class="u-list u-list-1">
			<div class="u-repeater u-repeater-1"></div>
		</div>
				<h1 class="u-align-left u-text u-text-1">영화 목록</h1>	
		<div class="row" align="center">		
		<%@ include file="dbconn.jsp" %>
		<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from movie order by movie_url";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
		%>			
			<div class="col-md-4">
				<a href="Movie_info.jsp?id=<%=rs.getString("movie_id") %>"><img src="./resources/images/<%=rs.getString("movie_url")%>" alt="이미지">
				</a>
			</div>

		<%
			}
      		if(rs != null) rs.close();
      		if(pstmt != null) pstmt.close();
      		if(conn != null) conn.close();
		%>
		</div>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>