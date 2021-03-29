<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	Server (웹 서버 : Was )
	1. server memory : session 객체 ( 사이트 접속하는 사용자 마다 부여하는 고유한 식별값 )  >> 서버 리부팅, 서버 정지 >> 소멸
	2. server memory : Application 객체 ( 사이트 접속하는 모든사용자가 공유하는 객체 )  >> 서버 리부팅, 서버 정지 >> 소멸

	session 객체 : 서버에서(web)에서 접속한 사용자마다 고유하게 부여하는 객체 ( 고유하다라는것을 보장하기 위해 중복되지 않는 [key]를 생성 )
	
	session 객체 생성 : ( 필요한 정보 담거나 가져올 수 있다 ) [고유한 정보] : 로그인한 ID ( 게시판에 글쓰기하면 ID를 입력하지 않아도 ID 값 자동으로 입력 ) , 쇼핑몰 구매한 물건 목록..
																처음 접속한 시간, 마지막 접속한 시간 

 -->
 
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
	<h3>세션정보</h3>
 	session 객체의 식별값 : <%= session.getId() %> <br>
 	<hr>
 <%
 	time.setTime(session.getCreationTime());
 %>	
 [session 생선된 시간] : <%= formatter.format(time) %>
 <hr>
 <%
 	time.setTime(session.getLastAccessedTime());
 %>
  [session 마지막 접속 시간] : <%= formatter.format(time) %>
</body>
</html>