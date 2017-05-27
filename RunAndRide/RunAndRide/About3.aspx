<%@ Page Title="About3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About3.aspx.cs" Inherits="RunAndRide.About" %>

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
               
                $("#two h2,p").css({ 'font-family': '微軟正黑體', 'font-weight': 'bold' });
               
            });
            $(function () {
                var foo = $('#player');
                foo.poptrox({
                    usePopupCaption: false
                });
            });

        </script>

	</head>
    
    
    <section id="two" class="wrapper style2 special">
				<div class="container">
					<header class="major">
						<h2>騎跑人生開發團隊</h2>
						<p>專案開發企劃 - 工作分配項目</p>
					</header>
					<section class="profiles">
						<div class="row">
							<section class="3u 6u(medium) 12u$(xsmall) profile">
								<img src="images/member.jpg" alt="" />
								<h4>Ian Pan</h4>
								<p>Android、ios、System Manager</p>
							</section>
							<section class="3u 6u$(medium) 12u$(xsmall) profile">
								<img src="images/member1.jpg" alt="" />
								<h4>Cyril Lu</h4>
								<p>Android、ios</p>
							</section>
							<section class="3u 6u(medium) 12u$(xsmall) profile">
								<img src="images/member2.jpg" alt="" />
								<h4>Weichung Cheng</h4>
								<p>ASP、Android、Web UI</p>
							</section>
                            <section class="3u$ 6u$(medium) 12u$(xsmall) profile">
								<img src="images/member4.jpg" alt="" />
								<h4>Wayne Kao</h4>
								<p>ASP、Web UI</p>
							</section>
							<section class="3u$ 6u$(medium) 12u$(xsmall) profile">
								<img src="images/member3.jpg" alt="" />
								<h4>Weihsuan Cheng</h4>
								<p>ASP、Web UI</p>
							</section>                         
                            <section class="3u$ 6u$(medium) 12u$(xsmall) profile">
								<img src="images/member5.jpg" alt="" />
								<h4>Chihhung Shen</h4>
								<p>Android、SQL</p>
							</section>
						</div>
					</section>
                    <footer>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dolore illum, temporibus veritatis eligendi, aliquam, dolor enim itaque veniam aut eaque sequi qui quia vitae pariatur repudiandae ab dignissimos ex!</p>
						<ul class="actions">
							<li>
								<a href="#" class="button big">Lorem ipsum dolor sit</a>
							</li>
						</ul>
					</footer>
				</div>
			</section>
</asp:Content>
