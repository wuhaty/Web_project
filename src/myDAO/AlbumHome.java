package myDAO;
// Generated 2016-1-1 14:39:37 by Hibernate Tools 4.3.1.Final

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;
import org.hibernate.mapping.Constraint;

import myModel.Album;
import myModel.User;
import myModel.Purchasehistory;

import static org.hibernate.criterion.Example.create;

/**
 * Home object for domain model class Album.
 * @see myModel.Album
 * @author Hibernate Tools
 */
public class AlbumHome {

	private static final Log log = LogFactory.getLog(AlbumHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory)new Configuration().configure().buildSessionFactory();
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Album transientInstance) {
		log.debug("persisting Album instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Album instance) {
		log.debug("attaching dirty Album instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Album instance) {
		log.debug("attaching clean Album instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Album persistentInstance) {
		log.debug("deleting Album instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Album merge(Album detachedInstance) {
		log.debug("merging Album instance");
		try {
			Album result = (Album) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Album findById(int id) {
		log.debug("getting Album instance with id: " + id);
		try {
			sessionFactory.getCurrentSession().beginTransaction();
			Album instance = (Album) sessionFactory.getCurrentSession().get("myModel.Album", id);
			sessionFactory.getCurrentSession().getTransaction().commit();
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Album> findByExample(Album instance) {
		log.debug("finding Album instance by example");
		try {
			sessionFactory.getCurrentSession().beginTransaction();
			List<Album> results = (List<Album>) sessionFactory.getCurrentSession().createCriteria("myModel.Album")
					.add(create(instance)).list();
			sessionFactory.getCurrentSession().getTransaction().commit();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	
	public List<Album> findByUser(String userName) {
		sessionFactory.getCurrentSession().beginTransaction();
		UserHome userDAO=new UserHome(); 
		int userId=userDAO.findByUserName(userName).getUserId();
				
		List<Album> albums = sessionFactory.getCurrentSession().createCriteria(Album.class)
							.createAlias("users","users").add(Restrictions.eq("users.userId",userId))
	                         .list();
		sessionFactory.getCurrentSession().getTransaction().commit();
		return albums;
	}
}
