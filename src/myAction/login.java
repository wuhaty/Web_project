package myAction;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.net.httpserver.Authenticator.Failure;

public class login extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
	
	public String verify() {
		if(userName.equals("Sia")&&userPwd.equals("123")){
			System.out.println(userName+":µÇÂ¼³É¹¦");
			ActionContext actionContext = ActionContext.getContext();
		    Map session = actionContext.getSession();
		    session.put("userName", userName);
			return  SUCCESS;
		}
		System.out.println(userName+":µÇÂ¼Ê§°Ü");
		return LOGIN;
	}
	
	public String logout() {
		  ActionContext actionContext = ActionContext.getContext();
	      Map session = actionContext.getSession();
	      session.clear();
	      return SUCCESS;
	}
}
