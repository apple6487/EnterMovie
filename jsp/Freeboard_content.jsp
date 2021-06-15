<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="model.BoardDTO" %>
<%@ page import="model.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
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
    <meta name="keywords" content="자유 게시판">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
<title>freeBoard_content.jsp</title>
    <link rel="stylesheet" href="./resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="./resources/css/Freeboard_content.css" media="screen">
    <script class="u-script" type="text/javascript" src="./resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="./resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.15.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
}</script>
    <meta property="og:title" content="Page 1">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
    <style type="text/css">
    td {
    	border: 1px solid #fff;
    	border-collapse: collapse;
    }
    </style>
  </head>
<body>
	<%
  		
  		int board_num = 0;
  		
  		if(request.getParameter("board_num") != null) {
  			board_num = Integer.parseInt(request.getParameter("board_num"));
  		}
  		
  		if(board_num == 0) {
  			PrintWriter script = response.getWriter();
  			script.println("<script>");
  			script.println("alert('유효하지 않은 글입니다.')");
  			script.println("location.href='Freeboard_main.jsp'");
  			script.println("</script>");
  		}
  		
  		BoardDTO boardDTO = new BoardDAO().getBoardDTO(board_num);
  	%>
	<%@ include file="header.jsp" %>

	    <section class="u-black u-clearfix u-section-1" id="sec-0dfc">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-1">자유 게시판</h1>
        <br>
        <table class="table" style="text-align: center; border: 1px solid #fff; width: 100%; border-collapse: collapse;">
        	<thead>
        		<tr>
        			<th colspan="3" style="background-color: #FFDC3C; text-align: center; color:#000">게시판 글 보기 </th>
        		</tr>
        	</thead>
        	<tbody>
        		<tr>
        			<td style="width: 30%;">글 제목</td>
        			<td colspan="2"><%= boardDTO.getBoard_title().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;")
                			.replaceAll(">", "&gt;").replaceAll("\n", "<br>") %> </td>
        		</tr>
        		<tr>
        			<td>작성자</td>
        			<td colspan="2"><%= boardDTO.getCust_id() %> </td>
        		</tr>
        		<tr>
        			<td>작성일</td>
        			<td colspan="2"><%= boardDTO.getBoard_time() %> </td>
        		</tr>
        		<tr>
        			<td>내용</td>
        			<td colspan="5"><%= boardDTO.getBoard_content().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;")
        			.replaceAll(">", "&gt;").replaceAll("\n", "<br>") %> </td>
        		</tr>
        	</tbody>
        </table>
        <a href="Freeboard_main.jsp" class="u-btn u-btn-round u-button-style u-palette-3-base u-radius-50 u-btn-3"
        style="margin: 100px 10px; float:right;">목록</a>
        <%
        	if(userID != null && userID.equals(boardDTO.getCust_id())) {
        %>
        <a href="process_freeBoard_delete.jsp?board_num=<%= board_num %>" 
        class="u-btn u-btn-round u-button-style u-palette-3-base u-radius-50 u-btn-2"
        style="margin: 100px 10px; float:right;" onclick="return confirm('정말로 삭제하시겠습니까?')">삭제</a>
        <a href="Freeboard_update.jsp?board_num=<%= board_num %>" 
        class="u-btn u-btn-round u-button-style u-palette-3-base u-radius-50 u-btn-2"
        style="margin: 100px 10px; float:right;">수정</a>
		<%
        	}
		%>
      </div>
    </section>
	<%@ include file="footer.jsp" %>
</body>
</html>
