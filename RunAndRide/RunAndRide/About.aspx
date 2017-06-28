<%@ Page Title="會員頁面" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RunAndRide.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/member.css" rel="stylesheet" />
    
    <h2><%: Title %>.</h2>
   
    <body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main">
						<header>
						
							<h1>III94</h1>
							<p>騎跑人生創始者</p>
						</header>
						
						<hr />
                        <div class="container 50%">
                          <div id="Content" style="display:block">
                            <h2>個人資訊</h2>
                            <form method="post" action="#">
                                <div class="field">
                                    <input type="text" name="name" id="name" placeholder="姓名" />
                                </div>
                                <div class="field">
                                    <input type="email" name="email" id="email" placeholder="Email" />
                                </div>

                                <div class="field">
                                    <input type="text" name="sex" id="sex" placeholder="性別" />
                                </div>

                                <div class="field">
                                    <input type="text" name="height" id="height" placeholder="身高(cm)" />
                                </div>
                                <div class="field">
                                    <input type="text" name="weight" id="weight" placeholder="體重(kg) " />
                                </div>                       						
                              
                               
                              
                            </form>

                            <hr />
                        </div>
						</div>
                        <section>
                            <button onclick="Edit()">修改資料</button>
                            <button onclick="Success()">完成</button>
                        </section>
						
						
					</section>

				

			</div>

		<!-- Scripts -->
			<!--[if lte IE 8]><script src="assets/js/respond.min.js"></script><![endif]-->
			<script>
                if ('addEventListener' in window) {
                    window.addEventListener('load', function () { document.body.className = document.body.className.replace(/\bis-loading\b/, ''); });
                    document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
                }
                function Edit()
                {
                    var Content = document.getElementById("Content");
                    Content.setAttribute("style","display:block");

                }
                function Success()
                {
                    var Content = document.getElementById("Content");
                    Content.setAttribute("style", "display:none");
                }

			</script>

	</body>
</asp:Content>


