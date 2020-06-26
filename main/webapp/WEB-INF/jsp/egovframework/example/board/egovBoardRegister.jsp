<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<%
  /*
  * @Class Name : egovBoardRegister.jsp
  * @Description : Board Register 화면
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
<head>
<meta charset="UTF-8"/>
<Style>
	input, textarea  {
	border: 0 ;
	}
	input:focus {outline:none !important;}
	input:disabled { background: #fff}
	textarea:disabled { background: #fff} 
	
</Style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <c:set var="registerFlag" value="${empty boardVO.id ? 'create' : 'modify'}"/>
    <title>진진시스템 
    			  <c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
                  <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
    </title>

    
    <!--For Commons Validator Client Side-->
    <script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
    <validator:javascript formName="boardVO" staticJavascript="false" xhtml="true" cdata="false"/>      
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/pc/subpage.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/pc/common.css'/>">
	<script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/classlist/1.2.20171210/classList.min.js"></script>
    <script src="<c:url value="/js/menu_link.js"/>" > </script>
  <script type="text/javascript" src="lib/editor/js/service/HuskyEZCreator.js" charset="utf-8"></script> 

   <script type="text/javaScript" language="javascript" defer="defer">    
 
    <!--
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
           	document.detailForm.action = "<c:url value='/egovBoardList.do'/>";
           	document.detailForm.submit();
        }
        
        /* 글 삭제 function */
        function fn_egov_delete() {
        	if (confirm("정말 삭제하시겠습니까?") == true){    //확인
        		document.detailForm.action = "<c:url value='/deleteBoard.do'/>";
               	document.detailForm.submit();
        	}else{   //취소
        	    return;
        	}        	                   	
        }             
        
        function fn_egov_save() {
        	frm = document.detailForm;
        	if(!validateBoardVO(frm)){
                return;
            }else{
            	frm.action = "<c:url value="${registerFlag == 'create' ? '/addBoard.do' : '/updateBoard.do'}"/>";
                frm.submit();
            }
        	        
        }
        -->
      
      
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
        System.out.println("현재 접속 IP : "+ip+", ALLOW : "+isAllow);
        if(!isAllow){ 
        	
    %>
    <script language="javascript">    
    
         $(document).ready(function () {
          	
        	$('.admin-btn').css('display','none')
        	$('.subject').attr('disabled', true)
        	$('.txtContent').attr('disabled', true)
       	  	$('.admin-content').css('display','none');   
        	$('.user-content').css('display','block');
         	console.log('b')
       	 if(location.href === 'http://121.130.10.5:8080/jinjin/addBoard.do' ) { 
        		/* if(location.path === 'jinjin/addBoard.do' ){ */
        		alert('권한이 없습니다.');
        		history.back(-1);
        	} else if (location.href === 'http://121.130.10.5:8080/jinjin/updateBoard.do') {
        		alert('권한이 없습니다.');
        		history.back(-1);       		
        	}
         })
        
    </script>
    <%  
        } else {        	
        
        %>
        
        <script language="javascript">
        $(document).ready(function () {       	 
        });
        </script>
        
    <%  
        } 
        
        %>    
        
        
</head>
<body>
<div id="wrap">
<form:form commandName="boardVO" id="detailForm" name="detailForm" class="write_frm">
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
     function text_change(target) {
        var text = document.querySelector(".intro_header");
        text.innerHTML=target;
     }
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
<%-- <%@ include file="./menu.jsp" %> --%>
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
                <div class="content_body">
                    <table class="view_tbl">
                        <caption>공지사항 상세정보 보기</caption>
                        <colgroup>
                            <col style="width:15%">
                            <col>
                            <col style="width:15%">
                            <col>
                        </colgroup>                            		
                        <tr class="disabled">
                         <form:input path="id" cssClass="essentiality" maxlength="10" readonly="true"  style="display: none"/> 
                            <th scope="row">등록일</th>
                            <td>
                            <form:input path="datetime" class="registerDate" readonly="true" />
                            </td>
                            <th scope="row">조회수</th>
                            <td>        
                            <form:input path="hitCounter"  readonly="true" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">제목</th>
                            <td colspan="3">
                            	    <%-- <form:input path="name" maxlength="30" cssClass="txt"/> --%>
                            	    <form:input path="name" id="txtSubject" class="subject" placeholder="제목을 입력하세요." required="required" 
                            	    style="width: 100%;"
                            	    />    							
                            </td>
                        </tr>
                        <c:if test="${registerFlag == 'modify'}">        		
        		<tr>
                            <td class="view_contents write_contents" colspan="4">                                										
    							  <%-- <form:input  path="description" class="txtContent hide" style="width: 100%; height: 450px; font-size: 1em; display:none;" /> --%>
    							  <div class="show admin-content">
    							  <form:input  path="description" id="txtContent" class="txtContent" style="width: 100%; height: 450px; font-size: 1em;" />
    							  </div>
    						<%-- 	  <div class="hide user-content"  style="display:none">
    							  ${boardVO.description}
    							  </div> --%>
                            </td>
                        </tr>
    		</c:if>
                        <c:if test="${registerFlag == 'create'}">    		
                        <tr>
                            <td class="view_contents write_contents" colspan="4">                                										    							    
    							<form:input  path="description" id="txtContent" rows="10" cols="100" style="width: 100%; height: 450px; font-size: 1em; " placeholder="제목을 입력하세요." required="required" />
                            </td>
                        </tr>
                        </c:if>
                    </table>
                    <div class="view_btn_wrap clearfix">
                        <!-- <a href="#" class="btn prevBtn">이전글</a>
                        <a href="#" class="btn nextBtn">다음글</a> -->                                                
                    </div>
                      	<div id="sysbtn" class="write_btn_wrap">
    		<ul>
    		<c:if test="${registerFlag == 'create'}">
    		<input type="button" id="saveBtn" class="btn save" onclick="submitContents()" value="저장">
    		</c:if>
    		<a href="#" class="btn goList " onclick="javascript:history.back();">목록</a>
    				<c:if test="${registerFlag == 'modify'}">
    				<input type="button" id="saveBtn" class="btn save show admin-btn" onclick="submitContents()" value="수정">
    				<input type="button" id="saveBtn" class="btn save" onclick="submitContents()" value="저장">
    		<a href="#" class="btn goList show tooltiptext admin-btn" onclick="javascript:fn_egov_delete();" >삭제</a></br></br>
    		<span title="실제로 어떻게 게시되는지 게시물을 보기위해 에디터를 끕니다." class="btn editor-load admin-btn">토글</span>
    			</c:if>
    			<%-- <li>    			
                    <span class="btn_blue_l">
                        <a href="javascript:fn_egov_selectList();"><spring:message code="button.list" /></a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li> --%>
    			<%-- <li>
                    <span class="btn_blue_l">
                        <a href="javascript:submitContents();">                            
                            <input type="button" id="saveBtn" class="btn save" onclick="submitContents()" value="저장"><c:if test="${registerFlag == 'create'}">
                            <spring:message code="button.create" />
                            </c:if> 
                            <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
                        </a>                       
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li> --%>
    	
    			<%-- <li>
                    <span class="btn_blue_l">
                        <a href="javascript:document.detailForm.reset();"><spring:message code="button.reset" /></a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li> --%>
            </ul>
    	</div>
                </div>
			</div> 
    	<!-- 타이틀 -->
    	<%-- <div id="title">
    		<ul>
    			<li><img src="<c:url value='/images/egovframework/example/title_dot.gif'/>" alt=""/>
                    <c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
                    <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
                </li>
    		</ul>
    	</div>
    	<!-- // 타이틀 -->
    	<div id="table">
    	     <table class="view_tbl">
    		<colgroup>
    			<col width="150"/>
    			<col width="?"/>
    		</colgroup>
    		<c:if test="${registerFlag == 'modify'}">
        		<tr>
        			<td class="tbtd_caption"><label for="id"></label></td>
        			<td class="tbtd_content">
        				<form:input path="id" cssClass="essentiality" maxlength="10" readonly="true" />
        			</td>
        		</tr>
    		</c:if>
    		<tr>
    			<td class="tbtd_caption"><label for="name"><spring:message code="title.board.name" /></label></td>
    			<td class="tbtd_content">
    				<form:input path="name" maxlength="30" cssClass="txt"/>
    				&nbsp;<form:errors path="name" />
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="description"><spring:message code="title.board.description" /></label></td>
    			<td class="tbtd_content">
    				<form:textarea path="description" rows="5" cols="58" />&nbsp;<form:errors path="description" />
    				<form:input path="hitCounter"/>
                </td>
    		</tr>
    	</table>
      </div> --%>  
    </div>
   
    <!-- 검색조건 유지 -->
    <%-- <input type="hidden" name="searchCondition" value="<c:out value='${searchVO.searchCondition}'/>"/>
    <input type="hidden" name="searchKeyword" value="<c:out value='${searchVO.searchKeyword}'/>"/>
    <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/> --%>

		<div class="footer_wrap">
    <div class="footer clearfix">
        <div class="footer_img_wrap float-left">
            <div class="footer_img wh-inherit"></div>
        </div>
        <div class="footer_info pl-15 pt-20 float-left">
            <div class="footer_company_name text-align-left">진진시스템(주)</div>
            <p class="footer_address text-align-left">
                (04782) 서울시 성동구 연무장5길 9-16(성수동 2가 블루스톤타워) 704호 대표전화 : 02-447-5967, 팩스번호 : 02-444-4223
                <br />
                Copyright@2020 JinJin System. All right reserved.
            </p>
        </div>
    </div>
</div>
</div>
</div>
</form:form>
 <script>
 $(function() {
	 
 var edit = $('.editor-load') 
 edit.click(function() {
	$('.show').fadeToggle();
	$('.hide').fadeToggle();	
  })
 })
 
 function text_change(target) {
     var text = document.querySelector(".intro_header");
     text.innerHTML=target;
 }    
     
         function submitContents() { 
            var elClickedObj = $(".write_frm");
            oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []);
            var subject = $("#txtSubject").val();
            var content = $("#txtContent").val().replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig );
            if( subject == "" || subject == null ){
                alert("제목을 입력하세요.");
                $("#txtSubject").focus();
                return;
            }
             if( content == ""  || content == null || content == '&nbsp;')  {
                alert("본문을 입력하세요.");
                oEditors.getById["txtContent"].exec("FOCUS");
                return;
            } 
            try {
                elClickedObj.submit();
            } catch(e) {
            	
            }            
            fn_egov_save()
        }

        // 에디터 세팅
        var oEditors = [];
        $(function() {
            nhn.husky.EZCreator.createInIFrame({
                oAppRef: oEditors,
                elPlaceHolder: "txtContent",
                sSkinURI: "lib/editor/SmartEditor2Skin.html",
                htParams: {
                    bUseToolbar: true, // 툴바 사용 여부
                    bUseVerticalResizer: true, // 입력창 크기 조절바 사용 여부
                    bUseModeChanger: true, // 모드 탭(Editor | HTML | TEXT) 사용 여부                    
                     	bSkipXssFilter : true,	 	// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
                },
                  fOnAppLoad: function () {
                      oEditors.getById["txtContent"].exec("PASTE_HTML", [""]); 
                 }, 
                fCreator: "createSEditor2"
            });
        });
        
        var date = new Date(); 
        var year = date.getFullYear(); 
        var month = new String(date.getMonth()+1); 
        var day = new String(date.getDate()); 

        // 한자리수일 경우 0을 채워준다. 
        if(month.length == 1){ 
          month = "0" + month; 
        } 
        if(day.length == 1){ 
          day = "0" + day; 
        } 

        $(".registerDate").val(year + "-" + month + "-" + day);        

    </script>
</body>
</html>