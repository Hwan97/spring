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
				<div class="content_header">
					<h2>SQLservlet</h2>
				</div>
				<div class="content_body pt-0">
					<div class="product_intro">
						<div class="title_box">
							<h4 class="title">제품소개</h4>
						</div>
						<div class="content_box">
							<p class="content">SQLservlet은 SQL을 처리하는 공통 서블릿으로 웹 어플리케이션을 개발하기 위한 프레임워크입니다.</p>
						</div>
						<div class="image_box">
							<img src="images/subpage/product/pro_1_1.png" class="border-image">
						</div>
						<div class="feature_box clearfix">
							<div class="feature_1">
								<div class="feature_header_left">
									<p class="feature_title">서버모듈 작성없이 웹 어플리케이션 개발</p>
								</div>
								<div class="feature_body_left">
									<p class="feature_content">웹 어플리케이션을 개발하기 위한 프레임워크이며 기존의 Struts 또는 Spring 프레임워크를 대체합니다.</p>
									<p class="feature_content">SQL 처리를 위한 공통 서블릿을 제공하여 서버용 모듈 개발없이 웹 응용시스템을 구축할 수 있습니다.</p>
								</div>
							</div>
							<div class="feature_2">
								<div class="feature_header_right">
									<p class="feature_title">프로그램 변경 시 컨텍스트 재시작이 필요없음</p>
								</div>
								<div class="feature_body_right">
									<p class="feature_content">변경 모듈을 적용할 때 컨텍스트 재시작이 필요없습니다.</p>
									<p class="feature_content">프로그램 변경이 즉시 반영되어 24시간 가동되는 시스템이나 자주 변경이 일어나는 기간 업무시스템의 구축에 적합합니다.</p>
								</div>
							</div>
							<div class="feature_3">
								<div class="feature_header_left">
									<p class="feature_title">파워빌더로 개발하고 PDF로 보는 웹리포트</p>
								</div>
								<div class="feature_body_left">
									<p class="feature_content">리포트 개발의 4세대언어인 파워빌더 등을 사용하며 단말기에 PDF로 표출합니다.</p>
									<p class="feature_content">같은 리포트를 동시에 요청시 PDF를 재사용하여 응답시간을 최소화하고 여러대의 리포트서버를 지원하여 동시 사용자수의 최대화를 달성합니다.</p>
								</div>
							</div>
							<div class="feature_4">
								<div class="feature_header_right">
									<p class="feature_title">업무시스템 구축에 필요한 모든 기능을 제공</p>
								</div>
								<div class="feature_body_right">
									<p class="feature_content">웹 리포트, 작업 모니터링, MyBatis 형식의 SQL 작성, Stateful 및 Stateless 트랜잭션, 데스크탑용 C API 등을 제공하여 업무시스템 구축에 필요한 모든 기능을 갖춘 All in One 시스템입니다.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="product_function">
						<div class="title_box">
							<h4 class="title">제품기능</h4>
						</div>
						<div class="image_box mb-30">
							<div class="image">
								<img src="images/subpage/product/pro_1_2.jpg" class="border-image">
							</div>
							<div class="caption_box one">
								<div class="image_caption">< 네트워크 구성도 ></div>
							</div>
						</div>
						<div class="list_box">
							<ul class="list">
								<li>SQL 처리를 위한 공통 서블릿을 제공하여 서버모듈 작성 불필요</li>
								<li>프로그램 및 SQL 변경시 컨텍스트 재시작 없이 즉시 반영</li>
								<li>Mybatis 형식의 신택스를 가진 SQL 지원</li>
								<li>SQL을 서버에 저장하고 ID를 통한 접근으로 보안유지</li>
								<li>복잡한 로직을 위한 스토어드프로시저, 스프링모듈, JSP 호출 기능</li>
								<li>Stateful 및 Stateless 트랜잭션 기능</li>
								<li>단말기별 트랜잭션 모니터링 및 DB 사용 이력 조회</li>
								<li>리포트를 4세대언어로 작성하고 단말기에 PDF로 표출하는 웹리포팅 기능</li>
								<li>다중 WAS 운영을 지원하며 장애시 자동 Fail Over 기능</li>
								<li>데스크탑 PC용 C-API 제공</li>
							</ul>
						</div>
					</div>
					<div class="product_example">
						<div class="title_box">
							<h4 class="title">제품 실제 화면 예시</h4>
						</div>
						<div class="image_box">
							<div class="image">
								<img src="images/subpage/product/pro_1_3.jpg" class="border-image">
							</div>
							<div class="caption">
								<div class="caption_1">선수관리과학화시스템</div>
								<div class="caption_2">런던, 북경 올림픽<br />대진추첨시스템</div>
							</div>
						</div>
					</div>
					<div class="product_spec">
						<div class="title_box">
							<h4 class="title">제품 운영 환경</h4>
						</div>
						<div class="spec_box">
							<table class="spec_table">
								<caption>SQLservlet 제품운영환경</caption>
								<colgroup>
									<col style="width: 100px">
								</colgroup>
								<tr>
									<th scope="row" class="category">공식사이트</th>
									<td class="text">http://www.sqlservlet.com</td>
								</tr>
								<tr>
									<th scope="row" class="category">OS</th>
									<td class="text">Windows, Unix, Linux</td>
								</tr>
								<tr>
									<th scope="row" class="category">JDK</th>
									<td class="text">1.6 이상</td>
								</tr>
								<tr>
									<th scope="row" class="category">WAS</th>
									<td class="text">서블릿 2.4 / JSP 2.0 이상을 지원하는 모든 WAS</td>
								</tr>
								<tr>
									<th scope="row" class="category border-b-n">웹리포트</th>
									<td class="text">Windows OS</td>
								</tr>
							</table>
						</div>
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