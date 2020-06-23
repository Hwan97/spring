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
			<!-- left side menu S -->
            <div class="side">
                <h2 class="side_text text-align-center bold">다운로드</h2>
                <ul class="side_nav">
                    <li class="sideList active">
						<h2>
							<a href="javascript:GoSitePageLink('download');">다운로드</a>
						</h2>
					</li>
                </ul>
			</div>
			<!-- left side menu E -->

			<!-- content S -->
            <div class="content">
                <div class="content_header">
                    <h2>다운로드</h2>
                    <ul class="location">
                        <li class="home">
                            <a href="javascript:GoSitePageLink('main');">
                                <img src="./images/subpage/location/location_home.png" alt="홈 이미지">
                            </a>
                        </li>
                        <li class="font-regular">다운로드</li>
                        <li class="font-bold">다운로드</li>
                    </ul>
                </div>
                <div class="content_body">
                    <div class="download_wrap">
                        <h3 class="download_subject">SQLservlet<span>운영도구</span></h3>
                        <table class="download_product">
                            <caption>SQLservlet 다운로드</caption>
                            <colgroup>
                                <col style="width: 337px;">
                                <col style="width: 337px;">
                                <col style="width: 15px;">
                                <col style="width: 200px">
                            </colgroup>
                            <tr>
                                <th scope="row">Part</th>
                                <th scope="row">OS</th>
                                <th scope="row">File</th>
                                <th scope="row">Size</th>
                            </tr>
                            <tr class="solidTop">
                                <td rowspan="2">Document</td>
                                <td>팜플랫</td>
                                <td><a href="javascript:GoSitePageLink('file_01_01');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>0.3MB</td>
                            </tr>
                            <tr>
                                <td>메뉴얼</td>
                                <td><a href="javascript:GoSitePageLink('file_01_02');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>3.2MB</td>
                            </tr>
                            <tr class="solidTop">
                                <td>Server</td>
                                <td>설치파일</td>
                                <td><a href="javascript:GoSitePageLink('file_01_03');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>63MB</td>
                            </tr>
                        </table>
                    </div>
                    <div class="download_wrap">
                        <h3 class="download_subject">ServerCraft<span>서버관리도구</span></h3>
                        <table class="download_product">
                            <caption>ServerCraft 다운로드</caption>
                            <colgroup>
                                <col style="width: 337px;">
                                <col style="width: 337px;">
                                <col style="width: 15px;">
                                <col style="width: 200px">
                            </colgroup>
                            <tr>
                                <th scope="row">Part</th>
                                <th scope="row">OS</th>
                                <th scope="row">File</th>
                                <th scope="row">Size</th>
                            </tr>
                            <tr class="solidTop">
                                <td rowspan="5">Server</td>
                                <td>Windows</td>
                                <td><a href="javascript:GoSitePageLink('file_02_01');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>2MB</td>
                            </tr>
                            <tr>
                                <td>Solaris</td>
                                <td><a href="javascript:GoSitePageLink('file_02_02');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>3MB</td>
                            </tr>
                            <tr>
                                <td>Linux</td>
                                <td><a href="javascript:GoSitePageLink('file_02_03');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>1MB</td>
                            </tr>
                            <tr>
                                <td>AIX</td>
                                <td><a href="javascript:GoSitePageLink('file_02_04');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>1MB</td>
                            </tr>
                            <tr>
                                <td>HP_UX</td>
                                <td><a href="javascript:GoSitePageLink('file_02_05');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>2MB</td>
                            </tr>
                            <tr class="solidTop">
                                <td rowspan="2">Admin</td>
                                <td>Windows(한글)</td>
                                <td><a href="javascript:GoSitePageLink('file_02_06');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>2.6MB</td>
                            </tr>
                            <tr>
                                <td>제안서</td>
                                <td><a href="javascript:GoSitePageLink('file_02_07');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>0.4MB</td>
                            </tr>
                            <tr class="solidTop">
                                <td rowspan="2">Document</td>
                                <td>메뉴얼</td>
                                <td><a href="javascript:GoSitePageLink('file_02_08');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>2.2MB</td>
                            </tr>
                            <tr>
                                <td>영문 팜플렛</td>
                                <td><a href="javascript:GoSitePageLink('file_02_09');"><img src="./images/subpage/download/file.gif"></a></td>
                                <td>3MB</td>
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