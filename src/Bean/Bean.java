package Bean;

public class Bean {
	public Bean(String new_title, String new_main, String new_person, String new_date, String new_advice,
			String new_type, String new_reply, String new_kind, String user_ID, String user_password,
			String user_type) {
		super();
		New_title = new_title;
		New_main = new_main;
		New_person = new_person;
		New_date = new_date;
		New_advice = new_advice;
		New_type = new_type;
		New_reply = new_reply;
		New_kind = new_kind;
		User_ID = user_ID;
		User_password = user_password;
		User_type = user_type;
	}
	public Bean() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "bean [New_title=" + New_title + ", New_main=" + New_main + ", New_person=" + New_person + ", New_date="
				+ New_date + ", New_advice=" + New_advice + ", New_type=" + New_type + ", New_reply=" + New_reply
				+ ", New_kind=" + New_kind + ", User_ID=" + User_ID + ", User_password=" + User_password
				+ ", User_type=" + User_type + "]";
	}
	public String getNew_title() {
		return New_title;
	}
	public void setNew_title(String new_title) {
		New_title = new_title;
	}
	public String getNew_main() {
		return New_main;
	}
	public void setNew_main(String new_main) {
		New_main = new_main;
	}
	public String getNew_person() {
		return New_person;
	}
	public void setNew_person(String new_person) {
		New_person = new_person;
	}
	public String getNew_date() {
		return New_date;
	}
	public void setNew_date(String new_date) {
		New_date = new_date;
	}
	public String getNew_advice() {
		return New_advice;
	}
	public void setNew_advice(String new_advice) {
		New_advice = new_advice;
	}
	public String getNew_type() {
		return New_type;
	}
	public void setNew_type(String new_type) {
		New_type = new_type;
	}
	public String getNew_reply() {
		return New_reply;
	}
	public void setNew_reply(String new_reply) {
		New_reply = new_reply;
	}
	public String getNew_kind() {
		return New_kind;
	}
	public void setNew_kind(String new_kind) {
		New_kind = new_kind;
	}
	public String getUser_ID() {
		return User_ID;
	}
	public void setUser_ID(String user_ID) {
		User_ID = user_ID;
	}
	public String getUser_password() {
		return User_password;
	}
	public void setUser_password(String user_password) {
		User_password = user_password;
	}
	public String getUser_type() {
		return User_type;
	}
	public void setUser_type(String user_type) {
		User_type = user_type;
	}
	String New_title = new String();
	String New_main = new String();
	String New_person = new String();
	String New_date = new String();
	String New_advice = new String();
	String New_type = new String();//新闻状态 待发/批准发布/已发布
	String New_reply = new String();
	String New_kind = new String();//新闻栏目
	String User_ID = new String();
	String User_password = new String();
	String User_type = new String();//用户权限状态
	
	
	
	

}
