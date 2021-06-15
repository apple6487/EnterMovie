<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="model.BoardDTO" %>
<%@ page import="model.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
	String userID = null;

	if(session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if(userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해 주세요.')");
		script.println("location.href='LOGIN.jsp'");
		script.println("</script>");
	}
	
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
	
	if(! userID.equals(boardDTO.getCust_id())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href='Freeboard_main.jsp'");
		script.println("</script>");
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
<title>freeBoard_update.jsp</title>
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
  </head>
<body>

	<%@ include file="header.jsp" %>

	    <section class="u-black u-section-1" id="sec-0dfc">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-1">글 수정</h1>
        <br>
        <form class=" u-form-spacing-10" style="padding: 10px" method="POST" action="process_freeBoard_update.jsp?board_num=<%=board_num%>">
        <div class="u-form-group u-form-group-1">
              <label for="email-f2a8" class="u-label u-label-1">제목</label>
              <input type="text" placeholder="제목을 입력해주세요" id="email-f2a8" name="board_title" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" 
              required="required" value="<%= boardDTO.getBoard_title() %>">
            </div>
            <div class="u-form-group u-form-message u-form-group-2">
              <label for="message-f2a8" class="u-label u-label-2">내용</label>
              <textarea placeholder="내용을 입력해주세요" rows="10" cols="50" id="message-f2a8" name="board_content" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="required">
              <%= boardDTO.getBoard_content() %></textarea>
            </div>
            <div class="u-align-right u-form-group u-form-submit u-form-group-3">
              <br>
              <input type="submit" value="수정" 
              class="u-border-2 u-border-hover-palette-3-base u-border-palette-3-base u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-3-light-2 u-palette-3-base u-radius-50 u-btn-1" >
            </div>
            </form>
      </div>
    </section>
	<%@ include file="footer.jsp" %>
</body>
</html>
