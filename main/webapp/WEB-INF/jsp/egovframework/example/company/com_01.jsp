<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>

	<title>진진시스템(주)</title>
	<meta charset="utf-8">
	
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
					<h2>CEO 인사말</h2>
					<ul class="location">
						<li class="home">
							<a href="javascript:GoSitePageLink('main');">
								<img src="./images/subpage/location/location_home.png" alt="홈 이미지">
							</a>
						</li>
						<li class="font-regular">회사소개</li>
						<li class="font-bold">CEO 인사말</li>
					</ul>
				</div>
                <div class="content_body">
					<div class="content_top"></div>
                    <div class="content_text">
						<p class="bold">진진시스템(주)의 홈페이지를 방문해주신 여러분을 진심으로 환영합니다.<br /><br /> </p>
                        <p>
							순수한 자체 기술로써 다양한 종류의 시스템관리용 소프트웨어를 개발 및 판매하는 당사는 창업이래 기업 및 공공기관의 정보 시스템 관리 효율화를 위해 힘써 왔으며,
							국내 굴지의 대형 고객사들이 당사 제품을 적용하여 유명 외국산 제품들을 능가하는 제품 성능을 인정 받고 있습니다.
							<br />
							<br />
							저희는 이에 만족하지 않고 지속적으로 신기술 개발에 힘써 국내 산업 정보화에 이바지 하는 한편, 세계시장 개척을 목표로 매진하겠습니다.
							<br />
							<br />
							<b class="bold">진진시스템(주) 대표이사</b>
						</p>
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