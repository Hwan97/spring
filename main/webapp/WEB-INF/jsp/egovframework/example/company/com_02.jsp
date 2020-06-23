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
                    <h2>회사연혁</h2>
                    <ul class="location">
                        <li class="home">
                            <a href="javascript:GoSitePageLink('main');">
                                <img src="./images/subpage/location/location_home.png" alt="홈 이미지">
                            </a>
                        </li>
                        <li class="font-regular">회사소개</li>
                        <li class="font-bold">회사연혁</li>
                    </ul>
                </div>
                <div class="content_body">
                    <div class="tab_menu clearfix">
                        <div class="tab_01 active">현재 ~ 2011</div>
                        <div class="tab_02" style="width: 300px;">2010 ~ 2001</div>
                        <div class="tab_03">2000 ~ 1993</div>
                    </div>
                    <div class="content_text">
                        <b class="company_intro">Total IT Service 전문기업, 진진시스템</b>
                        <div class="timeline_01">
                            <div class="history">
                                <div class="year">2020</div>
                                <ul class="inner">
                                    <li><b>01월</b><span><i class="dot"></i>회사사옥 성수동으로 이전</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2016</div>
                                <ul class="inner">
                                    <li><b>05월</b><span><i class="dot"></i>진진시스템 부산지소 개소</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2015</div>
                                <ul class="inner">
                                    <li><b>01월</b><span><i class="dot"></i>강소기업 선정[고용노동부]</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2013</div>
                                <ul class="inner">
                                    <li><b>04월</b><span><i class="dot"></i>진진시스템 부설연구소 방이동으로 이전</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2012</div>
                                <ul class="inner">
                                    <li><b>09월</b><span><i class="dot"></i>위변조방지시스템(스마트써티) 웹서비스 구축</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2011</div>
                                <ul class="inner">
                                    <li><b>05월</b><span><i class="dot"></i>진진시스템 부설연구소 하남시 아이테코 461호로 이전</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="timeline_02">
                            <div class="history">
                                <div class="year">2010</div>
                                <ul class="inner">
                                    <li><b>05월</b><span><i class="dot"></i>벤처기업 등록 갱신</span></li>
                                    <li><b>03월</b><span><i class="dot"></i>FlexMate GS인증 획득</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2008</div>
                                <ul class="inner">
                                    <li><b>06월</b><span><i class="dot"></i>FlexMate 출시</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>벤처기업 등록 갱신</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2007</div>
                                <ul class="inner">
                                    <li><b>06월</b><span><i class="dot"></i>원격감시로봇 (H/W)출시</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>jjWebReport 출시</span></li>
                                    <li><b>04월</b><span><i class="dot"></i>SQLinAJAX 출시</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2006</div>
                                <ul class="inner">
                                    <li><b>06월</b><span><i class="dot"></i>벤쳐기업 재등록 [서울지방중소기업청]</span></li>
                                    <li><b>01월</b><span><i class="dot"></i>JJXWeb X-Internet개발</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2005</div>
                                <ul class="inner">
                                    <li><b>07월</b><span><i class="dot"></i>특허출원등록 "데이터베이스 복제시스템 및 그 복제방법" [특허 제0503899호]</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2004</div>
                                <ul class="inner">
                                    <li><b>06월</b><span><i class="dot"></i>벤처기업 등록 [서울지방중소기업청]</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2003</div>
                                <ul class="inner">
                                    <li><b>07월</b><span><i class="dot"></i>데이타 자동 복제 솔루션 ShadowSYNC 개발</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>기업부설연구소 설립 및 인증서 획득</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2002</div>
                                <ul class="inner">
                                    <li><b>09월</b><span><i class="dot"></i>DB 및 파일시스템 재해복구 프로그램 SeconDB 개발</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>데이터베이스 장애감시 및 자동백업 프로그램 DB Craft 개발</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>서버 통합운영관리 프로그램 ServerCraft 개발</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>문자메시지 발송 서버 JJ-SMS 개발</span></li>
                                    <li><b>03월</b><span><i class="dot"></i>제 5회 교육정보화 전시회 참가</span></li>
                                    <li><b>01월</b><span><i class="dot"></i>병역특례 업체 선정</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">2001</div>
                                <ul class="inner">
                                    <li><b>10월</b><span><i class="dot"></i>정부 조달품목 등록 및 조달단가 계약</span></li>
                                    <li><b>07월</b><span><i class="dot"></i>JJ-Power*Net 행정자치부 행정업무용 S/W 선정</span></li>
                                    <li><b>06월</b><span><i class="dot"></i>제 4회 교육정보화 전시회 참가</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>군납안전 진단업체 등록</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="timeline_03">
                            <div class="history">
                                <div class="year">2000</div>
                                <ul class="inner">
                                    <li><b>12월</b><span><i class="dot"></i>웹서버 상태 진단 및 감시 프로그램 JJ-Web*Care 개발</span></li>
                                    <li><b>08월</b><span><i class="dot"></i>PC 통합 자원관리 소프트웨어 JJ-Net*Cruise 개발</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>PC 원격제어 소프트웨어 JJ-Remote*Control 개발</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>소프트웨어 사업자 신고 (신고 No.200-53-00539)</span></li>
                                    <li><b>05월</b><span><i class="dot"></i>조달청 내자 입찰 등록 (등록 No. 12-14-2841)</span></li>
                                    <li><b>04월</b><span><i class="dot"></i>UNIX 서버간 S/W 배포 및 자원관리 프로그램 JJ-Power*Net for EMS 개발</span></li>
                                    <li><b>04월</b><span><i class="dot"></i>COMDEX CHINA '2000 북경 전시회 참가</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">1999</div>
                                <ul class="inner">
                                    <li><b>12월</b><span><i class="dot"></i>진진시스템(주) 법인 전환 (사업자등록 No.206-81-196335)</span></li>
                                    <li><b>11월</b><span><i class="dot"></i>타 시스템간 자료 교환 소프트웨어 ISAM_NET 개발</span></li>
                                    <li><b>11월</b><span><i class="dot"></i>OPCS '99전시회 참가</span></li>
                                    <li><b>07월</b><span><i class="dot"></i>한국소프트웨어 진흥원 구의센터 졸업</span></li>
                                    <li><b>06월</b><span><i class="dot"></i>BANKING KOREA '99 전시회 참가</span></li>
                                    <li><b>03월</b><span><i class="dot"></i>COMDEX CHINA '99 북경전시회 참가</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">1998</div>
                                <ul class="inner">
                                    <li><b>12월</b><span><i class="dot"></i>'98 신소프트웨어 연말우수상 (정보통신부장관)</span></li>
                                    <li><b>12월</b><span><i class="dot"></i>SFT EXPO '98전시회 참가</span></li>
                                    <li><b>09월</b><span><i class="dot"></i>정보화 촉진 기금사업자 지정 (정보통신연구관리단)</span></li>
                                    <li><b>06월</b><span><i class="dot"></i>'98 SEK/Windows World 전시회 참가</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">1997</div>
                                <ul class="inner">
                                    <li><b>07월</b><span><i class="dot"></i>한국소프트웨어진흥원 구의센터 입주</span></li>
                                    <li><b>01월</b><span><i class="dot"></i>JJ-ARS Web Fax Server 개발</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">1996</div>
                                <ul class="inner">
                                    <li><b>05월</b><span><i class="dot"></i>JJ-MAIL 개발</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">1995</div>
                                <ul class="inner">
                                    <li><b>07월</b><span><i class="dot"></i>JJ-Linux 개발</span></li>
                                    <li><b>06월</b><span><i class="dot"></i>한국전산업협동조합 회원사</span></li>
                                </ul>
                            </div>
                            <div class="history">
                                <div class="year">1993</div>
                                <ul class="inner">
                                    <li><b>10월</b><span><i class="dot"></i>PC 통합관리 소프트웨어 JJ-Power*NET 개발</span></li>
                                    <li><b>10월</b><span><i class="dot"></i>진진시스템 설립 (사업자등록 No.217-16-70615)</span></li>
                                </ul>
                            </div>
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

	<!-- script -->
    <script>
        $(document).ready(function(){
            $(".tab_01").click(function(){
                $(".timeline_02").css("display","none");
                $(".timeline_03").css("display","none");

                $(".timeline_01").css("display","block");
                $(".tab_02").removeClass("active");
                $(".tab_03").removeClass("active");
                $(".tab_01").addClass("active");
            });
            $(".tab_02").click(function(){
                $(".timeline_01").css("display","none");
                $(".timeline_03").css("display","none");

                $(".timeline_02").css("display","block");
                $(".tab_01").removeClass("active");
                $(".tab_03").removeClass("active");
                $(".tab_02").addClass("active");
            });
            $(".tab_03").click(function(){
                $(".timeline_01").css("display","none");
                $(".timeline_02").css("display","none");

                $(".timeline_03").css("display","block");
                $(".tab_01").removeClass("active");
                $(".tab_02").removeClass("active");
                $(".tab_03").addClass("active");
            });
        })
    </script>
</body>
</html>