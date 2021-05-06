<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<h2>회원정보수정</h2>
	<!-- form태그는 값을 입력하고 싶을 때 사용 -->
	<!-- 입력값들은 모두 form들어가야 한다. -->
	<!-- action: 입력값을 받아서 처리하는 다음 페이지를 지정 -->
	<form action="member_updateDB.jsp">
		<b style="font-size: 30px;">아이디: </b> <input name="id"
			value="<%=session.getAttribute("id")%>" readonly="readonly"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<b style="font-size: 30px;">비밀번호: </b> <input name="pw"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<b style="font-size: 30px;">생년월일: </b> <input type="date" name="birth"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<b style="font-size: 30px;">전화번호: </b> <input name="tel"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<button style="font-size: 30px;">회원정보수정</button>
	</form>
</body>
</html>