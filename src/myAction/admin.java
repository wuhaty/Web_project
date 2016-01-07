package myAction;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.websocket.Session;
import org.hibernate.Hibernate;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.net.httpserver.Authenticator.Failure;
import myDAO.UserHome;
import myModel.User;

public class admin extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6307091005746442125L;
	List<User> userAlbums= new ArrayList<User>();
	
	public List<User> getUserAlbums() {
		return userAlbums;
	}
	public void setUserAlbums(List<User> userAlbums) {
		this.userAlbums = userAlbums;
	}
	
	public String showUsers() throws Exception {
		UserHome userDAO=new UserHome();
		userAlbums=userDAO.findAllusers();
		return SUCCESS;
	}
}
