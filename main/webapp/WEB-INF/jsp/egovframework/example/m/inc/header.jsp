<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%!
    public String getClientIP(HttpServletRequest request) {
        String ip = request.getHeader("X-FORWARDED-FOR");
        if (ip == null || ip.length() == 0) ip = request.getHeader("Proxy-Client-IP");
        if (ip == null || ip.length() == 0) ip = request.getHeader("WL-Proxy-Client-IP");
        if (ip == null || ip.length() == 0) ip = request.getRemoteAddr();
        return ip;
    }

    String AllowIp[] = { "0:0:0:0:0:0:0:1", "127.0.0.1", "192.168.7.148", "192.168.7.182", "192.168.7.115", "192.168.7.58" };
%>
<script>
    $(document).ready(function(){
    	var menu = '<c:out value="${param.menu}" />';
    	var idx = '<c:out value="${param.idx}" />';
    	if(menu && idx){
        	$("#"+menu+"MenuTitle").addClass("active");
        	$("#"+menu+"MegaMenu").css("display","block");
        	$("#"+menu+"MegaMenu .megaList")[idx].classList.add("select");	
    	}
    });
</script>
<div class="mark"></div>
<div class="header_wrap">
    <div class="header clearfix">
        <div class="nav_button"></div>
        <!-- logo -->
        <h1 class="logo"><a href="javascript:GoSitePageLink('main');"></a></h1>
    </div>
</div>
<div class="nav_wrap">
    <div class="nav">
        <ul>
            <li class="close">-</li>
            <li class="home"><a href="javascript:GoSitePageLink('main');" class="font-bold">홈</a></li>
            <li class="list">
                <!-- nav - menu -->
                <h2 id="companyMenuTitle"><a class="companyMenu">회사소개</a></h2>
                <div id="companyMegaMenu" class="mega_menu">
                    <ul>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('com_01');">CEO 인사말</a>
                        </li>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('com_02');">회사연혁</a>
                        </li>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('com_03');">사업실적</a>
                        </li>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('com_04');">오시는길</a>
                        </li>
                    </ul>
                </div>
                <!-- nav - menu - mega_menu E -->
            </li>
            <li class="list">
                <h2 id="productMenuTitle"><a class="productMenu">제품소개</a></h2>
                <div id="productMegaMenu" class="mega_menu">
                    <ul>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('pro_01');">SQLservlet</a>
                        </li>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('pro_02');">ServerCraft</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="list">
                <h2 id="customer_centerMenuTitle"><a class="customer_centerMenu">고객센터</a></h2>
                <div id="customer_centerMegaMenu" class="mega_menu">
                    <ul>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('help_01');">공지사항</a>
                        </li>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('help_02');">영업문의</a>
                        </li>
                        <li class="megaList">
                            <a href="javascript:GoSitePageLink('help_03');">기술문의</a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</div>