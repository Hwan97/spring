<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


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
	<Style>
	input:focus { 
		border: 0;
	}
		input:focus {outline:none !important;}
	</Style>
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
			<form:form commandName="boardVO" id="detailForm" name="detailForm" class="write_frm">
            <div class="content">
                <div class="content_header">공지사항</div>
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
                            <td><form:input path="datetime" class="registerDate" readonly="true" style="border:0;" /></td>
                            <th scope="row">조회수</th>
                            <td>${boardVO.hitCounter}</td>
                        </tr>
                        <tr>
                            <th scope="row">제목</th>
                            <td colspan="3">
                            ${boardVO.name}
                            </td>
                        </tr>
                        <tr>
                            <td class="view_contents" colspan="4">
                               ${boardVO.description}
                            </td>
                        </tr>
                    </table>

                    <div class="view_btn_wrap">
                        <a href="#" class="btn goList" onclick="javascript:GoSitePageLink('help_01');">목록</a>                        
                    </div>
                </div>
			</div>
			</form:form>
			<!-- content E -->
		</div>
		<!-- container wrap E -->

		<!-- footer S -->
		<%@ include file="../inc/footer.jsp" %>
		<!-- footer E -->
    </div>  
</body>
</html>