<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
    <title>관리자 화면</title>
    <link rel="stylesheet" href="./resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="./resources/css/Manager.css" media="screen">
    <script class="u-script" type="text/javascript" src="./resources/js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="./resources/js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.14.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "MAIN.jsp",
		"logo": "./resources/images/default-logo.png"
}</script>
    <meta property="og:title" content="관리자 화면">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="MAIN.jsp">
    <meta property="og:url" content="MAIN.jsp">
  </head>
  <body class="u-body">
  	<%@ include file="header.jsp" %>
    <section class="u-align-center u-black u-clearfix u-section-1" id="sec-152f">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-layout-grid u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-style u-custom-background u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-1"><span class="u-border-2 u-border-palette-3-base u-icon u-icon-circle u-spacing-10 u-text-palette-3-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 55.25 55.25" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-2391"></use></svg><svg class="u-svg-content" viewBox="0 0 55.25 55.25" x="0px" y="0px" id="svg-2391" style="enable-background:new 0 0 55.25 55.25;"><g><path d="M0.523,51.933l-0.497,2.085c-0.016,0.067-0.02,0.135-0.022,0.202C0.004,54.234,0,54.246,0,54.259
		c0.001,0.114,0.026,0.225,0.065,0.332c0.009,0.025,0.019,0.047,0.03,0.071c0.049,0.107,0.11,0.21,0.196,0.296
		c0.095,0.095,0.207,0.168,0.328,0.218c0.121,0.05,0.25,0.075,0.379,0.075c0.077,0,0.155-0.009,0.231-0.027l2.086-0.497
		L0.523,51.933z"></path><path d="M52.618,2.631c-3.51-3.508-9.219-3.508-12.729,0L3.827,38.693C3.81,38.71,3.8,38.731,3.785,38.749
		c-0.021,0.024-0.039,0.05-0.058,0.076c-0.053,0.074-0.094,0.153-0.125,0.239c-0.009,0.026-0.022,0.049-0.029,0.075
		c-0.003,0.01-0.009,0.02-0.012,0.03l-2.495,10.48L5.6,54.182l10.48-2.495c0.027-0.006,0.051-0.021,0.077-0.03
		c0.034-0.011,0.066-0.024,0.099-0.039c0.072-0.033,0.139-0.074,0.201-0.123c0.024-0.019,0.049-0.033,0.072-0.054
		c0.008-0.008,0.018-0.012,0.026-0.02l36.063-36.063C56.127,11.85,56.127,6.14,52.618,2.631z M17.157,47.992l0.354-3.183
		L39.889,22.43c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L16.097,43.395l-4.773,0.53l0.53-4.773l22.38-22.378
		c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L10.44,37.738l-3.183,0.354L34.94,10.409l9.9,9.9L17.157,47.992z
		 M46.254,18.895l-9.9-9.9l1.414-1.414l9.9,9.9L46.254,18.895z M49.082,16.067l-9.9-9.9l1.415-1.415l9.9,9.9L49.082,16.067z"></path>
</g></svg></span>
                <h3 class="u-text u-text-1">게시판 관리</h3>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-1">문의사항</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-2">자유게시판</a>
              </div>
            </div>
          </div>
        </div>
        <div class="u-list u-list-2">
          <div class="u-repeater u-repeater-2">
            <div class="u-align-center u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-2"><span class="u-border-2 u-border-palette-3-base u-icon u-icon-circle u-spacing-10 u-text-palette-3-base u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 60 60" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9f96"></use></svg><svg class="u-svg-content" viewBox="0 0 60 60" x="0px" y="0px" id="svg-9f96" style="enable-background:new 0 0 60 60;"><g><path d="M55.014,45.389l-9.553-4.776C44.56,40.162,44,39.256,44,38.248v-3.381c0.229-0.28,0.47-0.599,0.719-0.951
		c1.239-1.75,2.232-3.698,2.954-5.799C49.084,27.47,50,26.075,50,24.5v-4c0-0.963-0.36-1.896-1-2.625v-5.319
		c0.056-0.55,0.276-3.824-2.092-6.525C44.854,3.688,41.521,2.5,37,2.5s-7.854,1.188-9.908,3.53
		c-2.368,2.701-2.148,5.976-2.092,6.525v5.319c-0.64,0.729-1,1.662-1,2.625v4c0,1.217,0.553,2.352,1.497,3.109
		c0.916,3.627,2.833,6.36,3.503,7.237v3.309c0,0.968-0.528,1.856-1.377,2.32l-8.921,4.866c-2.9,1.582-4.701,4.616-4.701,7.92V57.5
		h46v-4.043C60,50.019,58.089,46.927,55.014,45.389z"></path><path d="M17.983,44.025l8.921-4.866c0.367-0.201,0.596-0.586,0.596-1.004v-2.814c-0.885-1.232-2.446-3.712-3.337-6.91
		C23.1,27.399,22.5,25.994,22.5,24.5v-4c0-1.124,0.352-2.219,1-3.141v-4.733c-0.034-0.383-0.074-1.269,0.096-2.395
		C22.219,9.751,20.687,9.5,19,9.5c-10.389,0-10.994,8.855-11,9v4.579c-0.648,0.706-1,1.521-1,2.33v3.454
		c0,1.079,0.483,2.085,1.311,2.765c0.825,3.11,2.854,5.46,3.644,6.285v2.743c0,0.787-0.428,1.509-1.171,1.915l-6.653,4.173
		C1.583,48.134,0,50.801,0,53.703V57.5h12.5v-4.238C12.5,49.409,14.601,45.87,17.983,44.025z"></path>
</g></svg></span>
                <h3 class="u-text u-text-2">회원 관리</h3>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-3">회원정보 확인</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-4">회원정보 변경</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-5">회원 이용 정지</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-6">회원 강제 탈퇴</a>
                <a href="" class="u-border-2 u-border-palette-3-base u-btn u-button-style u-none u-text-body-alt-color u-btn-7">찜한 영화 순위</a>
              </div>
            </div>
          </div>
        </div>
        <div class="u-list u-list-3">
          <div class="u-repeater u-repeater-3">
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-container-layout-3"><span class="u-border-2 u-border-palette-3-base u-icon u-icon-circle u-spacing-10 u-text-palette-3-base u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 60 60" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ddc9"></use></svg><svg class="u-svg-content" viewBox="0 0 60 60" x="0px" y="0px" id="svg-ddc9" style="enable-background:new 0 0 60 60;"><path d="M30,0C13.458,0,0,13.458,0,30s13.458,30,30,30s30-13.458,30-30S46.542,0,30,0z M45.563,30.826l-22,15
	C23.394,45.941,23.197,46,23,46c-0.16,0-0.321-0.038-0.467-0.116C22.205,45.711,22,45.371,22,45V15c0-0.371,0.205-0.711,0.533-0.884
	c0.328-0.174,0.724-0.15,1.031,0.058l22,15C45.836,29.36,46,29.669,46,30S45.836,30.64,45.563,30.826z"></path></svg></span>
                <h3 class="u-align-center u-text u-text-3">순위 및 추천작 조정</h3>
                <a href="" class="u-active-none u-border-2 u-border-palette-2-light-1 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-color u-btn-8">영화 순위 조정</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-9">영화 순위 조정</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-2-light-1 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-color u-btn-10">드라마 순위 조정</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-11">드라마 순위 조정</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-2-light-1 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-color u-btn-12">영화 추천작 조정</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-13">영화 추천작 조정</a>
                <a href="" class="u-active-none u-border-2 u-border-palette-3-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-body-alt-color u-btn-14">드라마 추천작 조정</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

   <%@ include file="footer.jsp" %>
  </body>
</html>
