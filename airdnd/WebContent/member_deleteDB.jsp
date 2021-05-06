<%@page import="airdnd.LoginDB"%>
<%@page import="airdnd.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// id값을 가져옴
String id = request.getParameter("id");
//db전담하는 부품에서 db넣어달라고 할 예정.
LoginDB db = new LoginDB();
db.member_delete(id);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<b style="font-size: 30px;">회원탈퇴가 성공적으로 완료되었습니다.</b>
	<br>
	<%session.invalidate();%> <!-- 세션 끊기 -->
	<a href=main.jsp style="font-size: 30px;">AirDnD 메인화면으로 돌아가기</a>
</body>
</html>