<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RunAndRide.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>
		<meta charset="UTF-8">
		<title>Transit by TEMPLATED</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
        <link href="css/main.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
       
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.poptrox.min.js"></script>

        
        <script>
            $(function () {
                $("#life").css({ 'font-family': '微軟正黑體', 'text-shadow': '2px 2px 2px rgba(0,0,0,.5)' });
                $("#nav li").css({ 'font-family': '微軟正黑體', 'font-weight': 'bold' });
                $("#player").css({ 'font-family': '微軟正黑體', 'font-weight': 'bold' });
                $("#three h2,p").css({ 'font-family': '微軟正黑體', 'font-weight': 'bold' });
                
            });
            $(function () {
                var foo = $('#player');
                foo.poptrox({
                    usePopupCaption: false
                });
            });

        </script>

	</head>
    
    <section id="three" class="wrapper style3 special">
				<div class="container">
					<header class="major">
						<h2>客戶意見填寫單</h2>
						<p>親愛的客戶您好! 歡迎您使用本系統。</br>如遇操作上有任何問題與建議，請填妥資料聯繫客服，我們將盡速回應您的問題。</p>
					</header>
				</div>
				<div class="container 50%">
					<form action="#" method="post">
						<div class="row uniform" id="row uniform">
							<div class="6u 12u$(small)">
								<input name="name" id="name" value="" placeholder="Name" type="text">
							</div>
							<div class="6u$ 12u$(small)">
								<input name="email" id="email" value="" placeholder="Email" type="email">
							</div>
							<div class="12u$">
								<textarea name="message" id="message" placeholder="Message" rows="6"></textarea>
							</div>
							<div class="12u$">
								<ul class="actions">
									<li><input value="送出" class="special big" type="submit"></li>
								</ul>
							</div>
						</div>
					</form>
				</div>
			</section>  
    
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
