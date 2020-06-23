<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
    $(window).scroll(function(){
        var scrollTop = $(document).scrollTop();
        if (scrollTop < 100) {
            scrollTop = 100;
        }
        $(".follow_box").stop();
        $(".follow_box").animate( { "top" : scrollTop });
    });
    function goTop(){
        $('html').animate({scrollTop : 0}, 1000);
    }
</script>
<!-- left side menu S -->
<div class="side">
    <h2 class="side_text text-align-center bold">제품소개</h2>
    <ul class="side_nav">
        <li id="pro_01" class="sideList">
            <h2>
                <a href="javascript:GoSitePageLink('pro_01');">SQLservlet</a>
            </h2>
        </li>
        <li id="pro_02" class="sideList">
            <h2>
                <a href="javascript:GoSitePageLink('pro_02');">ServerCraft</a>
            </h2>
        </li>
    </ul>
</div>
<!-- left side menu E -->

<!-- quick & top menu S -->
<!--<div class="follow_box">
    <div class="scroll_box">
        <div class="scroll mt-25">
            <div class="image"></div>
            <div class="text">상담문의</div>
        </div>
        <hr class="divide_line">
        <div class="scroll mb-25">
            <div class="image"></div>
            <div class="text">개발제품<br />다운로드</div>
        </div>
    </div>
    <div class="top_box" onclick="goTop()">

    </div>
</div>-->
<!-- quick & top menu E -->

