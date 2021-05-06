<%@page import="airdnd.LoginVO"%>
<%@page import="airdnd.LoginDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//미리 객체를 생성해서 제공하고 있는 객체: 빌트인 객체 (내장된 객체)
String id = request.getParameter("id");
String pw = request.getParameter("pw");

LoginDB db = new LoginDB();
boolean result = db.logincheck(id, pw);
//로그인 성공을 한경우, id를 사이트내 여러 페이지에서 쓸 수 있도록 설정
if (result == true) {//세션이 유지되는 동안 쓸 수 있도록 해야함
	session.setAttribute("id", id);

} else {
%>
<script> /* result 값이 true가 아니면 "로그인이 실패하였습니다" 라는 팝업창 생성 */ 
	alert("로그인이 실패하였습니다.")
	response.sendRedirect("main.jsp"); /* 웹 서버가 웹 브라우저에게 main.jsp로 이동하라고 지시 */
</script>
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<%
		if (result == true) {/* result 값이 true일때  아래 내용표시 */
	%>
	<b style="font-size: 30px;">로그인이 성공하엿습니다.</b>
	<%
		} else { /* result 값이 true가 아닐때  아래 내용표시 */
	%>
	<b style="font-size: 30px;">로그인이 실패하엿습니다.</b>
	<%
		}
	%>
	<br>
	<a href=main.jsp style="font-size: 30px;">AirDnD 메인화면으로 돌아가기</a>
</body>
</html>