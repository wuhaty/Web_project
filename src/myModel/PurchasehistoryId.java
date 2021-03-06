package myModel;
// Generated 2016-1-1 14:39:36 by Hibernate Tools 4.3.1.Final

/**
 * PurchasehistoryId generated by hbm2java
 */
public class PurchasehistoryId implements java.io.Serializable {

	private int userId;
	private String albumId;

	public PurchasehistoryId() {
	}

	public PurchasehistoryId(int userId, String albumId) {
		this.userId = userId;
		this.albumId = albumId;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getAlbumId() {
		return this.albumId;
	}

	public void setAlbumId(String albumId) {
		this.albumId = albumId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof PurchasehistoryId))
			return false;
		PurchasehistoryId castOther = (PurchasehistoryId) other;

		return (this.getUserId() == castOther.getUserId())
				&& ((this.getAlbumId() == castOther.getAlbumId()) || (this.getAlbumId() != null
						&& castOther.getAlbumId() != null && this.getAlbumId().equals(castOther.getAlbumId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getUserId();
		result = 37 * result + (getAlbumId() == null ? 0 : this.getAlbumId().hashCode());
		return result;
	}

}
