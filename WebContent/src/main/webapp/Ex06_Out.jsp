	<%@ page language="java" contentType="text/html; charset=UTF-8"
   	 pageEncoding="UTF-8"%>
   	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체(WAS): out</title>
</head>
<body>
 <h2>스파게티 코드(UI작업)</h2>
<%
	boolean b = true;
	if(10 > 5){
 %>
 	IF(true)<font color="red"><%= b%></font>
	<% 	
	}else{
	%>
	IF(false)<font color="blue"><%= b%></font>
	<% 
	}
	%>
	
	<h3>out 객체 (서버 코드 작업) : UI작업(문자열)</h3>
	<%
	boolean b2 = true;
	if(10 > 5){
 		out.println("IF(true)<font color='red'>" + b2 + "</font>");
	}else{
		out.println("IF(flase)<font color='red'>" + b2 + "</font>");
	}	
	%>
	
</body>
</html>