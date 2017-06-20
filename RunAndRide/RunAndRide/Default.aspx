<%@ Page Title="騎跑人生" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RunAndRide._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
	<head>
		<meta charset="UTF-8">
		<title>Transit by TEMPLATED</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
        <link href="css/main.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/animate.css" rel="stylesheet" />

        <link href="css/Gallery.css" rel="stylesheet" />
       
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.poptrox.min.js"></script>

        <script src="js/jquery.lettering.js"></script>
        <script src="js/jquery.fittext.js"></script>
        <script src="js/jquery.textillate.js"></script>
        <script src="js/jQuery-face-cursor.js"></script>
        <script src="js/jquery.gallery.js"></script>


        
        <script>
            $(function () {
                $("#life").css({ 'font-family': '微軟正黑體', 'text-shadow': '2px 2px 2px rgba(0,0,0,.5)' });
                $("#nav li").css({ 'font-family': '微軟正黑體', 'font-weight': 'bold' });
                $("#player .box .inner h3,p,a").css({ 'font-family': '微軟正黑體', 'font-weight': 'bold' });
                $("#footer h3").css({ 'font-family': '微軟正黑體', 'font-weight': 'bold' });
            });
            $(function () {
                
                $('#player').poptrox({
                    usePopupCaption: false
                });
                $('#banner .dg-wrapper').poptrox({
                    usePopupCaption: false
                });
                $('#dg-container').gallery({
                   
                    autoplay: true,
                    interval: 2000
                });

                $('.tlt').textillate();
                $(".shake").faceCursor();                
            });

        </script>

	</head>
	<body class="landing">
			

		<!-- Banner -->
			<section id="banner">
                <section id="dg-container" class="dg-container">
                     <div class="dg-wrapper"> 
                        <a href="images/run1-1.jpg">      
                        <img src="images/run1.jpg" alt="image01">
                        </a>
                        <a href="images/run2-2.jpg">
                        <img src="images/run2.jpg" alt="image02">
                        </a>
                        <a href="images/run3-3.jpg">
                        <img src="images/run3.jpg" alt="image03">
                        </a>
                        <a href="images/run4-4.jpg">
                        <img src="images/run4.jpg" alt="image04">
                        </a>
                        <a href="images/run5-5.jpg">
                        <img src="images/run5.jpg" alt="image05">
                        </a>
                        <a href="images/run6-6.jpg">
                        <img src="images/run6.jpg" alt="image06">
                        </a>
                        <a href="images/run7-7.jpg">
                        <img src="images/run7.jpg" alt="image07"> 
                        </a>      
                    </div>
            </section>
				
                <h2 class="shake"><img src="images/RDlogo.png" / style="width:300px"></h2>
                
				<p id="tlt" class="tlt" data-in-effect="bounceInDown">Run&nbsp; for&nbsp; your&nbsp; Life&nbsp; !</p>
				<ul class="actions">
					<li>
						<a href="#" class="button big" id="sparkleHover">Run & Ride</a>
					</li>
				</ul>
                
                
			</section>

		<!-- One -->
        <div id="main">
            <div class="inner">

                <!-- Boxes -->
                <div class="thumbnails"  id="player">

                    <div class="box">
                        <a href="images/pic01.jpg" class="image fit"><img src="images/pic01.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>2017高雄MIZUNO國際馬拉松</h3>
                            <p>【無論是誰，通通來照！】2017高雄國際馬拉松第一波宣傳影片熱騰騰出爐！最平凡卻也最熱情的人事時地物，帶大家一起為高雄馬暖身，是不是更有共鳴和期待了呢？影片中捕捉好多高雄的名勝美景，你發現了嗎？</p>
                            <a href="https://youtu.be/_m8q2Wa7crk" class="button fit" data-poptrox="youtube,800x400">點擊觀看</a>
                        </div>
                    </div>

                    <div class="box">
                        <a href="images/pic02.jpg" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>高雄 RUN 燃燒你的熱血</h3>
                            <p>結合高雄在地跑團拍攝第二支2017高雄MIZUNO國際馬拉松影片，感謝以下參與並協助拍攝的各跑團：鳳山慢跑協會、中鋼慢跑社、高雄澄清湖友緣慢跑協會、PTT高雄夜跑團、阿公店長跑協會、高雄步輪鐵人運動休閒協會。</p>
                            <a href="https://youtu.be/65k4OEaEQdg" class="button style2 fit" data-poptrox="youtube,800x400">點擊觀看</a>
                        </div>
                    </div>

                    <div class="box">
                        <a href="images/pic03.jpg" class="image fit"><img src="images/pic03.jpg" alt="" /></a>
                        <div class="inner">
                            <h3>逆流挑戰 - 2017宣傳影片</h3>
                            <p>「Adversity Challengers」獲公民教育委員會贊助，是一個由社工、教師等專業人士及大專學生帶領的全方位培訓計劃，計劃旨在讓參加者透過自我磨煉及同輩共同生活學習逆境自強，從活動中提升尊重包容和勇於承擔的領袖特質。</p>
                            <a href="https://youtu.be/jO4ebfG37NI" class="button style3 fit" data-poptrox="youtube,800x400">點擊觀看</a>
                        </div>
                    </div>

                    

                </div>

            </div>
        </div>

		<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<section class="links">
						<div class="row">
							<section class="3u 6u(medium) 12u$(small)">
								<h3 style="color:orange">最新消息</h3>
								<ul class="unstyled">
									<li><a href="#">2017 夏季臺灣KOM登山王之路</a></li>
									<li><a href="#">The Road to Taiwan KOM-Summer</a></li>
									<li><a href="#">2017 Light up Taiwan 台灣真行-大專單車環島</a></li>
									<li><a href="#">2017滿天星挑戰系列─環花東365超級挑戰</a></li>
									<li><a href="#">不厭五分-超級八挑戰系列</a></li>
								</ul>
							</section>
							<section class="3u 6u$(medium) 12u$(small)">
								<h3 style="color:orange">運動焦點</h3>
								<ul class="unstyled">
									<li><a href="#">Lorem ipsum dolor sit</a></li>
									<li><a href="#">Reiciendis dicta laboriosam enim</a></li>
									<li><a href="#">Corporis, non aut rerum</a></li>
									<li><a href="#">Laboriosam nulla voluptas, harum</a></li>
									<li><a href="#">Facere eligendi, inventore dolor</a></li>
								</ul>
							</section>
							<section class="3u 6u(medium) 12u$(small)">
								<h3 style="color:orange">廠商公告</h3>
								<ul class="unstyled">
									<li><a href="#">Lorem ipsum dolor sit</a></li>
									<li><a href="#">Distinctio, inventore quidem nesciunt</a></li>
									<li><a href="#">Explicabo inventore itaque autem</a></li>
									<li><a href="#">Aperiam harum, sint quibusdam</a></li>
									<li><a href="#">Labore excepturi assumenda</a></li>
								</ul>
							</section>
							<section class="3u$ 6u$(medium) 12u$(small)">
								<h3 style="color:orange">店商網站</h3>
								<ul class="unstyled">
									<li><a href="#">Lorem ipsum dolor sit</a></li>
									<li><a href="#">Recusandae, culpa necessita nam</a></li>
									<li><a href="#">Cupiditate, debitis adipisci blandi</a></li>
									<li><a href="#">Tempore nam, enim quia</a></li>
									<li><a href="#">Explicabo molestiae dolor labore</a></li>
								</ul>
							</section>
						</div>
					</section>
					
				</div>
			</footer>

	</body>



</asp:Content>
