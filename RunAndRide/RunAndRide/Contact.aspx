<%@ Page Title="聯絡我們" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RunAndRide.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>
		<meta charset="UTF-8">
		<title>Transit by TEMPLATED</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
        <link href="css/main.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/jquery-ui.css" rel="stylesheet" />

       
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
        <script src="js/jquery-3.2.0.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.ui.datepicker-zh-TW.js"></script>

        
        <script>
            $(function () {

            $("input[name=date]").datepicker({ dateFormat: 'yy/mm/dd'});
            $(document).tooltip({
                items: "[title],[data-geo]",
                content: function () {
                    if ($(this).is("[title]")) {
                        return $(this).attr("title");
                    }
                    else if ($(this).is("[data-geo]")) {
                        return "<img  style='width:280px;height:280px;'  src='http://maps.google.com/maps/api/staticmap?" +
                               "zoom=15&size=280x280&maptype=roadmap&sensor=falseS&key=AIzaSyDZhclMXa-CadaVjcb3NGFeKc8V2NwoWGQ&markers=" +
                               $(this).html() + "'/>";
                    }
                },
                hide: { effect: "explode", delay: 500 }
            });


            });
            
        </script>

	</head>
    
    <section id="three" class="wrapper style3 special">
				<div class="container">
					<header class="major">
						<h2 style="text-align:center; font-family:'微軟正黑體'">客戶意見填寫單</h2>
						<p style="text-align:center; font-family:'微軟正黑體'">親愛的客戶您好! 歡迎您使用本系統。</br>如遇操作上有任何問題與建議，請填妥資料聯繫客服，我們將盡速回應您的問題。</p>
					</header>
				</div>
				<div class="container 50%">
					<form action="#" method="post">
						<div class="row uniform" id="row uniform">
							<div class="6u 12u$(small)">
								<input name="name" id="name" value="" placeholder="姓名" type="text">
							</div>
							<div class="6u$ 12u$(small)">
								<input name="email" id="email" value="" placeholder="Email" type="email">
							</div>
                            <div class="6u 12u$(small)">
								<input style="float: left" name="date" id="date" value="" placeholder="期望回覆日期" type="text">
							</div>
							<div class="12u$">
								<textarea name="message" id="message" placeholder="留言" rows="6"></textarea>
							</div>
							<div class="12u$">
								<ul class="actions">
									<li><input value="送出" class="special big" type="submit"  style="text-align:center; font-family:'微軟正黑體';font-weight: 700" title="傳送訊息" id="submit"></li>								                           
									<li><input value="清除" class="special big" type="submit"  style="text-align:center; font-family:'微軟正黑體';font-weight: 700" title="清除資料" id="cancel"></li>
								</ul>
							</div>
						</div>
					</form>
				</div>
			</section> 
  


       

    <div style="text-align:center; font-family:'微軟正黑體'">
    <br>
    <h3 style="text-align:center; font-family:'微軟正黑體';color:black">聯絡資訊</h3>
    
        地址<span data-geo="">:高雄市中正四路211號8F-1</span>

    </div>
       
</asp:Content>
