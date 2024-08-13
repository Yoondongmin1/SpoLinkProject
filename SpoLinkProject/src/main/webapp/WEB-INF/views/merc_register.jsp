<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 절대경로 -->
<c:set var="root" value="${pageContext.request.contextPath}/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="ja-JP">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Join us">
    <meta name="description" content="">
    <title>merc_register</title>
    <link rel="stylesheet" href="${root}css/nicepage.css" media="screen">
    <link rel="stylesheet" href="${root}css/merc_register.css" media="screen">
    <script class="u-script" type="text/javascript" src="${root}js/jquery-1.9.1.min.js" defer></script>
    <script class="u-script" type="text/javascript" src="${root}js/nicepage.js" defer></script>
    <meta name="generator" content="Nicepage 6.15.2, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
</head>
<body data-path-to-root="/" data-include-products="false" class="u-body u-xl-mode" data-lang="en">
   
   
    <!-- 상단메뉴 -->
    <c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

      <section class="u-align-center u-clearfix u-palette-1-light-3 u-section-1" id="sec-e2e2">
      <div class="custom-expanded u-container-align-center u-container-style u-group u-radius u-shape-round u-white u-group-1">
        <div class="u-container-layout u-container-layout-1">
          <h2 class="u-align-center u-text u-text-custom-color-7 u-text-1">안내</h2>
          <h5 class="u-align-center u-text u-text-palette-1-base u-text-2">안내 내용을 적도록 해</h5>
          <div class="u-align-center u-clearfix u-group-elements u-group-elements-1">
            <div class="u-expanded-width u-list u-list-1">
              <div class="u-repeater u-repeater-1">
                <div class="u-container-style u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
                    <a href="#" class="u-active-custom-color-7 u-align-center u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-custom-color-1 u-custom-item u-hover-palette-1-base u-radius u-btn-1">용병 등록 </a>
                  </div>
                </div>
                <div class="u-container-style u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
                    <a href="#" class="u-active-custom-color-7 u-align-center u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-custom-color-1 u-custom-item u-hover-palette-1-base u-radius u-btn-2">용병 리스트 </a>
                  </div>
                </div>
                <div class="u-container-style u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
                    <a href="#" class="u-active-custom-color-7 u-align-center u-border-2 u-border-hover-palette-1-base u-border-palette-1-base u-btn u-btn-round u-button-style u-custom-color-1 u-custom-item u-hover-palette-1-base u-radius u-btn-3">용병 해지 </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="custom-expanded u-align-left u-clearfix u-custom-html u-custom-html-1">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style> /* 노멀라이즈 시작 */
        body, ul, li {
            margin: 0;
            padding: 0;
            list-style: none;   	    /* 해당 태그의 list-style을 none으로 하는 것으로 ●을 제거한다 */
        }
        a {
            color: inherit;   	    /* 부모 엘리먼트의 값을 물려받는다 */
            text-decoration: none;    /* 해당 태그의 text-decoration 속성을 none 값으로 하는 것으로 밑줄을 제거한다 */
        }
        /* 노멀라이즈 끝 */
        /* 2차 이상의 메뉴를 숨기기 */
        .side-bar > ul ul {
            display: none;
        }
        /* 사이트의 높이를 5000px로 만들어 스크롤 생성 */
        body {
            height: 755px;
            background-color: #478ac9; /* 배경색 변경 */
            color: white; /* 글자색 변경 */
        }
        /* 사이드바의 너비와 높이를 변수를 통해 통제 */
        :root {
            --side-bar-width: 270px;
            --side-bar-height: 90vh;
        }
        .side-bar {
            position: fixed;    /* 스크롤을 따라오도록 지정 */
            background-color: #478ac9; /* 배경색 변경 */
            color: white; /* 글자색 변경 */
            width: var(--side-bar-width);
            min-height: var(--side-bar-height);   /* 사이드바의 높이를 전체 화면 높이의 90%로 지정 */
            margin-top: calc((100vh - var(--side-bar-height)) / 2);    /* 사이드바 위와 아래의 마진을 동일하게 지정 */
            border-radius: 20px;
            left: 0; /* 왼쪽에 고정 */
            transform: translate(calc(var(--side-bar-width) * -0.8), 0);  /* X축 이동, Y축 고정 */
            transition: .5s;
        }
        /* 모든 메뉴의 a에 속성값 부여 */
        .side-bar ul > li > a {
            display: block;
            color: white; /* 글자색 변경 */
            font-size: 1rem; /* 폰트 크기 변경 */
            font-weight: normal; /* 폰트 두께 변경 */
            padding-top: 20px;
            padding-bottom: 20px;
            padding-left: 50px;
        }
        /* 자식의 position이 absolute일 때 자식을 영역 안에 가두어 준다 */
        .side-bar > ul > li {
            position: relative;
        }
        /* 모든 메뉴가 마우스 인식 시 반응 */
        .side-bar ul > li:hover > a {
            background-color: #555;
            border-bottom: 1px solid #999;
        }
        /* 1차 메뉴의 항목이 마우스 인식 시에 2차 메뉴 등장 */
        .side-bar > ul > li:hover > ul {
            display: block;
            position: absolute;
            background-color: #888;
            top: 0;         /* 2차 메뉴의 상단을 1차 메뉴의 상단에 고정 */
            left: 100%;     /* 2차 메뉴를 1차 메뉴의 너비만큼 이동 */
            width: 100%;    /* 1차 메뉴의 너비를 상속 */
        }
        /* 마우스 인식 시 원래의 위치로 이동 */
        .side-bar:hover {
            transform: translate(0, 0);   /* 원래 위치로 X축 이동, Y축 고정 */
        } </style>
        <aside class="side-bar">
          <section class="side-bar__icon-box">
            <section class="side-bar__icon-1">
              <div></div>
              <div></div>
              <div></div>
            </section>
          </section>
          <ul>
            <li>
              <a href="#"><i class="fa-search fa-solid"></i> 용병 등록
              </a>
            </li>
            <li>
              <a href="#"><i class="fa-search fa-solid"></i> 용병 리스트
              </a>
            </li>
            <li>
              <a href="#"><i class="fa-search fa-solid"></i> 용병 해지
              </a>
            </li>
          </ul>
        </aside>
      </div>
    </section>
    

    <!-- 하단정보 -->
    <c:import url="/WEB-INF/views/include/bottom_info.jsp" />

</body>
</html>
