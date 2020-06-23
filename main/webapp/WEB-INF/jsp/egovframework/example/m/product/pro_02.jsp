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
					<h2>ServerCraft</h2>
				</div>
				<div class="content_body pt-0">
					<div class="product_intro">
						<div class="title_box">
							<h4 class="title">제품소개</h4>
						</div>
						<div class="content_box">
							<p class="content">ServerCraft는 서버 모듈만 설치하면 1대의 서버에서 관리를 할 수 있으며, 다수의 관리자가 각각의 PC에서 같은 서버를 공동으로 관리할 수 있습니다.</p>
						</div>
						<div class="image_box">
							<img src="images/subpage/product/pro_2_1.png" class="border-image">
						</div>
						<div class="feature_box clearfix">
							<div class="feature_1">
								<div class="feature_header_left">
									<p class="feature_title">무한한 확장성과 융통성</p>
								</div>
								<div class="feature_body_left">
									<p class="feature_content">서버 모듈만 설치하면 아무리 많은 서버라도 한대의 PC에서 관리할 수 있으며 여러명의 관리자가 여러대의 PC에서 같은 서버를 공동으로 관리할 수도 있습니다.</p>
								</div>
							</div>
							<div class="feature_2">
								<div class="feature_header_right">
									<p class="feature_title">쉬운 사용자 인터페이스</p>
								</div>
								<div class="feature_body_right">
									<p class="feature_content">서버관리자는 자신의 PC에서 GUI를 기반으로 각종 서버 관리 업무를 수행할 수 있으며 다양한 기종의 서버를 통합된 환경내에서 일원적으로 조작 및 관리할 수 있습니다.</p>
								</div>
							</div>
							<div class="feature_3">
								<div class="feature_header_left">
									<p class="feature_title">시스템 및 네트워크 부하 최소화</p>
								</div>
								<div class="feature_body_left">
									<p class="feature_content">최소한의 CPU, 메모리 네트워크 자원만을 사용하도록 설계되어 기존 업무에 영향이 없습니다.</p>
								</div>
							</div>
							<div class="feature_4">
								<div class="feature_header_right">
									<p class="feature_title">쉬운 설치, 풍부한 기능 제공</p>
								</div>
								<div class="feature_body_right">
									<p class="feature_content">서버 운영관리자의 업무를 대부분 처리할 수 있을 만큼 풍부하고 다양한 기능을 제공 합니다.</p>
									<p class="feature_content">일반 사용자가 직접 설치하고 즉시 사용할 수 있으며 별도의 장비가 추가로 소요되지 않습니다.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="product_function">
						<div class="title_box">
							<h4 class="title">제품기능</h4>
						</div>
						<div class="list_box">
							<ul class="list">
								<li>CPU, 메모리, 디스크 등 시스템자원사용량과 프로세스, 네트워크 접속상태 등에 대해 실시간 감시</li>
								<li>지정된 파일을 감시하여 이상 유무에 따라 통보(파일변경시 또는 파일 내 특정 문자열 발생시)</li>
								<li>설정된 임계치를 기준으로 이상 유무를 4단계의 심각도로 분류하여 관리자에게 통보</li>
								<li>전자메일, PC에 팝업 윈도우, 핸드폰 문자메세지 등으로 지정된 관리자에게 통보</li>
								<li>대상 서버 전체의 성능 및 프로세스 장애상황을 한눈에 그래픽으로 감시할 수 있는 종합 상황판</li>
							</ul>
						</div>
						<div class="function_box">
							<table class="function_table">
								<caption>ServerCraft 제품운영환경</caption>
								<colgroup>
									<col style="width: 100px">
								</colgroup>
								<tr>
									<th scope="row" class="category">실시간<br />디스플레이</th>
									<td class="text">
										<ul>
											<li class="spec_list">오류 및 경고메시지 한글로 실시간 디스플레이</li>
											<li class="spec_list">장애이력 유지 및 조회(유지기간 임의 성정), 이벤트 당시 시스템 상황 조회 및 분석</li>
											<li class="spec_list">성능이력 저장, 유지 및 지정된 시간대 조회 기능</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">프로세스<br />관리</th>
									<td class="text">
										<ul>
											<li class="spec_list">각 서버별 프로세스 작동현황 디스플레이</li>
											<li class="spec_list">프로세스 작동상태 감시 및 비정상 작동시 관리자에 경고 및 통보</li>
											<li class="spec_list">프로세스 우선순위 조정, 강제종료 및 자동 재시작</li>
											<li class="spec_list">특정 프로세스의 수를 지정한 범위로 자동 유지</li>
											<li class="spec_list">프로세스 가동 이력 유지 및 특정 시간대 자료 조회</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">작업 관리</th>
									<td class="text">
										<ul>
											<li class="spec_list">주기적으로 수행항 작업에 대해 스케줄 지정</li>
											<li class="spec_list">작업이력 유지</li>
											<li class="spec_list">Crontab 편집</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">백업 관리</th>
									<td class="text">
										<ul>
											<li class="spec_list">지정된 파일 및 디렉터리의 백업 및 복구</li>
											<li class="spec_list">백업스케줄 지정</li>
											<li class="spec_list">백업장치 지정 (디스크, 테이프)</li>
											<li class="spec_list">풀백업 및 인크리멘탈백업 기능</li>
											<li class="spec_list">백업파일 내용보기</li>
											<li class="spec_list">버전유지 수 지정</li>
											<li class="spec_list">백업관련 수행할 스크립트파일 지정</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">파일관리</th>
									<td class="text">
										<ul>
											<li class="spec_list">Unix, Linux, Windows 서버에 대해 공통 윈도우 탐색기 형태의 파일 관리자 UI제공</li>
											<li class="spec_list">윈도우 탐색기 기능과 같은 파일 시스템 관리</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">서버자 관리</th>
									<td class="text">
										<ul>
											<li class="spec_list">서버의 하드웨어 및 네트워크 구성정보 조회</li>
											<li class="spec_list">서버에 설치된 소프트웨어 정보 조회</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">사용자 관리</th>
									<td class="text">
										<ul>
											<li class="spec_list">Unix 서버에서 Group 및 User ID 정보 관리</li>
											<li class="spec_list">Group 및 User 추가 및 암호변경</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">파일송수신(FTP)</th>
									<td class="text">
										<ul>
											<li class="spec_list">관리자 PC와 서버 간 파일 및 디렉터리 송수신</li>
											<li class="spec_list">FTP 모드에서 디렉터리 새로만들기, 파일삭제, 파일편집 및 실행, 이름변경 등 조작가능</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">쉘명령어<br />관리</th>
									<td class="text">
										<ul>
											<li class="spec_list">지정된 서버에 대해 쉘명령어 수행 및 결과 디스플레이</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">원격 제어</th>
									<td class="text">
										<ul>
											<li class="spec_list">Windows 계열 서버의 화면을 관리자 PC에서 제어(마우스, 키보드 조종)</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">보고서 생성</th>
									<td class="text">
										<ul>
											<li class="spec_list">각종이력 로그자료를 바탕으로 일별, 월별, 시간대별 통계자료 출력</li>
											<li class="spec_list">CPU, 네트워크, 디스크 사용률 통계</li>
											<li class="spec_list">지정된 프로세스의 가동율, CPU점유율 등 일별, 월별 통계</li>
											<li class="spec_list">장애종류별 지속시간 통계</li>
											<li class="spec_list">장애목록 보고서 생성</li>
										</ul>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="product_spec">
						<div class="title_box">
							<h4 class="title">제품 운영 환경</h4>
						</div>
						<div class="spec_box">
							<table class="spec_table">
								<caption>ServerCraft 제품운영환경</caption>
								<colgroup>
									<col style="width: 100px">
								</colgroup>
								<tr>
									<th scope="row" class="category">서버</th>
									<td class="text">
										<ul>
											<li class="spec_list">- Windows NT/2000/XP</li>
											<li class="spec_list">- UNIX</li>
											<li class="spec_list">- JAVA System</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row" class="category">관리자</th>
									<td class="text">- Windows 95/98/ME/2000/XP</td>
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