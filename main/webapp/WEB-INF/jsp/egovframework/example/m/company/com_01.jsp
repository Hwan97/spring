<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>진진시스템(주)</title>
		<link rel="stylesheet" type="text/css" href="./css/m/subpage.css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="./js/main.js"></script>
		<script src="./js/menu_link.js"></script>
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
			<!-- content S -->
            <div class="content">
                <div class="content_header">CEO 인사말</div>
                <div class="content_body">
<%--					<div class="content_top"></div>--%>
					<div class="content_topText">
						<p>
							진진시스템(주)의 홈페이지를 방문해주신 여러분을 진심으로 환영합니다.
						</p>
					</div>
                    <div class="content_text">
                        <p>
							순수한 자체 기술로써 다양한 종류의 시스템관리용 소프트웨어를 개발 및 판매 하고 있는 
							당사는 창업이래 기업 및 공공기관의 정보 시스템 관리 효율화를 위해 힘써 왔으며, 
							국내 굴지의 대형 고객사들이 당사 제품을 적용하여 유명 외국산 제품들을 능가하는 
							제품 성능을 인정 받고 있습니다.
							<br />
							<br />
							저희는 이에 만족하지 않고 지속적으로 신기술 개발에 힘써 국내 산업 정보화에 이바지 하는 한편, 
							세계시장 개척을 목표로 매진하겠습니다.
							<br />
							<br />
							진진시스템(주) 대표이사
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