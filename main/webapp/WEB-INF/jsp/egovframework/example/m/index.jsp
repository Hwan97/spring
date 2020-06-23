<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>진진시스템(주)</title>
		<link rel="stylesheet" type="text/css" href="css/m/main.css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="./js/main.js"></script>
		<script src="./js/menu_link.js"></script>
	</head>
<body>
	<div id="wrap">
		<!-- header S -->
		<%@ include file="inc/header.jsp" %>
		<!-- header E -->
		<div class="container_wrap clearfix">
			<!-- left slider -->
			<div class="slider_wrap">
				<!-- slider content S -->
				<div class="slider_content_wrap">
					<div class="slider_content slide_01">
						<div class="slider_subject">SQLservlet</div>
						<p>
							웹 어플리케이션을 개발하기 위한 프레임워크이며<br />
							기존의 Struts 나 Spring 프레임워크를 대체합니다.<br />
							SQL 처리를 위한 공통 서블릿을 제공하여<br />
							서버용 모듈 개발없이 웹 응용시스템을 구축할 수 있습니다.
						</p>
					</div>
					<div class="slider_content slide_02">
						<div class="slider_subject">ServerCraft</div>
						<p>
							다양하고 뛰어난 기술로 서버를 관리합니다. <br />
							서버관리자는 자신의 PC에서 GUI를 기반으로 <br />
							각종 서버관리 업무를 수행할 수 있으며 다양한 기종의 서버들을<br />
							통합된 환경 내에서 일원적으로 조작 및 관리 할 수 있습니다.
						</p>
					</div>
				</div>
				<!-- slider content E -->
			</div>
			
			<div class="side">
				<!-- news S -->
				<div class="news">
					<div class="news_label">NEWS</div>
					<div class="news_plus">
						<a href="javascript:GoSitePageLink('help_01');">더보기</a>	<!-- MORE button -->
					</div>
					<div class="news_subject">
						<a href="./customer_center/view.jsp">
							다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어
						</a>
					</div>
					<div class="news_date">2020-02-06</div>
					<p class="news_content">
						다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.
					</p>
				</div>
				<!-- news E -->

				<div class="service">
					<!-- customer center S -->
					<div class="customer">
						<div class="customer_EN">Customer Center</div>
						<div class="customer_KO">고객센터</div>
						<div class="customer_call">02<i></i>447<i></i>5967</div>
						<div class="customer_mailbox">
							<span class="customer_email"><b class="title">영업문의</b><b>sales@jinjin.co.kr</b></span>
							<span class="customer_email"><b class="title">기술문의</b><b>wisam@jinjin.co.kr</b></span>
				  		</div>
					</div>
					<!-- customer center E -->
				</div>
			</div>
		</div>

		<!-- footer S -->
		<%@ include file="./inc/footer.jsp" %>
		<!-- footer E -->
	</div>
	<!-- script -->
	<script src="js/slider.js"></script>
</body>
</html>
