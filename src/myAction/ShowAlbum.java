package myAction;

import com.opensymphony.xwork2.ActionSupport;

import myModel.Album;
import myDAO.AlbumHome;

public class ShowAlbum extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1331374895543322135L;
	
	Album album=new Album();
	
	public Album getAlbum() {
		return album;
	}
	public void setAlbum(Album album) {
		this.album = album;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		AlbumHome albumDAO=new AlbumHome();
		this.album=albumDAO.findById(1);
		return super.execute();
	}
}
