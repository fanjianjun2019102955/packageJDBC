package cn.nenu.entity;

public class Doctor {
	private Long userID;
	private String username;
	private String password;
	private int sex;

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Doctor(long userID, String username, String password, int sex) {
		super();
		this.userID = userID;
		this.username = username;
		this.password = password;
		this.sex = sex;
	}

	public long getUserID() {
		return userID;
	}

	public void setUserID(long userID) {
		this.userID = userID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		return "Doctor [userID=" + userID + ", username=" + username + ", password=" + password + ", sex=" + sex + "]";
	}

}
