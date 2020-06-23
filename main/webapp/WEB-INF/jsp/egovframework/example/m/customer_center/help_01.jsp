<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>진진시스템(주)</title>
		<link rel="stylesheet" type="text/css" href="./css/m/subpage.css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="./js/main.js"></script>
		<script src="./js/menu_link.js"></script>
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

			<!-- content S -->
            <div class="content">
                <div class="content_header">공지사항</div>
                <div class="content_body">
                    <div class="total">총 <b>864</b>건</div>
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
                            <tr class="notice">
                                <td><span class="notice_image"></span></td>
                                <td class="subject">
                                    <a href="view.jsp" class="new"><span class="text">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</span></a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr class="notice">
                                <td><span class="notice_image"></span></td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr class="notice">
                                <td><span class="notice_image"></span></td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td class="subject">
                                    <a href="./view.jsp">다양하고 뛰어난 기술 서버 출시 ver3.8 각종 서버관리 업무를 수행하는 소프트웨어를 출시 했습니다.</a>
                                </td>
                                <td>2020-02-06</td>
                                <td>123</td>
                            </tr>
                        </tbody>
                    </table>
                    <ul class="paging">
<%--                        <li class="first"><a href="#"></a></li>--%>
                        <li class="prev"><a href="#"></a></li>
<%--                        <li class="num active"><a href="#">1</a></li>--%>
<%--                        <li class="num"><a href="#">2</a></li>--%>
<%--                        <li class="num"><a href="#">3</a></li>--%>
<%--                        <li class="num"><a href="#">4</a></li>--%>
<%--                        <li class="num"><a href="#">5</a></li>--%>
                        <li class="next"><a href="#"></a></li>
<%--						<li class="last"><a href="#"></a></li>--%>

                        <li class="write_btn"><a href="write.jsp">글작성</a></li>
					</ul>
                    <div class="search">
						<select id="searchCondition" name="searchCondition" title="조건선택">
							<option value="all">전체</option>
							<option value="subject">제목</option>
							<option value="content">내용</option>
						</select>
						<div class="input_wrap">
							<input id="searchKeyword" name="searchKeyword" title="검색어입력" class="inputText" type="text" value="">
							<input type="submit" value="검색" title="검색" class="btn search_btn">
						</div>
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