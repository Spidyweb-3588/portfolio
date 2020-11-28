<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.userDAO" %>
<%@ page import = "java.sql.Timestamp" %>

<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css" />
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/join.js"></script>

<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="user" class="user.userDTO">
	<jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<%
	//폼으로 부터 넘어오지 않는 데이터인 가입 날짜를 직접 데이터 저장빈에 세팅
	user.setReg_date(new Timestamp(System.currentTimeMillis()));
	
	userDAO manager = userDAO.getInstance();
	//사용자가 입력한 데이터 저장빈 객체를 가지고 회원 가입 처리 메소드 호출
	manager.insertUser(user);
%>