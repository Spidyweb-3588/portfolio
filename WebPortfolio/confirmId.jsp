<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import ="user.userDAO"  %>
 
 <% request.setCharacterEncoding("utf-8"); %>
 
 <%
 	//id는 사용자가 회원 가입을 하기 위해서 입력한 아이디
 	String id= request.getParameter("id");
 	
 	//DB 처리빈인 userDAO 클래스의 객체를 얻어낸다.
 	userDAO manager = userDAO.getInstance();
 	
 	//사용자가 입력한 id 값을 가지고 userDAO 클래스의 confirmId() 메소드 호출
 	//중복 아이디 체크 confirmId() 메소드의 실행 결과로 check에는 1 또는 -1값이 리턴됨
 	int check= manager.confirmId(id);
 	
 	out.println(check);//처리 결과를 join.js로 리턴
 	%>