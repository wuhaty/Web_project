package myDAO;
// Generated 2016-1-1 14:39:37 by Hibernate Tools 4.3.1.Final

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import myModel.Singer;

import static org.hibernate.criterion.Example.create;

/**
 * Home object for domain model class Singer.
 * @see myModel.Singer
 * @author Hibernate Tools
 */
public class SingerHome {

	private static final Log log = LogFactory.getLog(SingerHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory)new Configuration().configure().buildSessionFactory();
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Singer transientInstance) {
		log.debug("persisting Singer instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Singer instance) {
		log.debug("attaching dirty Singer instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Singer instance) {
		log.debug("attaching clean Singer instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Singer persistentInstance) {
		log.debug("deleting Singer instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Singer merge(Singer detachedInstance) {
		log.debug("merging Singer instance");
		try {
			Singer result = (Singer) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Singer findById(java.lang.Integer id) {
		log.debug("getting Singer instance with id: " + id);
		try {
			sessionFactory.getCurrentSession().beginTransaction();
			Singer instance = (Singer) sessionFactory.getCurrentSession().get("myModel.Singer", id);
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

	public List<Singer> findByExample(Singer instance) {
		log.debug("finding Singer instance by example");
		try {
			List<Singer> results = (List<Singer>) sessionFactory.getCurrentSession().createCriteria("myModel.Singer")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
