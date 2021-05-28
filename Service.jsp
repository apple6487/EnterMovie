<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.PrintWriter"%>
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
<meta name="keywords" content="INTUITIVE">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>문의사항</title>
<link rel="stylesheet" href="./resources/css/nicepage.css"
	media="screen">
<link rel="stylesheet" href="./resources/css/Service.css" media="screen">
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
		"url": "MAIN.jsp",
		"logo": "./resources/images/default-logo.png"
}</script>
<meta property="og:title" content="문의사항">
<meta property="og:type" content="website">
<meta name="theme-color" content="#478ac9">
<link rel="canonical" href="MAIN.jsp">
<meta property="og:url" content="MAIN.jsp">
</head>
<body class="u-body">
<%@ include file="header.jsp" %>

	<section class="u-align-center u-black u-clearfix u-section-1"
		id="sec-0247">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-text u-text-1">1:1 문의</h2>
			<div class="u-form u-form-1">
				<form action="#" method="POST"
					class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form"
					style="padding: 10px" source="custom" name="form">
					<div class="u-form-group u-form-name">
						<label for="name-3b9a" class="u-form-control-hidden u-label">Name</label>
						<input type="text" placeholder="제목을 입력해주세요" id="name-3b9a"
							name="name"
							class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
							required="">
					</div>
					<div class="u-form-email u-form-group">
						<label for="email-3b9a" class="u-form-control-hidden u-label">Email</label>
						<input type="email" placeholder="답변 받을 메일주소를 입력해주세요"
							id="email-3b9a" name="email"
							class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
							required="">
					</div>
					<div class="u-form-group u-form-message">
						<label for="message-3b9a" class="u-form-control-hidden u-label">Message</label>
						<textarea placeholder="문의 내용을 입력해주세요" rows="10" cols="50"
							id="message-3b9a" name="message"
							class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
							required=""></textarea>
					</div>
					<div class="u-align-center u-form-group u-form-submit">
						<a href="#"
							class="u-btn u-btn-round u-btn-submit u-button-style u-palette-3-base u-radius-50 u-btn-1">전송<br>
						</a> <input type="submit" value="submit" class="u-form-control-hidden">
					</div>
					<div class="u-form-send-message u-form-send-success">Thank
						you! Your message has been sent.</div>
					<div class="u-form-send-error u-form-send-message">Unable to
						send your message. Please fix errors then try again.</div>
					<input type="hidden" value="" name="recaptchaResponse">
				</form>
			</div>
		</div>
	</section>


	<%@ include file="footer.jsp" %>
</body>
</html>