<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("UTF8");
    	// 클라이언트 요청 데이터 받기
    	// Tomcat(내장된 객체)
    	// 웹에 사용되는 전용 객체 (request, reponse) : new 하지 않는다. >> 생성된 객체 바로 사용 
    	// request 요청객체(클라이언트 정보를 취득할 때 사용 : request 객체 얻는다 (입력한 데이터, ip, 브라우져 버전))
    	// response 응답 객체 (서버 자원 >> 클라이언트 write)
    	
    	//  GET 방식
    	//  http://localhost:8090/WebContent/Ex02_register.jsp?userid=ehdrms&pwd=1004
    	//  http://localhost:8090/WebContent/Ex02_register.jsp?userid=ehdrms&pwd=1004&hobby=baseball&hobby=soccer
    	
   		/* 
   			POST 방식
    		한글처리 :  ????? or 쾌쾌코
    		Tomcat9 버전 이하 
    		1. 페이지 상단에 인코딩 : request.setCharacterEncoding("UTF8");
    		2. 서버 설정 server.xml 63라인 
    	*/
    	
    	
    	String uid = request.getParameter("userid");
    	String pwd = request.getParameter("pwd");
    	String[] hobby = request.getParameterValues("hobby");
    	
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버에 응답 <br>
	ID 값 : <%= uid %><br>
	PWD 값 : <%= pwd %> <br>
	
	당신의 취미는 <br>
	<%
		for(String str : hobby){
		
	%>
		hobby: <%= str %> <br>
	<%
		}
	%>
</body>
</html>