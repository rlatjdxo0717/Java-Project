<%@page import="airdnd.LoginDB"%>
<%@page import="airdnd.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	//id,pw,birth,tel의 값을 받음
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String birth = request.getParameter("birth");
String tel = request.getParameter("tel");

//가방을 만들어서
LoginVO bag = new LoginVO();
//가방에 넣기.
bag.setId(id);
bag.setPw(pw);
bag.setBirth(birth);
bag.setTel(tel);
//db전담하는 부품에서 db넣어달라고 할 예정.
LoginDB db = new LoginDB();
//db.member_update(id, pw,birth,tel);  
db.member_update(bag);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<b style="font-size: 30px;"><%=id%>님의<br> 패스워드가 <%=pw%>로,<br>
		생년월일이 <%=birth%>로,<br>전화번호가 <%=tel%>로,<br> 변경되었습니다.</b>
	<br>
	<a href=main.jsp style="font-size: 30px;">AirDnD 메인화면으로 돌아가기</a>
</body>
</html>