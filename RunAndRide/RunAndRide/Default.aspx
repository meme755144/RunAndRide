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
									<li><a href="http://www.twbike.org/activity/?act=data&id=151">我愛台灣車衣販售</a></li>
									<li><a href="http://www.twbike.org/activity/?act=data&id=148">2017 挑戰大三元</a></li>
									<li><a href="http://www.twbike.org/activity/?act=data&id=158">第14梯 〜TWB 單車環島圓夢團</a></li>
									<li><a href="http://theme.taiwanbike.tw/event/2017/">2017台灣自行車節</a></li>
									<li><a href="#">不厭五分-超級八挑戰系列</a></li>
								</ul>
							</section>
							<section class="3u 6u$(medium) 12u$(small)">
								<h3 style="color:orange">運動焦點</h3>
								<ul class="unstyled">
									<li><a href="http://www.nownews.com/n/2017/05/17/2526599">2017台灣馬拉松在苗栗　邀1萬2千人參加</a></li>
									<li><a href="https://udn.com/news/story/7005/2470217">路跑／邁入第3年 台灣馬拉松在苗栗起跑</a></li>
									<li><a href="http://www.chinatimes.com/realtimenews/20170604002173-260405">海拔最高馬拉松 台灣女生雙雙挑戰成功</a></li>
									<li><a href="https://udn.com/news/story/7005/2528684">路跑／超搶手！ 太魯閣馬拉松首次開放團報</a></li>
									<li><a href="http://www.ettoday.net/news/20170606/939024.htm">辦馬拉松竟能商機破百億？趙天麟拚高雄馬變「世界七」</a></li>
								</ul>
							</section>
							<section class="3u 6u(medium) 12u$(small)">
								<h3 style="color:orange">廠商資訊</h3>
								<ul class="unstyled">
									<li><a href="http://www.twbike.org/">台灣自行車協會</a></li>
									<li><a href="http://www.taiwanbike.org/">中華民國自行車協會</a></li>
									<li><a href="http://www.cma.org.tw/races/">中華民國馬拉松協會</a></li>
									<li><a href="https://www.sportsnet.org.tw/">中華民國路跑協會</a></li>
									<li><a href="http://www.maywoodtravel.com/group_list.asp">世界馬拉松團</a></li>
								</ul>
							</section>
							<section class="3u$ 6u$(medium) 12u$(small)">
								<h3 style="color:orange">店商網站</h3>
								<ul class="unstyled">
									<li><a href="http://www.nike.com/tw/zh_tw/">Nike</a></li>
									<li><a href="http://www.adidas-home.com.tw/">Adidas</a></li>
									<li><a href="http://www.pumataiwan.com.tw/">Puma</a></li>
									<li><a href="http://www.khsbicycles.com.tw/">KHS功學社單車股份有限公司</a></li>
									<li><a href="http://www.giantcyclingworld.com/bike.php">GIANT捷安特</a></li>
								</ul>
							</section>
						</div>
					</section>
					
				</div><br>
                <h3 style="text-align:center" >Copyright © 2017 III 94期 保留一切權利。<h3>
               
			</footer>

	</body>



</asp:Content>
