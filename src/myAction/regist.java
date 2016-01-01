package myAction;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import myDAO.UserHome;
import myModel.User;

public class regist extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5303692344703628350L;


	private String userName;
	private String userPwd;
	private String reuserPwd;
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
	public String getReuserPwd() {
		return reuserPwd;
	}

	public void setReuserPwd(String reuserPwd) {
		this.reuserPwd = reuserPwd;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		UserHome userDAO=new UserHome();
		User newUser=new User();
		newUser.setUserName(this.userName);
		newUser.setUserPwd(this.userPwd);
		userDAO.persist(newUser);
		System.out.println(newUser.getUserName()+":×¢²á³É¹¦");
		return super.execute();
	}
}
