<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AirDnD</title>
</head>

<body bgcolor="pink">
	<b style="font-size: 40px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspAirDnD</b>
	<br>
	<%
		if (session.getAttribute("id") == null) {
	%>
	<!-- form태그는 값을 입력하고 싶을 때 사용 -->
	<!-- 입력값들은 모두 form들어가야 한다. -->
	<!-- action: 입력값을 받아서 처리하는 다음 페이지를 지정 -->
	<form action="logincheck.jsp">
		<b style="font-size: 40px;">아&nbsp&nbsp이&nbsp&nbsp디 :</b> <input
			type="text" style="width: 300px; height: 50px; font-size: 30px;"
			name="id"> <br> <b style="font-size: 40px;">패스워드 :</b> <input
			type="text" style="width: 300px; height: 50px; font-size: 30px;"
			name="pw"><br> <br>
		<button type="submit">
			<img src="image/log1.PNG">
		</button>
	</form>
	<%
		} else {
	%>
	<b style="font-size: 40px;">마이페이지</b>
	<br>
	<b style="font-size: 30px;"><a href="member_read.jsp">내정보검색 <<</a></b>
	<br>
	<b style="font-size: 30px;"><a href="member_update.jsp">회원정보수정<<</a></b>
	<br>
	<b style="font-size: 30px;"><a href="member_delete.jsp">회원탈퇴<<</a></b>
	<br>
	<b style="font-size: 30px;"><a href="logout.jsp">로그아웃<<</a></b>
	<br>
	<% } %>
</body>
</html>