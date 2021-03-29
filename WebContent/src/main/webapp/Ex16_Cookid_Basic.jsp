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
	정보(데이터) > 저장 > 장소(where)

	클라이언트(개인 로컬 PC) : 서버(웹 서버 , DB 서버 )
	
	정보(데이터, 자료) >> 어디에 저장(보관)
	고민(기준점) : 보안 요소 (정보의 정요성) , 소멸(일시적, 영속적)
	
	Client (Local PC : 웹 브라우저)
	1. Cookie(메모리 쿠키, 파일 쿠키 (local 디스크 (txt) 파일로 : 내용 (암호화)
		단점 : 크기 제한적, 사용 조금 불편 
	2. Local storage ( key, value) 형태로 저장 	
	
	Server (웹 서버 : Was )
	1. server memory : session 객체 ( 사이트 접속하는 사용자 마다 부여하는 고유한 식별값 )  >> 서버 리부팅, 서버 정지 >> 소멸
	2. server memory : Application 객체 ( 사이트 접속하는 모든사용자가 공유하는 객체 )  >> 서버 리부팅, 서버 정지 >> 소멸
	3. server 영속적 ( 서버 리부팅, 정지 ) 남아 있는 데이터 : 파일.txt >> 관리가 힘들다 
	4. DB server : 보안, 영속관리 가능 
 -->
 <%
 	Cookie mycookie = new Cookie("cname","1004");
 	// 쿠키 객체 생성 
 	// 내사이트에 접속한 브라우저(client)에게 전달 >> response
 
 	response.addCookie(mycookie);	
	 
 
 %>
 <a href="Ex17_Cookie_Read.jsp">Cookie read</a>
</body>
</html>