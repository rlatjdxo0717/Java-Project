package airdnd;

import java.sql.Date;
//가방안에 변수(question_id, question_title, question_contents, question_date)를 만들어둔다.
public class QuestionVO {
	String question_id;
	String question_title;
	String question_contents;
	String question_date;
	
	// 값을 넣고 뺄 때에는 변수 하나씩 기능을 처리한다.
	// 각 변수마다 넣는 기능, 꺼내는 기능이 필요하다.
	public String getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(String question_id) {
		this.question_id = question_id;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getQuestion_contents() {
		return question_contents;
	}
	public void setQuestion_contents(String question_contents) {
		this.question_contents = question_contents;
	}
	public String getQuestion_date() {
		return question_date;
	}
	public void setQuestion_date(String question_date) {
		this.question_date = question_date;
	}
}