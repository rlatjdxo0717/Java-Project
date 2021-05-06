<%@page import="airdnd.LoginDB"%>
<%@page import="airdnd.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
// id,pw,name,birth,tel의 값을 받음
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String birth = request.getParameter("birth");
String tel = request.getParameter("tel");
// 가방을 만들어서
LoginVO bag = new LoginVO();
// 가방에 넣기.
bag.setId(id);
bag.setPw(pw);
bag.setName(name);
bag.setBirth(birth);
bag.setTel(tel);
//db전담하는 부품에서 db넣어달라고 할 예정.
LoginDB db = new LoginDB();
//db.member_create(id, pw, name, birth,tel);  
db.member_create(bag);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AirDnD 회원가입</title>
</head>
<body bgcolor="pink">
	<b style="font-size: 30px;">회원가입이 성공적으로 완료되었습니다. 축하드립니다! </b>
	<br>
	<a href=main.jsp style="font-size: 30px;">AirDnD 메인화면으로 돌아가기</a>
</body>
</html>