<%@page import="airdnd.QuestionDB"%>
<%@page import="airdnd.QuestionVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//question_id의 값을 받음
String question_id = request.getParameter("question_id");
//db전담하는 부품에서 db넣어달라고 할 예정.
QuestionDB db = new QuestionDB();
db.question_delete(question_id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<b style="font-size: 30px;">게시글 삭제가 성공적으로 되었습니다.</b>
	<a href=question_main.jsp style="font-size: 30px;">QnA게시판 으로 돌아가기</a>
</body>
</html>