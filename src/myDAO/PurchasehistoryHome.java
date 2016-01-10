package myDAO;
// Generated 2016-1-1 14:39:37 by Hibernate Tools 4.3.1.Final

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.StaleObjectStateException;

import myModel.Purchasehistory;
import myModel.PurchasehistoryId;

import static org.hibernate.criterion.Example.create;

/**
 * Home object for domain model class Purchasehistory.
 * @see myModel.Purchasehistory
 * @author Hibernate Tools
 */
public class PurchasehistoryHome {

	private static final Log log = LogFactory.getLog(PurchasehistoryHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Purchasehistory transientInstance) {
		log.debug("persisting Purchasehistory instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Purchasehistory instance) {
		log.debug("attaching dirty Purchasehistory instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Purchasehistory instance) {
		log.debug("attaching clean Purchasehistory instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Purchasehistory persistentInstance) {
		log.debug("deleting Purchasehistory instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Purchasehistory merge(Purchasehistory detachedInstance) {
		log.debug("merging Purchasehistory instance");
		try {
			Purchasehistory result = (Purchasehistory) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Purchasehistory findById(myModel.PurchasehistoryId id) {
		log.debug("getting Purchasehistory instance with id: " + id);
		try {
			Purchasehistory instance = (Purchasehistory) sessionFactory.getCurrentSession()
					.get("myModel.Purchasehistory", id);
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

	public List<Purchasehistory> findByExample(Purchasehistory instance) {
		log.debug("finding Purchasehistory instance by example");
		try {
			List<Purchasehistory> results = (List<Purchasehistory>) sessionFactory.getCurrentSession()
					.createCriteria("myModel.Purchasehistory").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	

}
