package airdnd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import airdnd.QuestionVO;

public class QuestionDB {

	public ArrayList<QuestionVO> list() throws Exception { // 반환값
		ArrayList<QuestionVO> list = new ArrayList<>(); // 받아서 사용할 bag 선언을 위한 list.
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (SELECT)
		String sql = "select * from question";
		// SQL인식을 위해 사용
		PreparedStatement ps = con.prepareStatement(sql);
		// ResultSet 객체의 값을 반환, ExecuteQuery는 SELECT 구문일때 사용
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			// rs.next() : true이면 있다라는 이야기, 만약 결과가 있다면 테이블에서 원하는 데이터항목을 꺼내주면 된다.
			// rs.next()를 호출할 때마다 한 행씩 내려가서 그 행이 있는지를 체크 : boolean
			// 있으면 true, 없으면 false
			// true이면 각 항목의 값들을 꺼내주어야 한다.
			// 꺼내주는 방법은 2가지) 1. 항목명, 2. 항목의 인덱스
			String question_id2 = rs.getString("question_id");
			String question_title = rs.getString(2);
			String question_contents = rs.getString(3);
			String question_date = rs.getString(4);

			// 가방을 만들어서 꺼내준 값들을 가방에 넣는다. // bag을 통해서 각 row값들을 더미로 VO에 설정한 변수들에 저장시키겠다.
			QuestionVO bag = new QuestionVO();
			bag.setQuestion_id(question_id2);
			bag.setQuestion_title(question_title);
			bag.setQuestion_contents(question_contents);
			bag.setQuestion_date(question_date);

			// 가방들을 넣어줄 컨테이너에 하나씩 넣어준다.
			list.add(bag);
		}
		return list;
	}

	public void question_create(QuestionVO bag) throws Exception {
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (INSERT)
		String sql = "insert into question values(?,?,?,?)";
		// SQL인식을 위해 사용
		PreparedStatement ps = con.prepareStatement(sql);
		// 1번째~4번쨰 자리에 값을 넣으라는 구문
		ps.setString(1, bag.getQuestion_id());
		ps.setString(2, bag.getQuestion_title());
		ps.setString(3, bag.getQuestion_contents());
		ps.setString(4, bag.getQuestion_date());
		// SQL문을 서버로 전송하는 executeUpdate 메서드 사용!
		ps.executeUpdate();
	}

	public void question_update(QuestionVO bag) throws Exception {
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (UPDATE)
		String sql = "update question set question_title = ?, question_contents = ? where question_id = ?";
		// SQL인식을 위해 사용
		PreparedStatement ps = con.prepareStatement(sql);
		// 1번째~3번째 자리에 값을 넣으라는 구문
		ps.setString(1, bag.getQuestion_title());
		ps.setString(2, bag.getQuestion_contents());
		ps.setString(3, bag.getQuestion_id());
		// SQL문을 서버로 전송하는 executeUpdate 메서드 사용!
		ps.executeUpdate();
		
	}

	public void question_delete(String question_id) throws Exception {
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (DELETE)
		String sql = "delete from question where question_id = ?";
		// SQL인식을 위해 사용
		PreparedStatement ps = con.prepareStatement(sql);
		// 1번째 자리에 값을 넣으라는 구문
		ps.setString(1, question_id);
		// SQL문을 서버로 전송하는 executeUpdate 메서드 사용!
		ps.executeUpdate();
		
	}
}
