<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>자유게시판 글 작성 화면</title>
<link rel="stylesheet" href="./resources/css/nicepage.css"
	media="screen">
<link rel="stylesheet" href="./resources/css/Freeboard_write.css"
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
<link rel="canonical" href="index.html">
<meta property="og:url" content="index.html">
</head>
<body>
	<%@ include file="header.jsp" %>
	    <section class="u-align-left u-black u-clearfix u-section-1" id="carousel_6b41">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-group u-group-1">
          <div class="u-container-layout u-valign-middle u-container-layout-1">
            <h2 class="u-align-center u-text u-text-1">자유 게시판 작성</h2>
            <p class="u-align-center u-text u-text-2">고운말로 서로 존중하는 글을 써보아요! :D</p>
          </div>
        </div>
        <div class="u-form u-form-1">
          <form action="process_freeBoard_write.jsp" method="POST" class="" style="padding: 10px" source="custom" name="form">
            <div class="u-form-group u-form-group-1">
              <label for="email-f2a8" class="u-label u-label-1">제목</label>
              <input type="text" placeholder="제목을 입력해주세요" id="email-f2a8" name="board_title" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="required">
            </div>
            <div class="u-form-group u-form-message u-form-group-2">
              <label for="message-f2a8" class="u-label u-label-2">내용</label>
              <textarea placeholder="내용을 입력해주세요" rows="10" cols="50" id="message-f2a8" name="board_content" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="required"></textarea>
            </div>
            <div class="u-align-right u-form-group u-form-submit u-form-group-3">
              <br>
              <input type="submit" value="업로드" 
              class="u-border-2 u-border-hover-palette-3-base u-border-palette-3-base u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-3-light-2 u-palette-3-base u-radius-50 u-btn-1"
              style="margin: 30px 10px; float:right;">
            </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div>
        <a href="Freeboard_main.jsp" data-page-id="140490232" class="u-btn u-btn-round u-button-style u-hover-palette-4-base u-palette-3-base u-radius-50 u-btn-2"
        	style="margin: 20px 10px; float:right;"> 취소</a>
      </div>
    </section>
	<%@ include file="footer.jsp" %>
</body>
</html>
