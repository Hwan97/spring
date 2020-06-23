<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head><meta charset="UTF-8"/>
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
    <script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/classlist/1.2.20171210/classList.min.js"></script>
	<script src="<c:url value="/js/menu_link.js"/>" > </script>
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
        	var url = location.href;
        	console.log(url)
            $(".write_btn").css("display","block");
        });
    </script>
    <% }  %>
</head>

<body>
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
<div id="wrap">
 		<!-- header S -->
		<%!
   public String getClientIP(HttpServletRequest request) {
       String ip = request.getHeader("X-FORWARDED-FOR");
       if (ip == null || ip.length() == 0) ip = request.getHeader("Proxy-Client-IP");
       if (ip == null || ip.length() == 0) ip = request.getHeader("WL-Proxy-Client-IP");
        if (ip == null || ip.length() == 0) ip = request.getRemoteAddr();
        return ip;
     }

		String AllowIp[] = { "0:0:0:0:0:0:0:1", "127.0.0.1", "192.168.7.148", "192.168.7.182", "192.168.7.200"};
 %>
 <script>
// 	$(document).ready(function(){
// 		var menu = '<c:out value="${param.menu}" />';
// 		var idx = '<c:out value="${param.idx}" />';
// 		if(menu == "company"){
// 			switch(idx){
// 				case '0':
// 					$("#com_01").addClass("active");
// 					break;
// 				case '1':
// 					$("#com_02").addClass("active");
// 					break;
// 				case '2':
// 					$("#com_03").addClass("active");
// 					break;
// 				case '3':
// 					$("#com_04").addClass("active");
// 					break;
// 				default:
// 					break;
// 			}
// 		}
// 		if(menu == "product"){
// 			switch(idx){
// 				case '0':
// 					$("#pro_01").addClass("active");
// 					break;
// 				case '1':
// 					$("#pro_02").addClass("active");
// 					break;
// 				default:
// 					break;
// 			}
// 		}
// 		if(menu == "customer_center"){
// 			switch(idx){
// 				case '0':
// 					$("#help_01").addClass("active");
// 					break;
// 				default:
// 					break;
// 			}
// 		}
// 	});
 </script>

<div class="header_wrap">
    <div class="inner clearfix">
        <div class="logo_wrap float-left">
            <h1 class="logo"><a href="javascript:GoSitePageLink('main');"></a></h1>
        </div>
        <div class="menu_wrap float-right">
            <ul class="menu">
                <li class="item company text-align-center font-bold" onmouseover="text_change('회사소개');">
                    <h2><a href="javascript:GoSitePageLink('company')">회사소개</a></h2>
                </li>
                <li class="item product text-align-center font-bold" onmouseover="text_change('제품소개');">
                    <h2><a href="javascript:GoSitePageLink('product')">제품소개</a></h2>
                </li>
                <li class="item download text-align-center font-bold" onmouseover="text_change('다운로드');">
                    <h2><a href="javascript:GoSitePageLink('download')">다운로드</a></h2>
                </li>
                <li class="item demo text-align-center font-bold" onmouseover="text_change('데모');">
                    <h2><a href="javascript:GoSitePageLink('demo')">데모</a></h2>
                </li>
                <li class="item customer_center text-align-center font-bold" onmouseover="text_change('고객센터');">
                    <h2><a href="javascript:GoSitePageLink('customer_center')">고객센터</a></h2>
                </li>
            </ul>

            <!-- mega menu S -->
            <div class="mega_menu_wrap">
                <div class="inner clearfix">
                    <div class="intro_wrap float-left">
                        <div class="intro">
                            <h1 class="intro_header font-bold">회사소개</h1>
                            <p class="intro_body font-bold">27년의 소프트웨어 개발업력을 가진<br />진진시스템을 소개합니다.</p>
                        </div>
                    </div>
                    <div class="mega_menu float-right">
                        <ul class="menu">
                            <li class="item company text-align-center" onmouseover="text_change('회사소개');">
                                <a href="javascript:GoSitePageLink('com_01')"><h3>CEO 인사말</h3></a>
                                <a href="javascript:GoSitePageLink('com_02')"><h3>회사 연혁</h3></a>
                                <a href="javascript:GoSitePageLink('com_03')"><h3>사업실적</h3></a>
                                <a href="javascript:GoSitePageLink('com_04')"><h3>오시는길</h3></a>
                            </li>
                            <li class="item product text-align-center" onmouseover="text_change('제품소개');">
                                <a href="javascript:GoSitePageLink('pro_01')"><h3>SQLservlet</h3></a>
                                <a href="javascript:GoSitePageLink('pro_02')"><h3>ServerCraft</h3></a>
                            </li>
                            <li class="item download text-align-center" onmouseover="text_change('다운로드');">
                                <a href="javascript:GoSitePageLink('download')"><h3>다운로드</h3></a>
                            </li>
                            <li class="item demo text-align-center" onmouseover="text_change('데모');">
                                <a href="javascript:GoSitePageLink('demo_01')"><h3>SQLservlet</h3></a>
                            </li>
                            <li class="item customer_center text-align-center" onmouseover="text_change('고객센터');">
                                <a href="javascript:GoSitePageLink('help_01')"><h3>공지사항</h3></a>
                                <a href="javascript:GoSitePageLink('help_02')"><h3>영업문의</h3></a>
                                <a href="javascript:GoSitePageLink('help_03')"><h3>기술문의</h3></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- mega menu E -->
        </div>
    </div>
</div>

 <script>
//     function text_change(target) {
//         var text = document.querySelector(".intro_header");
//         text.innerHTML=target;
//     }
 </script>
		<!-- header E -->

        <!-- main visual S -->
        <div class="sub_mainVisual_box text-align-center">
    <div class="sub_mainVisual">
        <div class="sub_mainText">
            <div class="sub_mainTextHeader">
                <h2>고객께 최선을 다하는 <b>진진시스템</b></h2>
            </div>
            <div class="sub_mainTextBody">
                <p>
                    진진시스템(주)는 풍부한 기술노하우와 정예화된 수행능력을 바탕으로
                    <br />
                    지난 27년동안 뛰어난 제품 품질을 인정받고 있는 Total IT Service 전문기업입니다.
                </p>
            </div>
        </div>
    </div>
</div>
        <!-- main visual E -->
		
		<!-- container wrap S -->
		<div class="container_wrap clearfix">
            <!-- subNav & side S -->
            <div class="side">
    <h2 class="side_text text-align-center bold">고객센터</h2>
    <ul class="side_nav">
        <li id="help_01" class="sideList">
            <h2>
                <a href="javascript:GoSitePageLink('help_01');">공지사항</a>
            </h2>
        </li>
        <li class="sideList">
            <h2>
                <a href="javascript:GoSitePageLink('help_02');">영업문의</a>
            </h2>
        </li>
        <li class="sideList">
            <h2>
                <a href="javascript:GoSitePageLink('help_03');">기술문의</a>
            </h2>
        </li>
    </ul>
</div>


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
                <!-- <ul class="paging">
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
						
                    </ul> -->
                 <div id="paging" class="paging">
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page"  />
        		<li class="write_btn"><a href="javascript:fn_egov_addView();">글작성</a></li>
        		<form:hidden path="pageIndex" />
        	</div>
        	<div id="sysbtn">
        	  <ul>
        	      <%-- <li>
        	          <span class="btn_blue_l">
        	              <a href="javascript:fn_egov_addView();"><spring:message code="button.create" /></a>
                          <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                      </span>
                  </li> --%>
              </ul>
        	</div>
                  <%--   <div id="search"  class="search" style="display:blcok !important">
						<form:select path="searchCondition" cssClass="use" id="searchCondition" title="조건선택">
        					<form:option value="1" label="Name" />제목
        					<form:option value="0" label="ID" />내용
        				</form:select>
						<input id="searchKeyword" name="searchKeyword" title="검색어입력" class="inputText" type="text" value="">
						<form:input path="searchKeyword" cssClass="txt"/>
						<input type="submit" value="검색" title="검색" class="btn search_btn">
						<input type="reset" value="초기화" title="초기화" class="btn reset_btn">
					</div> --%>
					  	<%-- <div id="search"  class="search" >
					  	<select id="searchCondition" name="searchCondition" title="조건선택">				
							<option value="all">전체</option>				
							<option value="subject">제목</option>
							<option value="content">내용</option>
						</select>
        				
        		<ul>
        			<li>
        			    <label for="searchCondition" style="visibility:hidden;"></label>
        			</li>
        			<li><label for="searchKeyword" style="visibility:hidden;display:none;"></label>
                        <form:input path="searchKeyword" cssClass="txt"/>
                    </li>
        			<li>
        	            <span class="btn_blue_l">
        	                <a href="javascript:fn_egov_selectList();"><spring:message code="button.search" /></a>
        	                <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
        	            </span>
        	        </li>
                </ul>
        	</div> --%>
        	
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
		<div class="footer_wrap">
    <div class="footer clearfix">
        <div class="footer_img_wrap float-left">
            <div class="footer_img wh-inherit"></div>
        </div>
        <div class="footer_info pl-15 pt-20 float-left">
            <div class="footer_company_name text-align-left">진진시s스템(주)</div>
            <p class="footer_address text-align-left">
                (04782) 서울시 성동구 연무장5길 9-16(성수동 2가 블루스톤타워) 704호 대표전화 : 02-447-5967, 팩스번호 : 02-444-4223
                <br />
                Copyright@2020 JinJin System. All right reserved.
            </p>
        </div>
    </div>
</div>
		<!-- footer E -->
    </div>
      </form:form>
</body>
</html>

