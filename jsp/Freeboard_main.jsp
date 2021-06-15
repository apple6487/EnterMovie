<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<%@ page import="model.BoardDTO"%>
<%@ page import="model.BoardDAO" %>
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
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>자유게시판 메인화면</title>
<link rel="stylesheet" href="./resources/css/nicepage.css"
	media="screen">
<link rel="stylesheet" href="./resources/css/Freeboard_main.css"
	media="screen">
<script class="u-script" type="text/javascript"
	src="./resources/js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="./resources/js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 3.14.0, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html",
		"logo": "images/default-logo.png"
}</script>
<meta property="og:title" content="자유게시판 메인화면">
<meta property="og:type" content="website">
<meta name="theme-color" content="#478ac9">
<link rel="canonical" href="MAIN.jsp">
<meta property="og:url" content="MAIN.jsp">
</head>
<body>
	
	<%
  		int pageNumber = 1; //기본 페이지
  		
  		if(request.getParameter("pageNumber") != null) {
  			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
  		}
  	%>
 	<%@ include file="header.jsp" %>

	<section class="u-align-center u-black u-clearfix u-section-1"
		id="carousel_5b14">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div class="u-clearfix u-layout-wrap u-layout-wrap-1">
				<div class="u-layout">
					<div class="u-layout-col">
						<div class="u-size-60">
							<div class="u-layout-col">
								<div
									class="u-align-center u-container-style u-layout-cell u-left-cell u-right-cell u-size-60 u-layout-cell-1">
									<div class="u-container-layout u-container-layout-1">
										<h1 class="u-text u-text-1">자유게시판</h1>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a href="Freeboard_write.jsp"
				class="u-btn u-btn-round u-button-style u-hover-palette-4-base u-palette-3-base u-radius-50 u-btn-1">글
				쓰기<span style="font-weight: 700;"></span>
			</a>
			<div class="u-expanded-width u-table u-table-responsive u-table-1">

				<table class="u-table-entity">
					<colgroup>
						<col width="11.4%">
						<col width="38.6%">
						<col width="25%">
						<col width="25%">
					</colgroup>
					<thead
						class="u-align-center u-grey-50 u-table-header u-table-header-1">
						<tr style="height: 21px;">
							<th
								class="u-border-1 u-border-white u-palette-3-base u-table-cell u-table-cell-1">번호</th>
							<th
								class="u-border-1 u-border-white u-palette-3-base u-table-cell u-table-cell-2">제목</th>
							<th
								class="u-border-1 u-border-white u-palette-3-base u-table-cell u-table-cell-3">글쓴이</th>
							<th
								class="u-border-1 u-border-white u-palette-3-base u-table-cell u-table-cell-4">작성일</th>
						</tr>
					</thead>
					<tbody class="u-align-center u-table-body">
					<%
  						BoardDAO boardDAO = new BoardDAO();
  						ArrayList<BoardDTO> list = boardDAO.getList(pageNumber); //가져온 게시글 목록
				  		for(int i = 0; i < list.size(); i++) {
  					%>
						<tr style="height: 75px;">
							<td
								class="u-border-1 u-border-no-left u-border-no-right u-border-white u-table-cell"><%= list.get(i).getBoard_num() %></td>
							<td
								class="u-border-1 u-border-no-left u-border-no-right u-border-white u-table-cell">
								<a href="Freeboard_content.jsp?board_num=<%= list.get(i).getBoard_num()%>"><%= list.get(i).getBoard_title() %></a></td>
							<td
								class="u-border-1 u-border-no-left u-border-no-right u-border-white u-table-cell"><%= list.get(i).getCust_id() %></td>
							<td
								class="u-border-1 u-border-no-left u-border-no-right u-border-white u-table-cell"><%= list.get(i).getBoard_time()%></td>
						</tr>
						<%
  							}
 				 		%>
					</tbody>
				</table>
				<% 
					if(pageNumber != 1) { 
				%>
				<a href="Freeboard_main.jsp?pageNumber=<%= pageNumber - 1 %>"
				class="u-btn u-btn-round u-button-style u-hover-palette-4-base u-palette-3-base u-radius-50 u-btn-1"> 이전
				<span style="font-weight: 700;"></span>
				</a>
				<%
					} if(boardDAO.nextPage(pageNumber + 1)) { 
				%>
				<a href="Freeboard_main.jsp?pageNumber=<%= pageNumber + 1 %>"
				class="u-btn u-btn-round u-button-style u-hover-palette-4-base u-palette-3-base u-radius-50 u-btn-1"> 다음 
				<span style="font-weight: 700;"></span>
				</a>
				<%
					}
				%>
			</div>
		</div>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>
