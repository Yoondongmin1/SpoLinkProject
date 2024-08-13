<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 절대경로 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="ja-JP"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content=""><meta name="description" content="">
    <title></title>
    <link rel="stylesheet" href="${root }css/nicepage.css" media="screen" class="u-static-style"><link rel="stylesheet" href="${root }css/nicepage.css" media="screen">
    <script class="u-script" type="text/javascript" src="${root }js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="${root }js/nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 6.15.2, nicepage.com">

<style class="custom-css" type="text/css">  

Document
    
        body {
            margin: 0;
            padding: 0;
            background-color: #478ac9; /* 배경색 변경 */
            color: white; /* 글자색 변경 */
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        table {
            margin: 20px 0; /* 상하 여백 추가 */
            width: 90%; /* 테이블 너비를 90%로 설정 */
            border-radius: 5px;
            border-collapse: collapse;
            border-top: none;
            max-width: 1200px; /* 최대 너비를 설정 */
        }
        .header {
            background-color: rgb(218, 231, 255);
            text-align: center;
        }
        td, th {
            border-bottom: 1px lightgray solid; 
            height: 30px;
            font-size: 14px;
            padding: 10px; /* 패딩 추가 */
        }
        .num {
            width: 10%; /* 너비를 비율로 설정 */
        }
        .title {
            width: 60%; /* 너비를 비율로 설정 */
        }
        .body {
            text-align: center;
        }
        .body .title {
            text-align: left;
        }
        button {
            width: 100px;
            height: 40px;
            font-size: 15px;
            border: 0;
            outline: 1.5px rgb(68, 136, 244) solid;
            border-radius: 5px;
            padding-left: 10px;
            background-color: rgb(164, 199, 255);
            margin: 20px; /* 버튼 주위 여백 추가 */
        }
        button:active {
            outline: 1.5px rgb(27, 76, 155) solid;
            background-color: rgb(68, 136, 244);
        }
    
    
        
            
                번호
                제목
                작성자
                날짜
            
        
        
            
                1
                테스트 제목
                작성자
                2024-08-08
            
            
        
    
    버튼
</style></head>
<body class="u-body u-xl-mode" data-style="blank" data-posts="" data-global-section-properties="{&quot;colorings&quot;:{&quot;light&quot;:[&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;],&quot;dark&quot;:[&quot;dark&quot;]}}" data-source="blank" data-page-sections-style="[{&quot;name&quot;:&quot;blank&quot;}]" data-page-coloring-types="{&quot;light&quot;:[&quot;clean&quot;],&quot;colored&quot;:[&quot;clean&quot;],&quot;dark&quot;:[&quot;dark&quot;]}" data-page-category="&quot;Basic&quot;"><section class="u-clearfix u-block-9917-1" custom-posts-hash="[]" data-style="blank" data-section-properties="{&quot;margin&quot;:&quot;none&quot;,&quot;stretch&quot;:true}" id="sec-9735" data-id="9917">
 
<!-- 상단메뉴 -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>
 
 
<style data-mode="XL">
@media (min-width: 1200px) {
  .u-block-9917-1 {
    min-height: 920px;
  }
  .u-block-9917-3 {
    height: auto;
    min-height: 400px;
    margin-top: 0;
    margin-bottom: 0;
    margin-left: 0;
    width: 124px;
  }
  .u-block-9917-88 {
    width: 1080px;
    height: auto;
    min-height: 722px;
    background-image: none;
    margin-top: -366px;
    margin-left: calc(((100% - 1140px) / 2)  + 110px);
    margin-bottom: 0;
  }
  .u-block-9917-87 {
    width: 1140px;
    height: auto;
    min-height: 32px;
    margin-top: -356px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 60px;
  }
}</style><style data-mode="LG">@media (max-width: 1199px) and (min-width: 992px) {
  .u-block-9917-1 {
    min-height: 920px;
  }
  .u-block-9917-3 {
    height: auto;
    min-height: 400px;
    width: 124px;
    margin-top: 0;
    margin-right: calc(((100% - 940px) / 2)  + 963px);
    margin-bottom: 0;
    margin-left: 0;
  }
  .u-block-9917-88 {
    width: 940px;
    height: auto;
    min-height: 722px;
    background-image: none;
    margin-top: -174px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: calc(((100% - 940px) / 2));
  }
  .u-block-9917-87 {
    width: 940px;
    height: auto;
    min-height: 32px;
    margin-top: -356px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 60px;
  }
}</style>
<style data-mode="MD">@media (max-width: 991px) and (min-width: 768px) {
  .u-block-9917-1 {
    min-height: 920px;
  }
  .u-block-9917-3 {
    height: auto;
    min-height: 400px;
    width: 124px;
    margin-top: 0;
    margin-right: calc(((100% - 720px) / 2)  + 743px);
    margin-bottom: 0;
    margin-left: 0;
  }
  .u-block-9917-88 {
    width: 720px;
    height: auto;
    min-height: 722px;
    background-image: none;
    margin-top: 224px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: calc(((100% - 720px) / 2));
  }
  .u-block-9917-87 {
    width: 720px;
    height: auto;
    min-height: 32px;
    margin-top: -356px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: -72px;
  }
}</style>
<style data-mode="SM">@media (max-width: 767px) and (min-width: 576px) {
  .u-block-9917-1 {
    min-height: 920px;
  }
  .u-block-9917-3 {
    height: auto;
    min-height: 400px;
    width: 124px;
    margin-top: 0;
    margin-right: calc(((100% - 540px) / 2)  + 563px);
    margin-bottom: 0;
    margin-left: 0;
  }
  .u-block-9917-88 {
    width: 540px;
    height: auto;
    min-height: 722px;
    background-image: none;
    margin-top: 585px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: calc(((100% - 540px) / 2));
  }
  .u-block-9917-87 {
    width: 540px;
    height: auto;
    min-height: 32px;
    margin-top: -356px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: -72px;
  }
}</style>

<style data-mode="XS">@media (max-width: 575px) {
  .u-block-9917-1 {
    min-height: 920px;
  }
  .u-block-9917-3 {
    height: auto;
    min-height: 400px;
    width: 124px;
    margin-top: 0;
    margin-right: calc(((100% - 340px) / 2)  + 363px);
    margin-bottom: 0;
    margin-left: 0;
  }
  .u-block-9917-88 {
    width: 340px;
    height: auto;
    min-height: 722px;
    background-image: none;
    margin-top: 285px;
    margin-right: auto;
    margin-bottom: 0;
    margin-left: calc(((100% - 340px) / 2));
  }
  .u-block-9917-87 {
    width: 340px;
    height: auto;
    min-height: 32px;
    margin-top: -356px;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: -72px;
  }
}</style>

<div class="custom-expanded u-clearfix u-custom-html u-block-9917-3">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <div class="u-secured-comment-wrapped u-secured-style" style="display: none;">
   
     </div>
    <aside class="side-bar">
        <sectionhtml class="side-bar__icon-box">
            <sectionhtml class="side-bar__icon-1">
                <div></div>
                <div></div>
                <div></div>
            </sectionhtml>
        </sectionhtml>
        <ul>
            <li>
                <a href="#"><i class="fa-search fa-solid"></i>   용병 등록</a>
            </li>
            <li>
                <a href="#"><i class="fa-search fa-solid"></i>   용병 리스트</a>
            </li>
            <li>
                <a href="#"><i class="fa-search fa-solid"></i>   용병 해지</a>
            </li>
        </ul>
    </aside>
</div>

<div class="custom-expanded u-clearfix u-custom-color-3 u-custom-html u-block-9917-88">
<table class="table">
    <tbody><tr><td colspan="2">
    <h5>용병 등록/용병 구인</h5></td></tr>
    <tr class="header">
        <td class="num">번호</td>
        <td class="title">제목</td>
        <td>작성자</td>
        <td>작성날짜</td>
    </tr>
    
</tbody>
</table>
<br>
<table>
    <tbody><tr>
        <td>
        <button u-secured-onclick="location.href='write.html'">글쓰기</button></td>
    </tr>
</tbody>
</table>
</div>

<div class="custom-expanded u-clearfix u-custom-html u-block-9917-87"></div>
  <div class="custom-expanded u-align-left u-clearfix u-custom-html u-custom-html-1">
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title></title>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
            <style>
                /* 노멀라이즈 시작 */
                body, ul, li {
                    margin: 0;
                    padding: 0;
                    list-style: none;
                }
                a {
                    color: inherit;
                    text-decoration: none;
                }
                /* 노멀라이즈 끝 */
                .side-bar > ul ul {
                    display: none;
                }
                body {
                    height: 755px;
                    background-color: #478ac9;
                    color: white;
                }
                :root {
                    --side-bar-width: 270px;
                    --side-bar-height: 90vh;
                }
                .side-bar {
                    position: fixed;
                    background-color: #478ac9;
                    color: white;
                    width: var(--side-bar-width);
                    min-height: var(--side-bar-height);
                    margin-top: calc((100vh - var(--side-bar-height)) / 2);
                    border-radius: 20px;
                    left: 0;
                    transform: translate(calc(var(--side-bar-width) * -0.8), 0);
                    transition: .5s;
                }
                .side-bar ul > li > a {
                    display: block;
                    color: white;
                    font-size: 1rem;
                    font-weight: normal;
                    padding-top: 20px;
                    padding-bottom: 20px;
                    padding-left: 50px;
                }
                .side-bar > ul > li {
                    position: relative;
                }
                .side-bar ul > li:hover > a {
                    background-color: #555;
                    border-bottom: 1px solid #999;
                }
                .side-bar > ul > li:hover > ul {
                    display: block;
                    position: absolute;
                    background-color: #888;
                    top: 0;
                    left: 100%;
                    width: 100%;
                }
                .side-bar:hover {
                    transform: translate(0, 0);
                }
            </style>
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
                        <a href="#"><i class="fa-search fa-solid"></i> 용병 등록</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa-search fa-solid"></i> 용병 리스트</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa-search fa-solid"></i> 용병 해지</a>
                    </li>
                </ul>
            </aside>
        </div>
</section>

<!-- 하단정보 -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

</body></html>