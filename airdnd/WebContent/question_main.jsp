<%@page import="airdnd.QuestionVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="airdnd.QuestionDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
QuestionDB db = new QuestionDB();
ArrayList<QuestionVO> list = db.list();
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>QnA 화면입니다.</title>
</head>
<body bgcolor="pink">
	<h2>AirDnD QnA 게시판 화면입니다.</h2>
	<b style="font-size: 20px;">
		<hr color="blue"> 자주하는 질문들 <br>
		<hr color="blue"> <br> Q : 에어비앤비 계정은 어떻게 만드나요? <br> <br>
		A : 아직 에어비앤비 계정이 없는 경우, <a href=http://localhost:8888/airdnd/main.jsp>AirDnD.com</a>로
		이동해 오른쪽 위 회원 가입을 클릭하세요. <br>
		<hr color="green"> <br> Q : 예약 대금은 언제 지불하나요? <br> <br>
		A : 예약 시작일이 이틀 뒤이든 두 달 뒤이든 상관없이, 에어비앤비는 체크인이 24시간 지난 후에 호스트에게 예약 대금을
		지급합니다. <br> <a></a>이를 통해 게스트와 호스트 모두 시간을 갖고 예약과 관련해 예상치 못한 부분이
		없는지 확인할 수 있습니다. <br>
		<hr color="green"> <br> Q : 예약을 취소하면 얼마의 환불을 받을 수 있나요? <br>
		<br> A : 환불금은 해당 예약에 적용되는 환불 정책과 예약 취소 시점에 따라 결정됩니다. <br> 내
		예약에 적용되는 환불 정책과 환불금은 숙박 또는체험 취소 절차를 시작하여 확인하실 수 있습니다. <br> 또한, 예약
		확정 이메일을 살펴보거나 여행 페이지로 가서 확인하려는 여행을 선택하면 내 예약에 적용되는 환불 정책을 확인할 수 있습니다.
		<br>
	</b>
	<hr color="green">
	<b style="font-size: 20px;">QnA 게시판</b><br>
	<%
		for (int i = 0; i < list.size(); i++) {
		QuestionVO bag = list.get(i);
	%>
<b style="font-size: 20px;">
<table border = "1">
<tr>
<td align = "center">작성자</td>
<td align = "center">제목</td>
<td align = "center">내용</td>
<td align = "center">날짜</td><tr>

<td align = "center"><%= bag.getQuestion_id() %></td>
<td align = "center"><%= bag.getQuestion_title() %></td>
<td align = "center"><%= bag.getQuestion_contents() %></td>
<td align = "center"><%= bag.getQuestion_date() %></td>
</table>
</b>
	<%
		}
	%>
	<!-- form태그는 값을 입력하고 싶을 때 사용 -->
	<!-- 입력값들은 모두 form들어가야 한다. -->
	<!-- action: 입력값을 받아서 처리하는 다음 페이지를 지정 -->
	<form action="question_create.jsp">
		<button style="font-size: 25px;">QnA 작성</button>
		<br> <br>
	</form>
	<form action="question_update.jsp">
		<button style="font-size: 25px;">QnA 게시판 수정</button>
		<br> <br>
	</form>
	<form action="question_delete.jsp">
		<button style="font-size: 25px;">QnA 삭제</button>
		<br> <br>
	</form>
	<form action="main.jsp">
		<button style="font-size: 25px;">AirDnD 메인으로</button>
		<br> <br>
	</form>
</body>
</html>