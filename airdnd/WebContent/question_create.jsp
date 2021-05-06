<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>QnA</title>
</head>
<meta charset="UTF-8">

<body bgcolor="pink">
	<h1>QnA</h1>
	<hr>
	<!-- form태그는 값을 입력하고 싶을 때 사용 -->
	<!-- 입력값들은 모두 form들어가야 한다. -->
	<!-- action: 입력값을 받아서 처리하는 다음 페이지를 지정 -->
	<form action="question_createDB.jsp">
		<b style="font-size: 30px;">
			아이디: <input name="question_id" value="<%=session.getAttribute("id")%>" readonly="readonly"
			style="width: 200px; height: 40px; font-size: 20px;"><br>
			제목 : <input name="question_title" value="<%=session.getAttribute("question_title")%>"
			style="width: 200px; height: 40px; font-size: 20px;"> <br>
			내용 : <br> <textarea rows="10" cols="50" name="question_contents" value="<%=session.getAttribute("question_contents")%>"
				style="font-size: 20px;"></textarea> <br> 날짜 : <input
			type="date" name="question_date"
			style="width: 200px; height: 40px; font-size: 20px;"></b> <br>
		<b style="font-size: 30px;"><button>질문하기</button></b>
	</form>

</body>
</html>