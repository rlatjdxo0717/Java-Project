<%@page import="java.sql.Date"%>
<%@page import="airdnd.QuestionDB"%>
<%@page import="airdnd.QuestionVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//question_id,question_title,question_contents,question_date의 값을 받음
String question_id = request.getParameter("question_id");
String question_title = request.getParameter("question_title");
String question_contents = request.getParameter("question_contents");
String question_date = request.getParameter("question_date");
//가방을 만들어서
QuestionVO bag = new QuestionVO();
//가방에 넣기.
bag.setQuestion_id(question_id);
bag.setQuestion_title(question_title);
bag.setQuestion_contents(question_contents);
bag.setQuestion_date(question_date);
//db전담하는 부품에서 db넣어달라고 할 예정.
QuestionDB db = new QuestionDB();
//db.question_create(question_id,question_title,question_contents,question_date);  
db.question_create(bag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
</head>

<body bgcolor="pink">
	<b style="font-size: 30px;">게시글 작성이 완료되었습니다.</b>
	<br>

	<a href=question_main.jsp style="font-size: 30px;">QnA게시판 으로 돌아가기</a>

</body>
</html>