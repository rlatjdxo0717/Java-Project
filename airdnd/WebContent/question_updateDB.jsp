<%@page import="java.sql.Date"%>
<%@page import="airdnd.QuestionVO"%>
<%@page import="airdnd.QuestionDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//question_id,question_title,question_contents 의 값을 받음
String question_id = request.getParameter("question_id");
String question_title = request.getParameter("question_title");
String question_contents = request.getParameter("question_contents");
//가방을 만들어서
QuestionVO bag = new QuestionVO();
//가방에 넣기.
bag.setQuestion_id(question_id);
bag.setQuestion_title(question_title);
bag.setQuestion_contents(question_contents);
//db전담하는 부품에서 db넣어달라고 할 예정.
QuestionDB db = new QuestionDB();
//db.question_update(question_id,question_title,question_contents);  
db.question_update(bag);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
</head>
<body bgcolor="pink">
	<h1>게시판</h1>
	<b style="font-size: 30px;">수정이 완료되었습니다.</b>
	<br>
	<a href=question_main.jsp style="font-size: 30px;">QnA게시판 으로 돌아가기</a>
</body>
</html>