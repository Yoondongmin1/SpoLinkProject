<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="ja-JP">
<head>
<!-- 네이버 로그인 API 라이브러리 주소 -->
<!-- <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Join us">
    <meta name="description" content="">
    <title>join</title>
    <link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
<link rel="stylesheet" href="${root }css/join.css" media="screen">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <%--   <script class="u-script" type="text/javascript" src="${root }js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="${root }js/nicepage.js" defer=""></script> --%>
    <meta name="generator" content="Nicepage 6.15.2, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    
<!-- 회원가입 유효성 검사 및 중복확인 2408125-->
<script>

	$(document).ready(function() {
	    
	    // 클래스가 "error-message"인 모든 요소들을 선택하여 반복문 실행
	    $(".error-message").each(function() {
	    	
	        // 현재 요소(this)의 텍스트 내용을 가져오고, 앞뒤 공백을 제거하여 변수에 저장
	        var errorMessage = $(this).text().trim();
	        
	        // 오류 메시지가 존재하는 경우 (텍스트 길이가 0보다 큰 경우)
	        if (errorMessage.length > 0) {
	        	
	            // alert 대화 상자를 통해 오류 메시지를 사용자에게 표시
	            alert(errorMessage);
	        }
	    });
	});

	function checkUserIdExist() {
		let user_id = $("#user_id").val();
		
		if(user_id.length === 0) {
			alert("아이디를 입력하세요");
			return;
		}
		$.ajax({
			url: '${root}/user/checkUserIdExist/' + user_id,
			type: 'get',
			dataType: 'text',
			success: function(result) {
				if(result.trim() === 'true'){
					alert("사용할 수 있는 아이디입니다.");
					$("#userIdExist").val("true");
				} else {
					alert("사용할 수 없는 아이디입니다.");
					$("#userIdExist").val("false");
				}
			}
		});
	}
	
</script>
    

<!-- 2024-08-09 -->
<!-- 카카오 SDK를 추가 -->
	<script>
        // 카카오 SDK 초기화
        Kakao.init('64d3e413591e4a5d7e3b0b66856f56a4');
		/* 김용민 */
        function loginWithKakao() {
            Kakao.Auth.login({
/*             	scope: 'profile_nickname,profile_image,email', // 필요한 권한 요청 설정
 */                
 				success: function(authObj) {
                    Kakao.API.request({
                        url: '/v2/user/me',
                        success: function(res) {
                            if (res.kakao_account && res.kakao_account.profile) {
                                var userInfo = {
                                    id: res.id,
                                    nickname: res.kakao_account.profile.nickname,
                                    email: res.kakao_account.email || "이메일 정보가 없습니다."
                                };
                                console.log(userInfo);
                                
                             // 리디렉션 구글로 빠지면 로그인 성공 (정보 가져옴 (ID, 닉네임))
							//window.location.href = "http://google.com"; // 여기에 원하는 페이지 URL을 입력하세요
								console.log("로그인 성공");
                                
                            } else {
                                console.log('Profile 정보가 제공되지 않았습니다.');
                                
                             
                            }
                        },
                        fail: function(error) {
                            console.log(error);
                        }
                    });
                },
                fail: function(err) {
                    alert(JSON.stringify(err));
                }
            });
        }

        
        // 카카오톡 연결 해제
        function unlinkWithKakao() {
            Kakao.API.request({
                url: '/v1/user/unlink',
                success: function(response) {
                    console.log(response);
                    alert('카카오톡과의 연결이 해제되었습니다.');
                    window.location.reload();
                },
                fail: function(error) {
                    console.log(error);
                    alert('연결 해제 중 오류가 발생했습니다.');
                }
            });
        }
    </script>

<!-- ------------------------------------------------------------ -->


<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naver_id_login = new naver_id_login("등록한 ClientID 값", "등록한 Callback URL 값");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2,40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
</script>
<!-- // 네이버 로그인 초기화 Script -->





<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
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
    
    
    <section class="u-clearfix u-white u-section-1" id="carousel_f3f0">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-container-style u-group u-palette-1-light-1 u-preserve-proportions u-radius u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h2 class="u-align-center u-text u-text-default u-text-1"> Join us</h2>
            <h5 class="u-align-center u-text u-text-2"> Any questions or remarks? Just write us a message!</h5>
            <div class="u-form u-form-1">
            
              <form:form action="${root}user/join_pro" modelAttribute="joinUserBean" method="post" class="u-clearfix u-form-spacing-32 u-form-vertical u-inner-form" style="padding: 10px;">
               
               <!-- 중복확인(userIdExist)  -->
               <form:hidden path="userIdExist"/>
               
               <!-- ID -->
                <div class="u-form-group u-label-none u-form-group-1">
                  <form:label path="user_id" for="text-9a47" class="u-label">ID</form:label>
                  <form:input path="user_id" type="text" class="u-grey-10 u-input u-input-rectangle u-radius u-input-1" placeholder="사용할 아이디를 입력해주세요." required="required" />
                  <form:errors path="user_id" cssClass="error-message" element="div" style="display: none;"/>
                </div>
              
               <!-- Name -->
                <div class="u-form-group u-label-none u-form-group-2">
                  <form:label path="user_name" for="text-0cb7" class="u-label">Name</form:label>
                  <form:input path="user_name" type="text" placeholder="이름을 입력해주세요"  class="u-grey-10 u-input u-input-rectangle u-radius u-input-2" required="required" />
                   <form:errors path="user_name" cssClass="error-message" element="div" style="display: none;"/>
                </div>
                
                <!-- Email -->
                <div class="u-form-email u-form-group u-label-none">
                  <form:label path="user_email" for="email-bb9b" class="u-label">Email</form:label>
                  <form:input path="user_email" type="email" placeholder="이메일 주소를 입력해주세요"  class="u-grey-10 u-input u-input-rectangle u-radius-50" required="required" />
                    <form:errors path="user_email" cssClass="error-message" element="div" style="display: none;"/>
                </div>
               
               <!-- Password1 -->
                <div class="u-form-group u-label-none u-form-group-4">
                  <form:label path="user_pass1" class="u-label">Password</form:label>
                  <form:input path="user_pass1" type="password" placeholder="비밀번호를 입력해주세요" class="u-grey-10 u-input u-input-rectangle u-radius u-input-4" />
                    <form:errors path="user_pass1" cssClass="error-message" element="div" style="display: none;"/>
                </div>
              
              <!-- Password2 -->
                <div class="u-form-group u-label-none u-form-group-5">
                  <form:label path="user_pass2"  class="u-label">Password</form:label>
                  <form:input path="user_pass2" type="password" placeholder="비밀번호를 재입력해주세요" class="u-grey-10 u-input u-input-rectangle u-radius u-input-5" />
                    <form:errors path="user_pass2" cssClass="error-message" element="div" style="display: none;" />
                </div>
                
                <!-- Phone -->
                <div class="u-form-group u-form-phone u-label-none u-form-group-6">
                  <form:label path="user_Phone" class="u-label">Phone</form:label>
                  <form:input path="user_Phone" type="text" placeholder="전화번호를 입력해주세요" class="u-grey-10 u-input u-input-rectangle u-radius u-input-6" required="required" />
                   <form:errors path="user_Phone" cssClass="error-message" element="div" style="display: none;" />
                </div>
               
               <!-- Submit -->
                <div class="u-align-left u-form-group u-form-submit u-label-none">
                  <input type="submit" value="회원가입" class="u-active-palette-5-dark-3 u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-5-dark-3 u-palette-1-base u-radius-50 u-btn-1" />
                </div>
                
                
                <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                <input type="hidden" value="" name="recaptchaResponse">
                <input type="hidden" name="formServices" value="ce6d5be1-2dc5-44c5-0841-c6dc20a6776f">
              </form:form>
            </div>
            
            <!--  중복확인 -->
           	<button type="button" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-base u-palette-1-base u-radius u-btn-2" onclick="checkUserIdExist()">중복확인</button>
           
          
            <p class="u-align-left u-text u-text-3">다른 서비스 계정으로 가입</p>
            <div class="u-clearfix u-group-elements u-group-elements-1">
              <a href="#" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-radius u-white u-btn-3"><span class="u-file-icon u-icon u-text-custom-color-5 u-icon-1"><img src="${root }images/pngwing.com-5436c437.png" alt=""></span>&nbsp;NAVER
              </a>
              <a href="#" class="u-align-center u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-radius u-white u-btn-4"><span class="u-file-icon u-icon u-icon-2"><img src="${root }images/google_icon-removebg-preview.png" alt=""></span>&nbsp;Google
              </a>
            
             <!-- 네이버 API 작업 -->
            <%-- 
              <a href="#" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-radius u-white u-btn-3">
           	  	 <span class="u-file-icon u-icon u-text-custom-color-5 u-icon-1">
             	 	<img src="${root }images/pngwing.com-5436c437.png" alt="">
             	 </span>&nbsp;NAVER
              </a>
              
              
              
              
              <a href="#" class="u-align-center u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-radius u-white u-btn-4"><span class="u-file-icon u-icon u-icon-2"><img src="${root }images/google_icon-removebg-preview.png" alt=""></span>&nbsp;Google
              </a>
               --%>
              
              
              
              <!-- 카카오 API 작업 -->
              <%-- <a href="#" class="u-align-center u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-radius u-white u-btn-5"><span class="u-file-icon u-icon u-icon-3"><img src="${root }images/pngwing.com__2_-removebg-preview.png" alt=""></span>&nbsp;Kakaotalk
              </a> --%>
              <a href="javascript:void(0);" onclick="loginWithKakao()" class="u-align-center u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-radius u-white u-btn-5">
				    <span class="u-file-icon u-icon u-icon-3">
				        <img src="${root }images/pngwing.com__2_-removebg-preview.png" alt="">
				    </span>&nbsp;Kakaotalk
				</a>
            </div>
            
            <!-- 2024-08-09 -->
           	<!-- 카카오톡 연결 해제용 버튼 -->
            <!-- <button onclick="unlinkWithKakao()">카카오톡 연결 해제</button> -->
            
            
            
            
            <div class="u-clearfix u-group-elements u-group-elements-2">
              <p class="u-align-left u-text u-text-4">이미 회원 가입이 되​어있다면,</p>
              <a href="#" class="u-active-none u-border-3 u-border-no-left u-border-no-right u-border-no-top u-border-white u-btn u-btn-rectangle u-button-style u-hover-none u-none u-text-white u-btn-6">로그인 </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    

	<!-- 하단정보 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />


</body>
</html>