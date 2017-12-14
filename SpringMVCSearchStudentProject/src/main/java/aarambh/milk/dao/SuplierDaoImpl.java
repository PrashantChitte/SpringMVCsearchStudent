package aarambh.milk.dao;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import aarambh.milk.bean.SuplierBean;
import aarambh.milk.entity.SuplierEntity;
import aarambh.milk.service.SuplierServiceImpl;

@Repository("suplierDaoIntf")
public class SuplierDaoImpl implements SuplierDaoIntf{

	private static final Logger logger = LoggerFactory.getLogger(SuplierDaoImpl.class);
	@Autowired
	SessionFactory sessionfact;
	
	public void addSuplier(SuplierEntity suplierentity) {
		Session session=sessionfact.openSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(suplierentity);
		logger.info("Suplier saved successfully");
		tx.commit();
		session.close();
	}
	
	@SuppressWarnings("unchecked")
	public List<SuplierEntity> listPersons() {
		Session session = this.sessionfact.getCurrentSession();
		Transaction tx=session.beginTransaction();
		List<SuplierEntity> suplierlist=session.createQuery("from SuplierEntity").list();
		//SQLQuery sq=session.createSQLQuery("Select ")
		tx.commit();
		for (SuplierEntity s : suplierlist) {
			logger.info("Suplier List::"+s);
		}
		
		return suplierlist;
	}

	public void deleteSuplier(int id) {
		Session session = this.sessionfact.getCurrentSession();
		Transaction tx=session.beginTransaction();
		int que=session.createQuery("DELETE FROM SuplierEntity WHERE supId = "+id).executeUpdate();
		tx.commit();
	}

	public SuplierEntity getSuplierById(int id) {
		Session ses=this.sessionfact.getCurrentSession();
		Transaction tx=ses.beginTransaction();
		SuplierEntity entity=(SuplierEntity) ses.get(SuplierEntity.class, new Integer(id));
		tx.commit();
		return entity;
	}

	public void updateSuplier(SuplierEntity suplierentity) {
		Integer id=suplierentity.getSupId();
		String supname=suplierentity.getSupName();
		Session ses=sessionfact.getCurrentSession();
		Transaction tx=ses.beginTransaction();
		System.out.println(suplierentity);
		ses.saveOrUpdate(supname, suplierentity);
		
		tx.commit();
		
	}

	
}
