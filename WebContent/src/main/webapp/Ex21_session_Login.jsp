<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Ex22_Session_Ok.jsp" method="get">
		<input type="text" name="uid">
		<input type="password" name="pwd">
		<input type="submit" value="login">
		<input type="reset" value="취소">
	</form>
	<hr>
	<h3>회원 전용 페이지</h3>
	<a href="Ex22_Session_Member.jsp">회원접속</a>
	
</body>
</html>