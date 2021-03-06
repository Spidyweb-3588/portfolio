<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv ="Content-Type" content = "text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css" />
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="assets/js/login.js"></script>
<script src="assets/js/bootstrap.js"></script>
<title>Spidyweb Blog</title>
</head>

<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class ="navbar-toggle collaspsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expended="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class ="navbar-brand" href="blogMain.jsp">Home</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">포트폴리오 페이지</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>		
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-exepended="false">접속하기 <i class="fas fa-list"></i><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp"><i class="fas fa-key"></i>로그인</a></li>
						<li><a href="join.jsp"><i class="fas fa-user"></i>회원가입</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
			<div class="logonform">
				<h3 style="text-align: center;">로그인화면</h3>
					<ul>
						<li><label for="id">아이디</label>
							<input id="id" name="id" class="joininput" type="text" size="20" maxlength="50"  placeholder="아이디" autofocus>
						<li><label for="passwd">비밀번호</label>
							<input id="passwd" name="passwd" class="joininput" type="password" size="20" maxlength="60" placeholder="비밀번호">
						<li><button id="login" class="joinbutton">로그인</button>
							<%--<label class="directjoin"><a href="join.jsp">아직도 회원이 아니신가요?(회원가입하기)</a></label> 회원가입 링크 라벨 보류 --%>
					</ul>
			</div>
	</div>
			<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; Jiho Park. All rights reserved.</li>
					</ul>
				</div>
			</footer>
</body>
</html>