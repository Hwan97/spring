function GoSitePageLink(u){
    var prefix = "";

    var suffix = ".do";
    if(u=="main")       url=prefix+"main"+suffix;               // Logo

    if(u=="company") url=prefix+"com_01"+suffix+"?menu=company&idx=0";
        if(u=="com_01") url=prefix+"com_01"+suffix+"?menu=company&idx=0";     // CEO 인사말
        if(u=="com_02") url=prefix+"com_02"+suffix+"?menu=company&idx=1";     // 회사연혁
        if(u=="com_03") url=prefix+"com_03"+suffix+"?menu=company&idx=2";     // 사업실적
        if(u=="com_04") url=prefix+"com_04"+suffix+"?menu=company&idx=3";     // 오시는길

        if(u=="product") url=prefix+"pro_01"+suffix+"?menu=product&idx=0";        // SQLservlet
            if(u=="pro_01") url=prefix+"pro_01"+suffix+"?menu=product&idx=0";     // SQLservlet
            if(u=="pro_02") url=prefix+"pro_02"+suffix+"?menu=product&idx=1";     // ServerCraft
        
        if(u=="download") url=prefix+"download"+suffix;
            if(u=="down_01") url=prefix+"download"+suffix;     							// 다운로드

            if(u=="file_01_01") url="./files/sqlservlet/SQLservlet_phamplet_v3.pdf";   // SQLservlet 다운로드 파일
            if(u=="file_01_02") url="./files/sqlservlet/SQLservlet_man_3_3_5.doc";
            if(u=="file_01_03") url="./files/sqlservlet/jjxweb.war";

            if(u=="file_02_01") url="./files/servercraft/pnwinrel.exe";  				// ServerCraft 다운로드 파일
            if(u=="file_02_02") url="./files/servercraft/dnsolrel.tar";
            if(u=="file_02_03") url="./files/servercraft/dnlinuxrel.tgz";
            if(u=="file_02_04") url="./files/servercraft/dnaixrel.tgz";
            if(u=="file_02_05") url="./files/servercraft/dnhp11rel.tar";
            if(u=="file_02_06") url="./files/servercraft/setup_jjxwebadm.exe";
            if(u=="file_02_07") url="./files/servercraft/pt_servercraft.zip";
            if(u=="file_02_08") url="./files/servercraft/ServerCraft_Manual.zip";
            if(u=="file_02_09") url="./files/servercraft/ServerCraft_eng.pdf";

        if(u=="demo") url="http://www.jinjin.co.kr/sqlservlet/jjxwebdocument_main.jsp";         // SQLservlet
            if(u=="demo_01") url="http://www.jinjin.co.kr/sqlservlet/jjxwebdocument_main.jsp";  // SQLservlet

        if(u=="customer_center") url=prefix+"help_01"+suffix+"?menu=customer_center&idx=0";
            if(u=="help_01") url=prefix+"help_01"+suffix+"?menu=customer_center&idx=0";		// 공지사항
            if(u=="help_02") url="mailto:sales@jinjin.co.kr?subject=영업문의 입니다.";          // 영업문의   
            if(u=="help_03") url="mailto:wisam@jinjin.co.kr?subject=기술문의 입니다.";          // 기술문의

        if( u =="demo" || u =="demo_01" || u =="demo_02" || u =="demo_03" || u == "demo_04" || u == "demo_05" || u == "demo_06" )
            window.open(url,'_blank');
        else 
            location.href=url;
}