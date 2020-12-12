<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.userDAO" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	String id = (String)session.getAttribute("id");
	String passwd = request.getParameter("passwd");
	
	userDAO manager = userDAO.getInstance();
	//회원 탈퇴 처리 메소드 수행 후 탈퇴 상황값 반환
	int check = manager.deleteUser(id,passwd);
	
	if(check == 1)//탈퇴 성공시
		session.invalidate();//세션을 무효화
		
		out.println(check);
%>