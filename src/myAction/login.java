package myAction;

import java.util.Map;

import javax.websocket.Session;

import org.hibernate.Hibernate;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.net.httpserver.Authenticator.Failure;
import myDAO.UserHome;
import myModel.User;

public class login extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName;
	private String userPwd;
	
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
	
	public String verify() {
		UserHome userDAO=new UserHome();
		User newUser=new User();
		newUser.setUserName(userName);
		newUser.setUserPwd(userPwd);
		if(!userDAO.findByExample(newUser).isEmpty()){
			newUser=userDAO.findByExample(newUser).get(0);
			ActionContext actionContext = ActionContext.getContext();
		    Map session = actionContext.getSession();
		    session.put("userName", userName);
			if(newUser.getisAdmin()!=1){
				return  SUCCESS;
			}else{
				return  "admin";
			}
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
	
	public String modifyPwd() {
		  ActionContext actionContext = ActionContext.getContext();
	      Map session = actionContext.getSession();
	      UserHome userDAO=new UserHome();
	      User newUser=userDAO.findByUserName((String) session.get("userName"));
	      newUser.setUserPwd(this.userPwd);
	      System.out.println(newUser.getUserName()+'\n'+newUser.getUserPwd()+'\n'+newUser.getUserId());
	      userDAO.merge(newUser);
	      return SUCCESS;
	}
	
	public String freeze() {
		  ActionContext actionContext = ActionContext.getContext();
	      Map session = actionContext.getSession();
	      UserHome userDAO=new UserHome();
	      User newUser=userDAO.findByUserName((String) session.get("userName"));
	      userDAO.delete(newUser);
	      return SUCCESS;
	}
}
