package com.renren.base.service;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public abstract class BaseServiceImpl implements BaseServiceInter {
	@Resource
    private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getResult(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		if(parameters != null && parameters.length > 0){
			for(int i=0; i<parameters.length; i++)
				query.setParameter(i,parameters[i]);
		}
		
		return query.list();
	}

	@Override
	public void save(Object obj) {
		// TODO Auto-generated method stub
		//System.out.println("save obj "+obj);
        this.sessionFactory.getCurrentSession().save(obj);
        //System.out.println("save-success");
	}

	@Override
	public void delete(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(obj);
	}

	@Override
	public void update(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(obj);
	}
	@Override
	public Object findById(Class clazz, Serializable id) {
		// TODO Auto-generated method stub
		return this.sessionFactory.getCurrentSession().load(clazz, id);
	}
	
}
