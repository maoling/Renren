package com.renren.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.renren.domain.University;
import com.renren.service.inter.UniversityServiceInter;
import com.sun.mail.iap.Response;

public class ChangeUniversityInfo extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	//禁用浏览器缓存		
    	
    	resp.setContentType("text/xml;charset=utf-8");
    	resp.setHeader("Cache-Control", "no-cache ");
    	PrintWriter out = resp.getWriter();
    	//响应用户选择不同省所对应的大学
    	String proid = req.getParameter("proid");
    	String cid = req.getParameter("cid");
    	//System.out.println(proid +"－－－"+cid);
    	//获取Spring容器
    	WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
    	UniversityServiceInter universityService= (UniversityServiceInter)ctx.getBean("universityServiceImpl");
    	
    	
		List<University> universityList= universityService.getResult
		("from University where province.id=? and country.id=?", 
		new Object[]{Integer.valueOf(proid),Integer.valueOf(cid)});
    	
		String res = "<allUniversities>"; 
        for(University u: universityList){
        	res+="<unis><id>"+u.getId()+"</id><name><![CDATA["
        			+u.getName()+"]]></name></unis>";
        }
        res += "</allUniversities>";
        //System.out.println("res:"+res);
        out.write(res);
        out.close();
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	this.doGet(req, resp);
    }
	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
