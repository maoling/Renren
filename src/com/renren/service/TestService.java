package com.renren.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.annotation.Resource;

@Transactional @Service
public class TestService {
    @Resource
	private SessionFactory sessionFactory;

	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	//返回国家列表
	public List showCountry(){	
		return (List) sessionFactory.getCurrentSession().createQuery("from Province").list();
	}
}
