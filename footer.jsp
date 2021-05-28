<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>footer</title>
</head>
<body>
	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-0c83">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">
				이젠컴퓨터학원<br>2조<br>김명훈, 김태훈, 박예슬
			</p>
			<a href="MAIN.jsp" class="u-image u-logo u-image-1"> <img
				src="./resources/images/logo.png"
				class="u-logo-image u-logo-image-1">
			</a>
			<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse"
					style="font-size: 1rem; letter-spacing: 0px;">
					<a
						class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
						href="#"> <svg>
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#menu-hamburger"></use></svg> <svg version="1.1"
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<defs>
							<symbol id="menu-hamburger" viewBox="0 0 16 16"
								style="width: 16px; height: 16px;">
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<%
    	if(userID == null){
      %>
					<ul class="u-nav u-unstyled u-nav-1">
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="LOGIN.jsp">로그인</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="SIGNUP.jsp">회원가입</a></li>
					</ul>
					<%	
      	} else {
      %>
					<ul class="u-nav u-unstyled u-nav-1">
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="MAIN.jsp" style="padding: 10px 20px;">메인</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="Category.jsp" style="padding: 10px 20px;">좋아요 목록</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="Freeboard_main.jsp" style="padding: 10px 20px;">게시판</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="Service.jsp" style="padding: 10px 20px;">고객지원</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
							href="processLogout.jsp">로그아웃</a></li>
					</ul>
				</div>
				<!--<div class="u-custom-menu u-nav-container-collapse">
        <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
          <div class="u-sidenav-overflow">
            <div class="u-menu-close"></div>
            <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
            
            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="MAIN.jsp" style="padding: 10px 20px;">메인</a></li>
            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Category.jsp" style="padding: 10px 20px;">카테고리</a>
			</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Freeboard_main.jsp" style="padding: 10px 20px;">게시판</a>
			</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Service.jsp" style="padding: 10px 20px;">고객지원</a>
			</li>
			</ul>
          </div>
        </div>
        <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
      </div> -->
				<%
      	}
     %>
			</nav>
		</div>
	</footer>
</body>
</html>