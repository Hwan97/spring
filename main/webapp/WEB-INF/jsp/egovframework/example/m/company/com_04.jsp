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
                <h2 class="content_header">오시는길</h2>
                <div class="map">
                    <img src="images/subpage/company/map.png" class="map_img"/>
                </div>
                <div class="content_body">
                    <div class="map_info">
                        <table class="directions_tbl">
                            <tr>
                                <td class="company_directions"><i class="subway_icon"></i></td>
                                <td class="directions_text"><b>2호선 성수역 4번출구</b>에서<br>350m 직진, 연무장5길 좌측 진입하여 약 200m(5분)</td>
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