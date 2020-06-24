<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

	<head>
		<!-- **** 크롬 / IE / 엣지 / 파이어폭스 버전별 테스트 ****
		크롬	: 48까지 정상적으로 작동(2016-01-21) - 48.0.2564.109
		IE 	: IE8까지 정상적으로 작동(2009-03-19)
		엣지	: 44까지 정상적으로 작동
		파폭	: 29까지 정상적으로 작동(2014-04-29) - 29.0
		-->	
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>진진시스템(주)</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/pc/main.css'/>">		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/classlist/1.2.20171210/classList.min.js"></script>		
		<script src="<c:url value="/./js/main.js"/>" /> </script>	
		<script src="<c:url value="/js/slider.js"/>" > </script>	
		<script src="<c:url value="/js/menu_link.js"/>" > </script>
		
<!-- 	<script type="text/javaScript" language="javascript" defer="defer">
 
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	console.log('asd')
        	document.detailForm.selectedId.value = id;
           	document.detailForm.action = "<c:url value='/updateBoardView.do'/>";
           	document.detailForm.submit();
        }
        
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updateSampleView.do'/>";
           	document.listForm.submit();
        
        /* 글 등록 화면 function */
        function fn_egov_addView() {
           	document.detailForm.action = "<c:url value='/addBoard.do'/>";
           	document.detailForm.submit();
        }
        
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.detailForm.action = "<c:url value='/egovBoardList.do'/>";
           	document.detailForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.detailForm.pageIndex.value = pageNo;
        	document.detailForm.action = "<c:url value='/egovBoardList.do'/>";
           	document.detailForm.submit();
        }
        

	</script>	 -->
	
	</head>
	
	
<body>
	<div id="wrap">
		<!-- header S -->
		<%@ include file="./inc/header.jsp" %>
		<!-- header E -->

        <!-- fade background S -->
        <div class="fade_container">
			<div class="bg_1 fade_img1"></div>
			<div class="bg_2 fade_img2"></div>
			<div class="bg_3 fade_img3"></div>
		</div>
        <!-- fade background E -->

		<div class="container_wrap clearfix">
			<!-- left slider -->
			<div class="inner_wrap">
				<div class="slider_wrap">
					<!-- slider controller S -->
					<div class="slider_control">
						<div class="slider_no">1/2</div>
						<div class="slider_btn slider_prev"></div>
						<div class="slider_btn slider_stop"></div>
						<div class="slider_btn slider_start"></div>
						<div class="slider_btn slider_next"></div>
					</div>
					<!-- slider controller E -->

					<!-- slider content S -->
					<div class="slider_content_wrap">
						<div class="slider_content slide_01">
							<div class="TitleContent_wrap">
								<div class="slider_subject">SQLservlet</div>
								<p>
									웹 어플리케이션을 개발하기 위한 프레임워크이며<br />
									기존의 Struts 나 Spring 프레임워크를 대체합니다.<br />
									SQL 처리를 위한 공통 서블릿을 제공하여<br />
									서버용 모듈 개발없이 웹 응용시스템을 구축할 수 있습니다.
								</p>
								<div class="gotoBtn">
									<a href="javascript:GoSitePageLink('pro_01');">
										<img src="./images/main/slider/shortcut.png" />
									</a>
								</div>
							</div>
						</div>
						<div class="slider_content slide_02">
							<div class="TitleContent_wrap">
								<div class="slider_subject">ServerCraft</div>
								<p>
									다양하고 뛰어난 기술로 서버를 관리합니다. <br />
									서버관리자는 자신의 PC에서 GUI를 기반으로 <br />
									각종 서버관리 업무를 수행할 수 있으며 다양한 기종의 서버들을<br />
									통합된 환경 내에서 일원적으로 조작 및 관리 할 수 있습니다.
								</p>
								<div class="gotoBtn">
									<a href="javascript:GoSitePageLink('pro_02');">
										<img src="./images/main/slider/shortcut.png" />
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- slider content E -->
				</div>

				<!-- right side -->
				<div class="side">
					<!-- news S -->			
					<form:form commandName="boardVO" id="listForm" name="listForm" method="post">
							  
					<%-- <form:form commandName="boardVO" id="detailForm" name="detailForm" class="write_frm"> --%>
					<div class="news">
						<div class="news_label">NEssWSs</div>
						<div class="news_plus">
							<a href="javascript:GoSitePageLink('customer_center');">더보기</a>	<!-- MORE button -->
						</div>
						<div class="news_subject">
							<a href="javascript:fn_egov_select('<c:out value="${boardList.id}"/>')" name="selectedId" ><c:out value="${boardList.name}"/>&nbsp;
							<%-- ${boardList.name} --%>								 												
						</div>
						<div class="news_date">
						${boardList.datetime}
						<%-- <td align="left" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${boardList.id}"/>')" name="selectedId" ><c:out value="${boardList.name}"/>&nbsp;</td>
						<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${boardList.id}"/>')"><c:out value="${boardList.id}"/></a></td> --%>
					
						</div>
						<div class="news_content" style="background:white;" id="news_content">
							${boardList.description}
														<%-- <a href="javascript:fn_egov_select('<c:out value="${boardList.id}"/>')" name="selectedId" id="selectedId"><c:out value="${boardList.id}"/></a>
														<span value="${boardList.id}" onclick="fn_egov_select()" name="selectedId" id="selectedId"></span> --%>																				
						</div>
					</div>
			
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
        			
					</form:form>
					<form:form commandName="searchVO" id="listForm" name="listForm" method="post">
						<%-- <a href="javascript:fn_egov_select('<c:out value="${boardList.id}"/>')" name="selectedId" ><c:out value="${boardList.name}"/>&nbsp; --%>
						<td align="left" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.id}"/>')" name="selectedId" ><c:out value="${result.name}"/>&nbsp;</td>            				
					</form:form>							
					<!-- news E -->
					<!-- Remote support Service S -->
					<div class="remote">
						<div class="remote_EN">Remote support Service</div>
						<div class="remote_KO">원격지원 서비스</div>
						<div class="remote_small">평일 이용시간 : 09:00 ~ 18:00</div>
						<div class="remote_btn"><a href="https://113366.com/jinjin" target="_blank">원격지원 시작</a></div>
					</div>
					<!-- Remote support Service E -->

					<!-- customer center S -->
					<div class="customer">
						<div class="customer_EN">Customer Center</div>
						<div class="customer_KO">고객센터</div>
						<div class="customer_call"><a href="tel: 02-447-5967">02<i></i>447<i></i>5967</a></div>
						<div class="customer_emailbox">
							<span class="customer_email"><b class="title">영s업문의</b><a href="javascript:GoSitePageLink('help_02');">sales@jinjin.co.kr</a></span>
							<span class="customer_email"><b class="title">기술문의</b><a href="javascript:GoSitePageLink('help_03');">wisam@jinjin.co.kr</a></span>
						</div>
					</div>
					<!-- customer center E -->
				</div>
			</div>
		</div>
		<form:form commandName="searchVO" id="listForm" name="listForm" method="post">
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
            			</tr>s
        			</c:forEach>					</form:form>
		<!-- footer S -->
		<%@ include file="./inc/footer.jsp" %>		
		<!-- footer E -->
	</div>

	<!-- script -->
		<script>
	window.onload = function(){
		var reda = $('#news_content').children().removeAttr("style");
		$('.news_content').children().removeAttr("class");		
		
/* 		
		 var red = document.getElementById('news_content').childNodes;	 	
	 	red[0].removeAttrubute('style');
		console.log(red)
		 */
		
		var red = document.getElementById('news_content');	 	 		
		if(red.children.length)
	// 그래서, 먼저 개체가 찼는 지(자식 노드가 있는 지) 검사
	 {
		console.log('자식있음')
		   /* console.log(red + "asd") */
	   var children = red.children;
	   console.log(children[i])
	   for (var i = 0; i < children.length; i++) {	      
	   		children[i].style.display = null;
	   }}   
	
	
};


	
   // children[i]로 각 자식에 무언가를 함 
   // 주의: 목록은 유효해(live), 자식 추가나 제거는 목록을 바꿈	
	
	
	
		
	
	
	/* if (demodiv.hasChildNodes()){
	    var children = demodive.childNodes;
	    for(var i=0; i<children.length; i++){
	        outputString += "자식노드: " + children[i].nodeName + "<br />";
	    }
	} */
	</script>
</body>
</html>
