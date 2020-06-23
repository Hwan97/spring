<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>진진시스템(주)</title>
		<link rel="stylesheet" type="text/css" href="../css/subpage.css">
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="../../script/script.js"></script>
		<script src="../../menu_link.js"></script>
        <!-- smart editor S -->
        <script type="text/javascript" src="../../lib/editor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
        <!-- smart editor E -->
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
            if(!isAllow){
        %>
        <script language="javascript">
            alert("접근 권한이 없습니다.");
            history.back(-1);
        </script>
        <% return; }  %>
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
                    <table class="write_tbl">
                        <caption>공지사항 상세정보 보기</caption>
                        <colgroup>
                            <col style="width:15%">
                            <col>
                            <col style="width:15%">
                            <col>
                        </colgroup>
                        <tr>
                            <th scope="row">제목</th>
                            <td colspan="3"><input type="text" class="subject" placeholder="제목을 입력하세요." required="required"></td>
                        </tr>
                        <tr>
                            <td class="write_contents pl-0 pr-0" colspan="4">
                                <textarea id="txtContent" rows="10" cols="100" style="width: 100%; height: 450px; font-size: 1em; min-width: 290px; "></textarea>
                            </td>
                        </tr>
                    </table>

                    <div class="write_btn_wrap">
                        <input type="submit" class="btn save" value="저장">
                        <input type="button" href="#" class="btn goList" value="목록" onclick="javascript:history.back();">
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
    <script>
        function submitContents() {
            var elClickedObj = $("#write_frm");
            oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []);
            var subject = $("#txtSubject").val();
            var content = $("#txtContent").val().replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");
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
            } catch(e) {}
        }

        // 에디터 세팅
        var oEditors = [];
        $(function() {
            nhn.husky.EZCreator.createInIFrame({
                oAppRef: oEditors,
                elPlaceHolder: "txtContent",
                sSkinURI: "../../lib/editor/SmartEditor2Skin.html",
                htParams: {
                    bUseToolbar: true, // 툴바 사용 여부
                    bUseVerticalResizer: true, // 입력창 크기 조절바 사용 여부
                    bUseModeChanger: true, // 모드 탭(Editor | HTML | TEXT) 사용 여부
                },
                // fOnAppLoad: function () {
                //     oEditors.getById["txtContent"].exec("PASTE_HTML", ["내용을 입력하세요."]);
                // },
                fCreator: "createSEditor2"
            });
        });
    </script>
</body>
</html>