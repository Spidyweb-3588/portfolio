<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv ="Content-Type" content = "text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width", initial-scale="1">
		<title>박지호의 포트폴리오 페이지</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
  </head>
 	<body class="is-preload">

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro">Welcome</a></li>
							<li><a href="#one">Who am I</a></li>
							<li><a href="#two">my blog</a></li>
							<li><a href="#three">contact</a></li>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up">
						<div class="inner">
							<h1>늘 발전하는<br/> 박지호입니다.</h1>
							<p>박지호의 개인 포트폴리오 페이지입니다.<br/></p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">About 박지호</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights">
						<section>
							<a class="image"><img src="images/2.jpg" alt="" data-position="center center" /></a>
							<div class="content">
								<div class="inner">
									<h2>about me</h2>
									<p>박지호<br/>
									1996.01.15.<br/>
									010-7473-3588<br/>
									jiho358896@gmail.com<br/>
									서울시 성북구
									</p>
								</div>
							</div>
						</section>
						<section>
							<a class="image"><img src="images/1601963108447-29.jpg" alt="" data-position="top center" /></a>
							<div class="content">
								<div class="inner">
									<h2>Certification</h2>
									<p>2017.01.12 운전면허1종보통<br/>
									   2017.12.12 네트워크관리사2급<br/>
									   2019.02.15 워드프로세서<br/>
									   2019.08.16 정보처리기사<br/>
									   2020.10.06 SQLD
									</p>
								</div>
							</div>
						</section>
						<section>
							<a class="image"><img src="images/code.jpg" alt="" data-position="25% 25%" /></a>
							<div class="content">
								<div class="inner">
									<h2>Skills</h2>
									<p>HTML/CSS	Javascript/JQuery<br/>
									   JSP java/Spring<br/>
									   Oracle Mysql
									</p>
								</div>
							</div>
						</section>
						<section>
							<a class="image"><img src="images/회사.png" alt="" data-position="25% 25%" /></a>
							<div class="content">
								<div class="inner">
									<h2>experiences</h2>
									<p>2020.07.01~10.31 비투엔 컨소시엄, 공공데이터 수준평가 지원</p>
								</div>
							</div>
						</section>
					</section>

				<!-- Two -->
					<section id="two" class="wrapper style3 fade-up">
						<div class="inner">
							<h2>My Blog</h2>
							<p> 저만의 블로그를 따로 제작해 보았으며, 공부한 것을 정리하는 tistory 블로그, 코드들을 정리해둔 github 페이지의 링크를 걸어두었습니다.</p>
							<div class="features">
								<section>
									<span class="icon solid major fa-code"></span>
									<h3><a href="blogMain.jsp">개인제작 홈페이지</a></h3>
									<p>사용 가능 기능</p>
								</section>
								<section>
									<span class="icon solid major fa-lock"></span>
									<h3><a href="https://spidyweb.tistory.com/">tistory 블로그</a></h3>
									<p>공부한 내용들 정리 목적 블로그</p>
								</section>
								<section>
									<span class="icon solid major fa-cog"></span>
									<h3><a href="https://github.com/Spidyweb-3588/portfolio.git">github</a></h3>
									<p>포트폴리오에 사용된 코드</p>
								</section>
							</div>
						</div>
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style1 fade-up">
						<div class="inner">
							<h2>contact</h2>
							<p></p>
							<div class="split style1">
								<section>
									<ul class="contact">
										<li>
											<h3><i class="fas fa-comment"></i> kakaotalk ID</h3>
											<span>jiho3588</span>
										</li>
										<li>
											<h3><i class="fas fa-envelope"></i> Email</h3>
											<a>jiho358896@gmail.com</a><br/>
											<a>jiho3588@naver.com</a>
										</li>
										<li>
											<h3><i class="fas fa-phone"></i> Phone</h3>
											<span>010-7473-3588</span>
										</li>
										<li>
											<h3>Social</h3>
											<ul class="icons">
												<li><a href="https://github.com/Spidyweb-3588" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
												<li><a href="https://www.linkedin.com/in/%EC%A7%80%ED%98%B8-%EB%B0%95-827a261a6/" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
											</ul>
										</li>
									</ul>
								</section>
							</div>
						</div>
					</section>

			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li> Jiho Park. All rights reserved.</li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
</html>
