package airdnd;

//가방안에 변수(id, pw, name, birth, tel)를 만들어둔다.
public class LoginVO {
	String id;
	String pw;
	String name;
	String birth;
	String tel;
	
	// 값을 넣고 뺄 때에는 변수 하나씩 기능을 처리한다.
	// 각 변수마다 넣는 기능, 꺼내는 기능이 필요하다.
	public void setId(String id) { 
			// this : 지역변수에 갖혀서 헤맬수 있기에 전역변수를 찾도록 도와줌
		this.id = id;
	}
	
	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
}



