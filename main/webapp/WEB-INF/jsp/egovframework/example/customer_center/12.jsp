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
                    <div class="total">총 <b>864</b>건</div>
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
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<%-- <td align="center" class="listtd"><c:out value="${result.id}"/></a></td> --%>
            				<td align="left" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.id}"/>')"><c:out value="${result.name}"/>&nbsp;</td>            				
            				<%-- <td align="center" class="listtd"><c:out value="${result.description}"/>&nbsp;</td> --%>
            				<%-- <td align="center" class="listtd"><c:out value="${result.regUser}"/>&nbsp;</td> --%>
            				<td align="center" class="listtd"><c:out value="${result.hitcounter}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.datetime}"/>&nbsp;</td>
            			</tr>
        			</c:forEach> 
                        </tbody>
                    </table>
                  <!--   <ul class="paging">
                        <li class="first"><a href="#"></a></li>
                        <li class="prev"><a href="#"></a></li>
                        <li class="num start active"><a href="#">1</a></li>
                        <li class="num"><a href="#">2</a></li>
                        <li class="num"><a href="#">3</a></li>
                        <li class="num"><a href="#">4</a></li>
                        <li class="num"><a href="#">5</a></li>
                        <li class="num"><a href="#">6</a></li>
                        <li class="num"><a href="#">7</a></li>
                        <li class="num"><a href="#">8</a></li>
                        <li class="num"><a href="#">9</a></li>
                        <li class="num end"><a href="#">10</a></li>
                        <li class="next"><a href="#"></a></li>
						<li class="last"><a href="#"></a></li>
						<li class="write_btn"><a href="write.jsp">글작성</a></li>
                    </ul> -->
                    	<div id="paging">
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        		<form:hidden path="pageIndex" />
        	</div>
        	<div id="sysbtn">
        	  <ul>
        	      <li>
        	          <span class="btn_blue_l">
        	              <a href="javascript:fn_egov_addView();"><spring:message code="button.create" /></a>
                          <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                      </span>
                  </li>
              </ul>
        	</div>
                    <div class="search">
						<select id="searchCondition" name="searchCondition" title="조건선택">				
							<option value="all">전체</option>				
							<option value="subject">제목</option>
							<option value="content">내용</option>
						</select>
						<input id="searchKeyword" name="searchKeyword" title="검색어입력" class="inputText" type="text" value="">
						<input type="submit" value="검색" title="검색" class="btn search_btn">
						<input type="reset" value="초기화" title="초기화" class="btn reset_btn">
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