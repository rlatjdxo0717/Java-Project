<%@page import="airdnd.LoginDB"%>
<%@page import="airdnd.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
//id의 값을 받음
String id = request.getParameter("id");
//db전담하는 부품에서 db넣어달라고 할 예정.
LoginDB db = new LoginDB();
LoginVO bag = db.member_read(id);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<h1>
		<b style="font-size: 30px;">내정보 검색</b>
	</h1>
	<hr>
	<b style="font-size: 30px;">내정보 검색이 완료되었습니다.</b>
	<hr color="blue">
	<!-- 표현식, expression (실행결과) -->
	<b style="font-size: 30px;">아이디 :<%=bag.getId()%></b>
	<br>
	<b style="font-size: 30px;">이름 :<%=bag.getName()%></b>
	<br>
	<b style="font-size: 30px;">생년월일 :<%=bag.getBirth()%></b>
	<br>
	<b style="font-size: 30px;">연락처 :<%=bag.getTel()%></b>
	<br>
	<a href=main.jsp style="font-size: 30px;">AirDnD 메인화면으로 돌아가기</a>
</body>
</html>