package myAction;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class regist extends ActionSupport{
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	private String userName;
	private String userPwd;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(userName+":×¢²á³É¹¦");
		return super.execute();
	}
}
