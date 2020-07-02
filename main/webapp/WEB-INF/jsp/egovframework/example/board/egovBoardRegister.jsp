
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


</head>
<body>
<div id="wrap">

<form:form commandName="boardVO" id="detailForm" name="detailForm" class="write_frm">


            <%@ include file="../inc/header.jsp" %>
            <%@ include file="../inc/main_visual.jsp" %>


          

	
	<div class="container_wrap clearfix">
<%@ include file="../inc/menu.jsp" %>
<%-- <%@ include file="./menu.jsp" %> --%>
<form:form commandName="boardVO" id="detailForm" name="detailForm" class="write_frm">
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
                         <form:input path="id" cssClass="essentiality" readonly="true"  style="display: none"/> 
                            <th scope="row">등록일</th>
                            <td>
                            <form:input path="datetime" class="registerDate" readonly="true" />
                            <%-- <form:errors path="datetime"/> --%>
                            </td>
                            <th scope="row">조회수</th>
                            <td>        
                            <form:input path="hitCounter"  readonly="true" />
                            <%-- <form:errors path="hitCounter"/> --%>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">제목</th>
                            <td colspan="3">
                            	    <%-- <form:input path="name" maxlength="30" cssClass="txt"/> --%>
                            	    <form:input path="name" id="txtSubject" class="subject" placeholder="제목을 입력하세요." required="required" style="width: 100%;" maxlength="100"/>
                            	    <%-- <form:errors path="name"/> --%>                            	    
                            </td>
                        </tr>
                        <c:if test="${registerFlag == 'modify'}">        		
        		<tr>
                            <td class="view_contents write_contents" colspan="4">                                										
    							  <%-- <form:input  path="description" class="txtContent hide" style="width: 100%; height: 450px; font-size: 1em; display:none;" /> --%>
    							  <div class="show admin-content">
    							  <form:input  path="description" id="txtContent" class="txtContent" style="width: 100%; height: 450px; font-size: 1em;" />
    							  <%-- <form:errors path="description"/> --%>
    							  </div>
    							  <div class="hide user-content"  style="display:none">
    							  ${boardVO.description}
    							  </div>
                            </td>
                        </tr>
    		</c:if>
                        <c:if test="${registerFlag == 'create'}">    		
                        <tr>
                            <td class="view_contents write_contents" colspan="4">                                										    							    
    							<form:input  path="description" id="txtContent" rows="10" cols="100" style="width: 100%; height: 450px; font-size: 1em; " placeholder="제목을 입력하세요." required="required"/>
    							<%-- <form:errors path="description"/> --%>
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
    				<!-- <input type="button" id="saveBtn" class="btn save" onclick="javascript:fn_egov_save();" value="저장"> -->
    		<a href="#" class="btn goList show tooltiptext admin-btn" onclick="javascript:fn_egov_delete();" >삭제</a></br></br>
    		<span title="실제로 어떻게 게시되는지 게시물을 보기위해 에디터를 끕니다." class="btn editor-load admin-btn">토글</span>
    			</c:if>
    			
            </ul>
    	</div>
                </div>
			</div> 
    </div>
    </form:form>
   
    <!-- 검색조건 유지 -->

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