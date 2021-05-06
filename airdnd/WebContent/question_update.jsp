<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 게시판수정</title>
</head>
<body bgcolor="pink">
	<h1>QnA 게시판 수정화면입니다</h1>
	<hr>
	<!-- form태그는 값을 입력하고 싶을 때 사용 -->
	<!-- 입력값들은 모두 form들어가야 한다. -->
	<!-- action: 입력값을 받아서 처리하는 다음 페이지를 지정 -->
	<form action="question_updateDB.jsp">
		<b style="font-size: 30px;">ID : <input name="question_id"
			value="<%=session.getAttribute("id")%>" readonly="readonly"
			style="width: 200px; height: 40px; font-size: 20px;"> <br></b>
		<b style="font-size: 30px;">Title : <input name="question_title"
			style="width: 200px; height: 40px; font-size: 20px;"> <br></b>
		<b style="font-size: 30px;" style="font-size : 20px;">Content : <br>
			<textarea rows="10" cols="50" name="question_contents"></textarea> <br></b>

		<b style="font-size: 30px;"><button>수정하기</button></b>

	</form>

</body>
</html>