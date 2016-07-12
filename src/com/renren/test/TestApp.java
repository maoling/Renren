package com.renren.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestApp {
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
       ApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
       TestService ts = (TestService) ac.getBean("testservice");
       System.out.println(ts.getName());
	}

}
