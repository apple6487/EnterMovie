<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>header</title>
</head>
<body class="u-body">
	<header class="u-black u-clearfix u-header u-header" id="sec-5367">
		<div class="u-clearfix u-sheet u-sheet-1">


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
				<%
      	}
     %>
			</nav>
			<div alt="" class="u-image u-image-circle u-image-2" src=""
				data-image-width="256" data-image-height="256"></div>

			<form action="#" method="get"
				class="u-border-1 u-border-grey-30 u-search u-search-left u-white u-search-1">
				<button class="u-search-button" type="submit">
					<span class="u-search-icon u-spacing-10"> <svg
							class="u-svg-link" preserveAspectRatio="xMidYMin slice"
							viewBox="0 0 56.966 56.966">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#svg-017b"></use></svg> <svg
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
							id="svg-017b" x="0px" y="0px" viewBox="0 0 56.966 56.966"
							style="enable-background: new 0 0 56.966 56.966;"
							xml:space="preserve" class="u-svg-content">
          <path
								d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  
          		s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  
          		c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  
          		s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
					</span>
				</button>
				<input class="u-search-input" type="search" name="search" value=""
					placeholder="Search">
			</form>
		</div>
	</header>
</body>
</html>