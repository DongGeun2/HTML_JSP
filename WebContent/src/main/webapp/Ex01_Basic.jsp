
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	//자바 코드 
	Date day = new Date();

	/* 
		JSP 페이지 : UI(html+css+javascript) + (java코드 ) >> <% 스크립트 릿 안에 구현>
		>> 디자인코드 + 서버 로직 코드 : 혼재 되어 있다

		servlet(형) + jsp(동생)
		>> java 웹 기반으로 기술(x) >> 계산기, 그림판 , 윈도우 프로그램 >> 웹
		>> java 페이지로 web 서비스 하자 >> login.java >> 단점 >> 배우기 어렵다.
		>> servlet (java 코드)  + jsp(UI) >> MVC 패턴 >> servlet+jsp 활용한 MVC패턴 
		
		>> 중간 프로젝트 : model2 기반의 MVC 패턴
		
		>> JSP 와 html 차이점
		>> Tomcat(WAS)처리
		>> 1. html : web server (클라이언트 요청 -> 응답) : 192.168.0...... /login.html
		>> 2. JSP  : was 를 통해서 컴파일 작업 >> class 생성 >> 실행 (가지고 있는 코드 : text, html, script ) >> 전달
		>> Was(jsp) > compile(a.jsp.java) > a.jsp.class >> 실행 > 정적 + 동적 
		>> ASP (ASPX), PHP, JSP 장점 : 코드 노출이 안된다 > 보안상 좋다 . 
		
		>> 컴파일 >> 실행 (a.jsp.class) >> 전달 
		
		
		JSP 구성요소
		1. 선언부 : page 지시자 >> 사용언어, 인코딩방식, import
		<%@ page language="java"
		
		2. 스크립트 요소
		 2.1 스크립트 릿 <% java 코드
		 2.2 표현식(출력방법) : 출력하는 대상(client 브라우저) : <%= 전달 내용     = response
		 2.3 선언부(공통 자원( scope page )) : 공통 함수 정의 >> <%! 공통 함수
		 
	*/
	
%>    

<%!
	// 이 페이지에서 사용하는 공통함수
	public int add(int i, int j){
		return i+j;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSP</h3>
	<%= day %> <br>
	<%= add(10,20) %> <br>
	<%
		int result = add(100, 200);
	%>
	<hr>
	합 결과 : <%= result %>
</body>
</html>




