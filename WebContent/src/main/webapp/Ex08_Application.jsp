<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/*
	webproject 생성 >> 기본 폴더 구조 제공 >>  web.xml ( WebApp 환경설정 ) 제공
	web.xml (환경설정 파일은 서버가 시작 되면 가장 먼저 실행 )
	<Welcome-file>defaulf.html</welcome=file> 웹 사이트 기본 페이지 설정 
	
	/ WebJSP >> 웹 프로젝트 이동, 가상 디렉토리, context root (문맥 흐름 전체)
	>> 웹경로(가상경로)   http://localhost:8090/WebJSP/
	>> 실경로 		  /Users/idong-geun/WEB(back)/WebLabs/WebContent
	
	/WebJSP 웹 프로젝트가 서비스 하는 파일의 기본 경로 (defalut)
	/Users/idong-geun/WEB(back)/WebLabs/WebContent  (context root)
	 
	>> 자원(서비스 하는 파일) : html, htm, css, js, json, txt, jsp
	>> Webcontent >> a.jap, b.jsp, c.jsp 3개의 페이지가 공유할 수 있는 자원 ?
			
	>> 모든 자원은 페이지가 scope
	>> a.jsp > <% String s="A" .. > s 라는 변수는 a.jps 가 자기 scope
	>> b.jsp > <% String s="A" .. > s 라는 변수는 b.jps 가 자기 scope
	>> c.jsp > <% String s="A" .. > s 라는 변수는 c.jps 가 자기 scope
	
	>> a.jsp, b.jsp, c.jsp 같은 자원을 사용 사고 싶다
	Web.xml 환경설정 >> 서버 시작 >> 가장 먼저 해석 
	
	<context-param>
	  	<description>개발자 마음</description>
	  	<param-name>email</param-name>
	  	<param-value>webmaster@bit.or.kr</param-value>
  	</context-param>
	
  	Application 객체 (WAS 제공)
  	web.xml 설정 read 
  	
  	Webcontent >> WEB-INF >> lib
  			   >> WEB_INF >> web.xml
  			   >> a.sjp
  			   >> b.html
  	WEB-INF 폴더는 보안 폴더
  	Client가 주소를 알고 있다 하더라도 접근 불가능한 경로
  	
  	의도적으로 접근 하면 서버는 404오류 전달 
  	
  	개발자 문제점)
	Ex02_register.html -> 요정 -> 처리 -> Ex02_register.jsp
	클라이언트가 Ex02_register.jsp 페이지를 직접 접근 못하게 
	Webcontent 폴더 안에 자원 >> Client 가 모든 접근 할 수 있다.
	
	** 실제 현업 개발 코드는 ... Webcontent 폴더에 없다.
		1. Client 직접 요청하는 파일 : main.html, login.html, register.html >> Webcontent에 둔다
		2. Client 직접 요청 해서는 안되는 파일 : WEB-INF >> views >> member >> register.jsp
											WEB-INF >> views >> admin >> admin.jsp
*/

%>

<h3>Application</h3>
<%
	String param = application.getInitParameter("email");
	out.println("<h3>" + param + "<h3>");
	out.println("<hr>");
	String param1 = application.getInitParameter("FilePath");
	out.println("<h3>" + param1 + "<h3>");
	out.println("<hr>");
%>
</body>
</html>





