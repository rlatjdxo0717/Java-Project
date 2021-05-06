<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<h2>QnA 삭제</h2>
	<!-- form태그는 값을 입력하고 싶을 때 사용 -->
	<!-- 입력값들은 모두 form들어가야 한다. -->
	<!-- action: 입력값을 받아서 처리하는 다음 페이지를 지정 -->
	<form action=question_deleteDB.jsp>
		<b style="font-size: 30px;">자신의 아이디를 입력하세요: <input
			name="question_id"
			style="width: 200px; height: 40px; font-size: 20px;"></b><br>
		<b style="font-size: 30px;"><button>QnA 게시글 삭제하기</button></b>
	</form>
</body>
</html>