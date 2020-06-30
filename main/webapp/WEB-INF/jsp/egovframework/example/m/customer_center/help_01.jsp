<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>진진시스템(주)</title>
		<link rel="stylesheet" type="text/css" href="./css/m/subpage.css">
		<link rel="stylesheet" type="text/css" href="./css/m/reset.css">			
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="./js/main.js"></script>
		<script src="./js/menu_link.js"></script>
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
        <%
            boolean isAllow = false;
            String ip = getClientIP(request);
            for(int i =0; i<AllowIp.length; i++){
                if(ip.equals(AllowIp[i])){
                    isAllow = true;
                    break;
                }
            }
            System.out.println("UserIP : "+ip+", ALLOW : "+isAllow);
            if(isAllow){
        %>
        <script>
            $(document).ready(function () {
                $(".write_btn").css("display","block");
            });
        </script>
        <% }  %>
<%-- 			<%!
   public String getClientIP(HttpServletRequest request) {
       String ip = request.getHeader("X-FORWARDED-FOR");
       if (ip == null || ip.length() == 0) ip = request.getHeader("Proxy-Client-IP");
       if (ip == null || ip.length() == 0) ip = request.getHeader("WL-Proxy-Client-IP");
        if (ip == null || ip.length() == 0) ip = request.getRemoteAddr();
        return ip;
     }

		String AllowIp[] = { "0:0:0:0:0:0:0:1", "127.0.0.1", "192.168.7.148", "192.168.7.182", "192.168.7.200"};
 %>  --%>
	</head>
	
<body>
    
<div id="wrap">
 		<!-- header S -->

        <!-- header S -->
        <%@ include file="../inc/header.jsp" %>
        <!-- header E -->

        <!-- main visual S -->
        <%@ include file="../inc/main_visual.jsp" %>
        <!-- main visual E -->
		
		<!-- container wrap S -->
		<div class="container_wrap clearfix">

			<!-- content S -->
			<form:form commandName="searchVO" id="listForm" name="listForm" method="post">
			        <input type="hidden" name="selectedId" />
			
            <div class="content">
                <div class="content_header">공지사항</div>
                <div class="content_body">
                    <div class="total">총 <b class="listCnt">${totCnt}</b>건</div>                  
                    <table class="board">
                        <caption>공지사항 목록</caption>
                        <colgroup>
                            <col>
                            <col style="width:80px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">제목</th>
                                <th scope="col">등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                    <c:forEach var="result" items="${resultList}" varStatus="status">
            			<tr>
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+2 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<%-- <td align="center" class="listtd"><c:out value="${result.id}"/></a></td> --%>
            				<td align="left" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.id}"/>')" name="selectedId" ><c:out value="${result.name}"/>&nbsp;</td>            				
            				<%-- <td align="center" class="listtd"><c:out value="${result.description}"/>&nbsp;</td> --%>
            				<%-- <td align="center" class="listtd"><c:out value="${result.regUser}"/>&nbsp;</td> --%>
            				<td align="center" class="listtd"><c:out value="${result.datetime}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.hitcounter}"/>&nbsp;</td>
            				<%-- <td align="center" class="listtd"><c:out value="${result.totCnt}"/>&nbsp;</td> --%>
            			</tr>
        			</c:forEach> 
                        </tbody>
                    </table>
                     <div id="paging" class="paging" >
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page"  />
        		<!-- <li class="write_btn"><a href="javascript:fn_egov_addView();">글작성</a></li> -->
        		<form:hidden path="pageIndex" />
        	</div>
               	<div id="search" class="search" style="display:block !important">
        	
        			    <label for="searchCondition" style="visibility:hidden;"></label>
        				<form:select path="searchCondition" cssClass="use" id="searchCondition" title="조건선택">
        					<form:option value="1" label="제목" />
        					<form:option value="0" label="내용" />
        				<form:option value="2" label="전체" />        				
        				</form:select>
        	
        			<label for="searchKeyword" style="visibility:hidden;display:none;"><spring:message code="search.keyword" /></label>
                        <form:input path="searchKeyword" cssClass="txt" class="inputText" />
       			        	          
        	                <!-- <a href="javascript:fn_egov_selectList();" class="btn search_btn">검색</a> -->
        	                <input type="submit" value="검색" title="검색" class="btn search_btn" onclick="javascript:fn_egov_selectList()">
        	                <input type="reset" value="초기화" title="초기화" class="btn reset_btn">        	                        	            
    
        	</div>
                </div>
			</div>
			<!-- content E -->
		</div>
		</form:form>
		<!-- container wrap E -->

        <!-- footer S -->
        <%@ include file="../inc/footer.jsp" %>
        <!-- footer E -->
    </div>
  
</body>
</html>