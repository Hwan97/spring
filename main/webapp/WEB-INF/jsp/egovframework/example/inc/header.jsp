<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
        if(!isAllow) {
    %>
    <script>
        $(document).ready(function () {
        	var url = location.href;
        	console.log(url)
            $(".write_btn").css("display","none");
        	$('.admin-btn').css('display','none');
        	$('.subject').attr('disabled', true);
        	$('.txtContent').attr('disabled', true);
       	  	$('.admin-content').css('display','none');   
        	$('.user-content').css('display','block');         	
       	  if(location.href === 'http://121.130.10.5:8080/jinjin/addBoard.do' ) {         		 
        		alert('권한이 없습니다.');
        		history.back(-1);
        	} else if (location.href === 'http://121.130.10.5:8080/jinjin/updateBoard.do') {
        		alert('권한이 없습니다.');
        		history.back(-1);
        	}       	  
         else if (location.href === 'http://121.130.10.5:8080/jinjin/deleteBoard.do') {
    		alert('권한이 없습니다.');
    		history.back(-1);
    	}
       
        });
       
        
        
    </script>
    <% }  %>


<%!
    public String getClientIP(HttpServletRequest request) {
        String ip = request.getHeader("X-FORWARDED-FOR");
        if (ip == null || ip.length() == 0) ip = request.getHeader("Proxy-Client-IP");
        if (ip == null || ip.length() == 0) ip = request.getHeader("WL-Proxy-Client-IP");
        if (ip == null || ip.length() == 0) ip = request.getRemoteAddr();
        return ip;
    }

    String AllowIp[] = { "0:0:0:0:0:0:0:1", "127.0.0.1", "192.168.7.148", "192.168.7.182", "192.168.7.58"};
%>
<script>
	$(document).ready(function(){
		var menu = '<c:out value="${param.menu}" />';
		var idx = '<c:out value="${param.idx}" />';
		if(menu == "company"){
			switch(idx){
				case '0':
					$("#com_01").addClass("active");
					break;
				case '1':
					$("#com_02").addClass("active");
					break;
				case '2':
					$("#com_03").addClass("active");
					break;
				case '3':
					$("#com_04").addClass("active");
					break;
				default:
					break;
			}
		}
		if(menu == "product"){
			switch(idx){
				case '0':
					$("#pro_01").addClass("active");
					break;
				case '1':
					$("#pro_02").addClass("active");
					break;
				default:
					break;
			}
		}
		if(menu == "customer_center"){
			switch(idx){
				case '0':
					$("#help_01").addClass("active");
					break;
				default:
					break;
			}
		}
	});
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
    function text_change(target) {
        var text = document.querySelector(".intro_header");
        text.innerHTML=target;
    }
</script>