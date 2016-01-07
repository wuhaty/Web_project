package myAction;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import myModel.Album;
import myModel.Singer;
import myDAO.AlbumHome;
import myDAO.SingerHome;

public class myMusic extends ActionSupport{
	
		/**
	 * 
	 */
		private static final long serialVersionUID = -1322807399811097038L;
		private List<Album> list=new ArrayList<Album>();
		private List<Singer> list_S=new ArrayList<Singer>();
		
		public List<Singer> getList_S() {
			return list_S;
		}

		public void setList_S(List<Singer> list_S) {
			this.list_S = list_S;
		}

		public List<Album> getList() {
			return list;
		}

		public void setList(List<Album> list) {
			this.list = list;
		}

		public String getUserName() {
			return userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		private String userName;
		
		@Override
		public String execute() throws Exception {
			// TODO Auto-generated method stub
			userName = (String) ActionContext.getContext().getSession().get("userName"); 
			AlbumHome albumDAO=new AlbumHome();
			SingerHome singerDAO=new SingerHome();
			this.list=albumDAO.findByUser(userName);
			
			
			for (Album album : list) {
				Singer singer=new Singer();
				singer=singerDAO.findById(album.getSingerId());
				this.list_S.add(singer);
			}
			
			return SUCCESS;
		}
}
