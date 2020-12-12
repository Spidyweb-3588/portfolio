<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.userDAO" %>
<%@ page import="user.userDTO" %>
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
	<%
		String id = (String)session.getAttribute("id");
		String passwd = request.getParameter("passwd");
	
		userDAO manager = userDAO.getInstance();
		//아이디와 비밀번호에 해당하는 사용자의 정보를 얻어냄
		userDTO m = manager.getUser(id,passwd);
	%>
	<div class="container">
		<div class="col-lg-4"></div>
			<div class="joinform">
				<h3 style="text-align: center; margin-bottom: 10%;">비밀번호 변경</h3>
					<ul>
						<li><label for="id">아이디</label>
							<input id="id" name="id" class="joininput" type="text" size="20" maxlength="50" value="<%=id %>" readonly disabled>
						<li><label for="name">이름</label>
							<input id="name" name="name" class="joininput" type="text" size="20" maxlength="10" value="<%=m.getName() %>">
						<li><label for="address">주소</label>
							<input id="address" name="address" class="joininput" type="text" size="30" maxlength="100" value="<%=m.getAddress() %>">
						<li><label for="tel">전화번호</label>
							<input id="tel" name="tel" class="joininput" type="tel" size="30" maxlength="20" value="<%=m.getTel() %>">
						<li><button id="updateOK" class="joinbutton">변경하기</button>
							<button id="cancle" class="joinbutton">취소</button>	
					</ul>
			</div>		
	</div>
</body>
</html>