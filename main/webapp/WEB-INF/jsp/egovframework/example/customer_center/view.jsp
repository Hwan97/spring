<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>진진시스템(주)</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/pc/subpage.css'/>">
	<script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/classlist/1.2.20171210/classList.min.js"></script>
    <script src="<c:url value="/js/menu_link.js"/>" > </script>
</head>
<body>
	<div id="wrap">
		<!-- header S -->
		<%@ include file="../inc/header.jsp" %>
		<!-- header E -->

        <!-- main visual S -->
        <%@ include file="../inc/main_visual.jsp" %>
        <!-- main visual E -->
		
		<!-- container wrap S -->
		<div class="container_wrap clearfix">
            <!-- subNav & side S -->
            <%@ include file="./menu.jsp" %>
            <!-- subNav & side E -->

			<!-- content S -->
            <div class="content">
                <div class="content_header">
                    <h2>공지사항</h2>
                    <ul class="location">
                        <li class="home">
                            <a href="javascript:GoSitePageLink('main');">
                                <img src="./images/subpage/location/location_home.png" alt="홈 이미지">
                            </a>
                        </li>
                        <li class="font-regular">고객센터</li>
                        <li class="font-bold">공지사항</li>
                    </ul>
                </div>
                <div class="content_body">
                    <table class="view_tbl">
                        <caption>공지사항 상세정보 보기</caption>
                        <colgroup>
                            <col style="width:15%">
                            <col>
                            <col style="width:15%">
                            <col>
                        </colgroup>
                        <tr>
                            <th scope="row">등록일</th>
                            <td>2020-02-06</td>
                            <th scope="row">조회수</th>
                            <td>100</td>
                        </tr>
                        <tr>
                            <th scope="row">제목</th>
                            <td colspan="3">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</td>
                        </tr>
                        <tr>
                            <td class="view_contents" colspan="4">
                                <p>
									다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다. - FlexMate -<br><br>
									서버관리자는 자신의 PC에서 GUI를 기반으로 각종 서버 관리 업무를 수행할 수 있으며 다양한 기종의 서버들을 통합된 환경내에서 일원적으로 조작 및 관리할 수 있습니다. - ServerCraft -<br><br>
									시스템 자원의 중앙집중식 관리로 효율적인 시스템 자원을 황용하면, 분산된 환경의 네트워크에서 신규 및 응요 S/W의 자동배포와 신속한 원격제어로 PC 유지보수의 시간적, 경제적 손실을 감소 할 수 있는 배포/자산 관리도구 소프트웨어입니다. - JJ-Power*Net -<br><br>
									인사이동으로 인한 업무 인수인계 시 체계적으로 기록하여 신규 담당자나 경영자가 신속하게 업무를 파악할 수 있으며 업무의 연속성을 보장합니다. 또한 경영자의 지시사항을 기록하고 관리하여 누락을 방지하고 이행여부를 점검하므로써 효율적인 경영목표를 달성합니다. - 업무지시관리시스템 -
								</p>    
                            </td>
                        </tr>
                    </table>
                    <div class="view_btn_wrap clearfix">
                        <a href="#" class="btn prevBtn">이전글</a>
                        <a href="#" class="btn nextBtn">다음글</a>
                        <a href="#" class="btn goList" onclick="javascript:history.back();">목록</a>
                    </div>
                </div>
			</div>
			<!-- content E -->
		</div>
		<!-- container wrap E -->
		<!-- footer S -->
		<%@ include file="../inc/footer.jsp" %>
		<!-- footer E -->
    </div>
</body>
</html>