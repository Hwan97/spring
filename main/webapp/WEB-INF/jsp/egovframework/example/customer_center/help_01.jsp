<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%

  /**
  * @Class Name : egovBoardList.jsp
  * @Description : Board List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
  
%>

<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">

<head>
    <meta charset="UTF-8" />
    <style>
        strong {
            color: #000;
            border-bottom: 2px solid #002b5c !important;
            box-sizing: border-box;
            font-size: 1.15rem !important;
            font-weight: bold !important;
            padding: 0 0.3rem !important;
        }

        .paging li:nth-child(2) {
            padding: 0 1rem !important;
        }

        .paging li:nth-last-child(4) {
            padding: 0 1rem !important;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>진진시스템(주)</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/pc/subpage.css'/>">
    <script src="https://code.jquery.com/jquery-1.12.4.js"
        integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/classlist/1.2.20171210/classList.min.js"></script>
    <script src="<c:url value="/js/menu_link.js"/>"> </script>
    <script type="text/javaScript" language="javascript" defer="defer">
        <!--
        
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updateBoardView.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 등록 화면 function */
        function fn_egov_addView() {
           	document.listForm.action = "<c:url value='/addBoard.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/egovBoardList.do'/>";
           	document.listForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/egovBoardList.do'/>";
           	document.listForm.submit();
        }
        
        //-->

        /* $('.paging li:eq(0)').css('margin-left','0') */

        $(window).bind('beforeunload', function(){
        $('.search_btn').val('')
        });
    </script>

</head>

<body>
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        <div id="wrap">

            <%@ include file="../inc/header.jsp" %>
            <%@ include file="../inc/main_visual.jsp" %>


          

	<div class="container_wrap clearfix">
	<%@ include file="./menu.jsp" %>
            <!-- subNav & side E -->
            <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
                <input type="hidden" name="selectedId" />
                <!-- content S -->
                <div class="content">
                    <div class="content_header">
                        <h2>공지사항</h2>
                        <ul class="location">
                            <li class="home">
                                <a href="javascript:GoSitePageLink('main');">
                                    <img src="./images/subpage/location/location_home.png" alt="홈 이미지">
                                </a>
                            </li>
                            <li class="font-regular">고객센터</li>
                            <li class="font-bold">공지사항</li>
                        </ul>
                    </div>
                    <div class="content_body padding-none">
                        <div class="total">총 <b class="listCnt">${totCnt}</b>건</div>
                        <table class="board">
                            <caption>공지사항 목록</caption>
                            <colgroup>
                                <col class="w10p">
                                <col>
                                <col class="w10p date">
                                <col class="w10p">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">번호</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">등록일</th>
                                    <th scope="col">조회수</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="result" items="${resultList}" varStatus="status">
                                    <tr>
                                        <td align="center" class="listtd">
                                            <c:out
                                                value="${paginationInfo.totalRecordCount+2 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}" />
                                        </td>
                  
                                        <td align="left" class="listtd"><a
                                                href="javascript:fn_egov_select('<c:out value=" ${result.id}" />')"
                                            name="selectedId" >
                                            <c:out value="${result.name}" />&nbsp;</td>
                       
                                        <td align="center" class="listtd">
                                            <c:out value="${result.datetime}" />&nbsp;</td>
                                        <td align="center" class="listtd">
                                            <c:out value="${result.hitcounter}" />&nbsp;</td>                                            
                                       
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>

                        <div id="paging" class="paging">
                            <ui:pagination paginationInfo="${paginationInfo}" type="image"
                                jsFunction="fn_egov_link_page" />
                            <li class="write_btn"><a href="javascript:fn_egov_addView();">글작성</a></li>
                            <form:hidden path="pageIndex" />
                        </div>
                        <div id="sysbtn">
                            <ul>
                         
                            </ul>
                        </div>
                      

                        <div id="search" class="search" style="display:block !important">

                            <label for="searchCondition" style="visibility:hidden;"></label>
                            <form:select path="searchCondition" cssClass="use" id="searchCondition" title="조건선택">
                                <form:option value="1" label="제목" />
                                <form:option value="0" label="내용" />
                                <form:option value="2" label="전체" />
                            </form:select>

                            <label for="searchKeyword" style="visibility:hidden;display:none;">
                                <spring:message code="search.keyword" /></label>
                            <form:input path="searchKeyword" cssClass="txt" class="inputText" />

                            <!-- <a href="javascript:fn_egov_selectList();" class="btn search_btn">검색</a> -->
                            <input type="submit" value="검색" title="검색" class="btn search_btn"
                                onclick="javascript:fn_egov_selectList()">
                            <input type="reset" value="초기화" title="초기화" class="btn reset_btn">

                        </div>
                    </div>
                </div>

                <!-- content E -->
                <%@ include file="../inc/footer.jsp" %>
        </div>
    </form:form>
    <!-- container wrap E -->

    <!-- footer S -->
    <!-- footer E -->
    </div>
    </form:form>
</body>

</html>''