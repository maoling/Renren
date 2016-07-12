package com.renren.base.service;

import java.io.Serializable;
import java.util.List;

public interface BaseServiceInter {
   public List getResult(String hql,Object[] parameters);
   public void save(Object obj);
   public void delete(Object obj);
   public void update(Object obj);
   public Object findById(Class clazz,Serializable id);
   
}
