package airdnd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDB {
	
	public boolean logincheck(String id, String pw) throws Exception {
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (SELECT)
		String sql = "select * from login where id = ? AND pw = ?";
		// SQL인식을 위해 사용
		PreparedStatement ps = con.prepareStatement(sql);
		// 1번쨰, 2번째 자리에 값을 넣으라는 구문
		ps.setString(1, id);
		ps.setString(2, pw);
		// ResultSet 객체의 값을 반환, ExecuteQuery는 SELECT 구문일때 사용
		ResultSet rs = ps.executeQuery();
		boolean result = false;
		// rs.next = 있니??
		if (rs.next()) {
			result = true;
		}
		return result;
	}
	
	


	public void member_create(LoginVO bag) throws Exception {
		
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (INSERT)
		String sql = "insert into login values(?,?,?,?,?)";
		// SQL인식을 위해 사용
		PreparedStatement ps = con.prepareStatement(sql);
		// 1번쨰~5번째 자리에 값을 넣으라는 구문
		ps.setString(1, bag.getId());
		ps.setString(2, bag.getPw());
		ps.setString(3, bag.getName());
		ps.setString(4, bag.getBirth());
		ps.setString(5, bag.getTel());
		// SQL문을 서버로 전송하는 executeUpdate 메서드 사용!
		ps.executeUpdate();
		

	}


	public void member_update(LoginVO bag) throws Exception {
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (UPDATE)
		String sql = "update login set pw = ?, birth = ?, tel = ? where id = ?";
		// SQL인식을 위해 사용
		PreparedStatement ps = con.prepareStatement(sql);
		// 1번째~4번째 자리에 값을 넣으라는 구문
		ps.setString(1, bag.getPw());
		ps.setString(2, bag.getBirth());
		ps.setString(3, bag.getTel());
		ps.setString(4, bag.getId());
		// SQL문을 서버로 전송하는 executeUpdate 메서드 사용!
		ps.executeUpdate();
		

	}

	public void member_delete(String id) throws Exception {
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (DELETE)
		String sql = "delete from login where id = ?";
		// SQL인식을 위해 사용
		PreparedStatement ps = con.prepareStatement(sql);
		// 1번째 자리에 값을 넣으라는 구문
		ps.setString(1, id);
		// SQL문을 서버로 전송하는 executeUpdate 메서드 사용!
		ps.executeUpdate();
		
	}
	
	public LoginVO member_read(String id) throws Exception {
		// MySQL 서버를 사용한다는 뜻
		Class.forName("com.mysql.jdbc.Driver");
		// MySQL에 로그인(ID : root / PW : 1234)해서 연결
		String url = "jdbc:mysql://localhost:3306/airdnd?useUnicode=true&characterEncoding=utf8";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		// SQL문 만들기 (SELECT)
		String sql = "select * from login where id = ?";
		// SQL인식을 위해 사용 ! PreparedStatement << SQL로 인식
		PreparedStatement ps = con.prepareStatement(sql);
		// 1번째 자리에 값을 넣으라는 구문
		ps.setString(1, id);
		// ResultSet 객체의 값을 반환, ExecuteQuery는 SELECT 구문일때 사용
		ResultSet rs = ps.executeQuery();
		
		LoginVO bag = new LoginVO();
		//테이블에서 원하는 데이터항목을 꺼내야한다.
		if (rs.next()) {
			// 꺼내주는 방법은 2가지) 1. 항목명, 2. 항목의 인덱스
			String id2 = rs.getString("id");
			// id2 는 위에 String id 사용해서 id2로 작성.
			String pw = rs.getString(2);
			String name = rs.getString(3);
			String birth = rs.getString(4);
			String tel = rs.getString(5);
			bag.setId(id2);
			bag.setPw(pw);
			bag.setName(name);
			bag.setBirth(birth);
			bag.setTel(tel);
		}
		return bag;
	}
}
