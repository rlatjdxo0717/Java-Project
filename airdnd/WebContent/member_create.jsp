<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AirDnD 회원가입 화면입니다.</title>
</head>
<body bgcolor="pink">

	<b style="font-size: 40px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspAirDnD&nbsp&nbsp <!--&nbsp는 스페이스 1개 공간 -->
		회원가입</b>
	<!-- form태그는 값을 입력하고 싶을 때 사용 -->
	<!-- 입력값들은 모두 form들어가야 한다. -->
	<!-- action: 입력값을 받아서 처리하는 다음 페이지를 지정 -->
	<form action="member_createDB.jsp">
		<b style="font-size: 30px;">아이디: </b> <input name="id"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<b style="font-size: 30px;">비밀번호: </b> <input name="pw"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<b style="font-size: 30px;">이름: </b> <input name="name"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<b style="font-size: 30px;">생년월일: </b> <input type="date" name="birth"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<b style="font-size: 30px;">전화번호: </b> <input name="tel"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
		<button type="submit">
			<img src="image/log1.PNG">
		</button>
	</form>
</body>
</html>