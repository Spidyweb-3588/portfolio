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
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/join.js"></script>
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
						aria-exepended="false">접속하기<span class="caret"></span></a>
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
			<div class="joinform">
				<h3 style="text-align: center; margin-bottom: 10%;">회원가입 화면</h3>
					<ul>
						<li><label for="id">아이디</label>
							<input id="id" name="id" class="joininput" type="text" size="20" maxlength="50"  placeholder="아이디" autofocus>
							<button id="checkId" class="checkbutton">ID중복확인</button>
						<li><label for="passwd">비밀번호</label>
							<input id="passwd" name="passwd" class="joininput" type="password" size="20" maxlength="60" placeholder="비밀번호">
						<li><label for="repass">비밀번호 재입력</label>
							<input id="repass" name="repass" class="joininput" type="password" size="20" maxlength="10" placeholder="비밀번호 재입력">
						<li><label for="name">이름</label>
							<input id="name" name="name" class="joininput" type="text" size="20" maxlength="10" placeholder="이름">
						<li><label for="address">주소</label>
							<input id="address" name="address" class="joininput" type="text" size="30" maxlength="100" placeholder="주소 입력">
						<li><label for="tel">전화번호</label>
							<input id="tel" name="tel" class="joininput" type="tel" size="30" maxlength="20" placeholder="전화번호 입력">
						<li><button id="process" class="joinbutton">회원가입</button>
							<button id="cancle" class="joinbutton">취소</button>
					</ul>
			</div>		
	</div>
</body>
</html>