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
                    <h2>오시는길</h2>
                    <ul class="location">
                        <li class="home">
                            <a href="javascript:GoSitePageLink('main');">
                                <img src="./images/subpage/location/location_home.png" alt="홈 이미지">
                            </a>
                        </li>
                        <li class="font-regular">회사소개</li>
                        <li class="font-bold">오시는길</li>
                    </ul>
                </div>
                <div class="content_body">
					<div class="map">
                        <img src="./images/subpage/company/map.png" />
                    </div>
                    <div class="map_info">
                        <table class="directions_tbl">
                            <tr>
                                <td class="company_directions"><i class="subway_icon"></i></td>
                                <td class="directions_text"><b>2호선 성수역 4번출구</b>에서 350m 직진, 연무장5길 좌측 진입하여 약 200m(5분)</td>
                            </tr>
                            <tr>
                                <td class="comapny_address">주소</td>
                                <td class="address_text">(04782) 서울시 성동구 연무장5길 9-16(성수동 2가 블루스톤타워) 704호</td>
                            </tr>
                            <tr>
                                <td class="comapny_call">전화번호</td>
                                <td class="call_text">02-447-5967, 02-444-4223</td>
                            </tr>
                            <tr>
                                <td class="comapny_fax">팩스</td>
                                <td class="fax_text">02-447-5968</td>
                            </tr>
                            <tr>
                                <td class="comapny_sales">영업문의</td>
                                <td class="sales_text">sales@jinjin.co.kr</td>
                            </tr>
                            <tr>
                                <td class="comapny_technology">기술문의</td>
                                <td class="technology_text">wlsam@jinjin.co.kr</td>
                            </tr>
                        </table>
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