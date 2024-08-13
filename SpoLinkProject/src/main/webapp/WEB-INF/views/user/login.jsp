<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="ja-JP">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>login</title>
    <link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/login.css" media="screen">
    <script class="u-script" type="text/javascript" src="${root }js/jquery-1.9.1.min.js" defer></script>
    <script class="u-script" type="text/javascript" src="${root }js/nicepage.js" defer></script>
    <meta name="generator" content="Nicepage 6.15.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" 
    href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "SportsLink",
		"logo": "/images/default-logo.png",
		"sameAs": []
}
</script>

    <meta name="theme-color" content="#2676c1">
    <meta property="og:title" content="join">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body data-path-to-root="/" data-include-products="false" class="u-body u-xl-mode" data-lang="en">
  
  
  <!-- 상단메뉴 -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>
    
    
    <section class="u-clearfix u-section-1" id="sec-d8be">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-align-center u-container-style u-group u-palette-1-light-3 u-radius-50 u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
          <span class="u-align-center u-icon u-text-palette-1-base u-icon-1">
          <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 45.532 45.532" style="">
          <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-633a"></use></svg>
          <svg class="u-svg-content" viewBox="0 0 45.532 45.532" x="0px" y="0px" id="svg-633a" style="enable-background:new 0 0 45.532 45.532;"><g>
          <path d="M22.766,0.001C10.194,0.001,0,10.193,0,22.766s10.193,22.765,22.766,22.765c12.574,0,22.766-10.192,22.766-22.765   S35.34,0.001,22.766,0.001z M22.766,6.808c4.16,0,7.531,3.372,7.531,7.53c0,4.159-3.371,7.53-7.531,7.53   c-4.158,0-7.529-3.371-7.529-7.53C15.237,10.18,18.608,6.808,22.766,6.808z M22.761,39.579c-4.149,0-7.949-1.511-10.88-4.012   c-0.714-0.609-1.126-1.502-1.126-2.439c0-4.217,3.413-7.592,7.631-7.592h8.762c4.219,0,7.619,3.375,7.619,7.592   c0,0.938-0.41,1.829-1.125,2.438C30.712,38.068,26.911,39.579,22.761,39.579z"></path>
</g></svg></span>
            <h3 class="u-align-center u-text u-text-custom-color-7 u-text-default u-text-1">Log In</h3>
            <div class="custom-expanded u-form u-login-control u-form-1">
              <form action="#" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" source="custom" name="form-3" style="padding: 10px;" method="post">
                <div class="u-form-checkbox u-form-group" data-dependency="[{&quot;action&quot;:&quot;hide&quot;,&quot;field&quot;:&quot;username&quot;,&quot;condition&quot;:&quot;equal&quot;,&quot;value&quot;:&quot;&quot;}]">
             	<label for="checkbox-5b0a" class="u-field-label u-text-custom-color-7" style=""></label>
                </div>
                <div class="u-form-group u-form-name">
                  <label for="username-5b0a" class="u-label u-text-custom-color-7 u-label-1">아이디</label>
                  <input type="text" placeholder="아이디를 입력하세요" id="username-5b0a" name="username" class="u-border-2 u-border-white u-input u-input-rectangle u-radius-43 u-text-palette-1-dark-2" required="">
                </div>
                <div class="u-form-group u-form-password">
                  <label for="password-5b0a" class="u-label u-text-custom-color-7 u-label-2">비밀번호</label>
                  <input type="text" placeholder="비밀번호를 입력하세요" id="password-5b0a" name="password" class="u-border-2 u-border-white u-input u-input-rectangle u-radius-43 u-text-palette-1-dark-2" required="">
                </div>
                <div class="u-align-left u-form-group u-form-submit">
                  <a href="#" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-radius-50 u-btn-1">Login</a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </div>
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
            </div>
            <div class="u-clearfix u-container-align-center u-group-elements u-group-elements-1">
              <div class="u-clearfix u-group-elements u-group-elements-2">
                <a href="#" class="u-align-center u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-btn u-button-style u-none u-text-palette-1-base u-btn-2">아이디 찾기 </a><span class="u-icon u-text-palette-1-base u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966" style=""><use xlink:href="#svg-e61d"></use></svg><svg class="u-svg-content" viewBox="0 0 56.966 56.966" x="0px" y="0px" id="svg-e61d" style="enable-background:new 0 0 56.966 56.966;"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23
	s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92
	c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17
	s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg></span>
              </div>
              <a href="#" class="u-align-center u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-btn u-button-style u-none u-text-palette-1-base u-btn-3">비밀번호&nbsp; 찾기 </a><span class="u-icon u-text-palette-1-base u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966" style=""><use xlink:href="#svg-7107"></use></svg><svg class="u-svg-content" viewBox="0 0 56.966 56.966" x="0px" y="0px" id="svg-7107" style="enable-background:new 0 0 56.966 56.966;"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23
	s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92
	c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17
	s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg></span>
            </div>
            <div class="u-align-center u-border-1 u-border-custom-color-1 u-line u-line-horizontal u-line-1"></div>
            <p class="u-align-center u-text u-text-palette-1-base u-text-2">다른 서비스 계정으로 <span style="font-weight: 700;">로그인</span>
            </p>
            <a href="#" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-radius u-white u-btn-4">
            <span class="u-file-icon u-icon u-text-custom-color-5 u-icon-4">
            <img src="${root }images/pngwing.com.png" alt=""></span>&nbsp;NAVER
            </a>
            <a href="#" class="u-align-center u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-radius u-white u-btn-6"><span class="u-file-icon u-icon u-icon-6">
            <img src="${root }images/pngwing.com__2_-removebg-preview.png" alt=""></span>&nbsp;Kakaotalk
            </a>
            <a href="#" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-active-custom-color-7 u-text-custom-color-1 u-text-hover-custom-color-7 u-btn-7">아직 회원이 아니시라면, <span style="font-weight: 700; text-decoration: underline !important;">회원가입</span>
            </a>
          </div>
        </div>
      </div>
    </section>
    

	<!-- 하단정보 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />


</body>
</html>