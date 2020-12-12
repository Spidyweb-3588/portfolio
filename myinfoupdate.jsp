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
<script src="assets/js/myinfoupdate.js"></script>
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
						aria-exepended="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="myinfoupdate.jsp"><i class="fas fa-user-edit"></i> 내 정보 수정</a></li>
						<li><a href="logoutAction.jsp"><i class="fas fa-door-open"></i> 로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
			<div class="joinform">
				<h3 style="text-align: center; margin-bottom: 10%;">내 정보 수정</h3>
					<ul>
						<li><button id="passchange" class="joinbutton">비밀번호 변경하기</button>
							<button id="privatechange" class="joinbutton">개인정보 변경하기</button>
							<button id="deleteid" class="joinbutton">회원 탈퇴하기</button> <%--inline으로 만들기 or 디자인찾기 --%>
							<button id="cancle" class="joinbutton">취소</button>
					</ul>
			</div>		
	</div>
</body>
</html>