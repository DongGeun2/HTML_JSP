<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// 이페이지는 회원 전용 입니다.
    	// session에서 memberid 값을 가지고 왔을때 그 생성 유무를 확인
    	String memberid = (String)session.getAttribute("memberid");
    	boolean loginstate = (memberid == null) ? false:true;
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전용 페이지</title>
</head>
<body>
	<%
		if(loginstate == true){
			out.print(memberid + "님 로그인 상태입니다<br>");
			out.print("당신은 이 페이지를 볼 수 있습니다<br>");
			out.print("<a href='Ex23_Session_Logout.jsp'>로그아웃</a>");
			
		}else{
			out.print("<script> alert('넌 누구냐') </script>");
			out.print("<script> location.href='Ex21_session_Login.jsp'</script>");
		}
	
	%>
</body>
</html>