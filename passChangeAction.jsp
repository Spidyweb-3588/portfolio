<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.userDAO" %>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id ="user" class="user.userDTO">
	<jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<%
	userDAO manager = userDAO.getInstance();
	//비밀번호 수정 처리 메소드 호출 후 수정 상황값 반환
	int check = manager.updatePasswd(user);
	
	out.println(check);
%>