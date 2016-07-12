package com.renren.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.upload.FormFile;


public class MyTools {
	//上传头像的方法 [返回你上传的图片名称]
	public static String uploadHead(HttpServletRequest request,FormFile ff,String id){
	
	 String newPhotoName ="";
	 InputStream stream = null;
	 OutputStream bos = null;
	 try{
		//考虑给每个用户创建自己的文件夹.
		String filePath=request.getSession().getServletContext().getRealPath("/");
		
		//filePath就是当前这个web应用是绝对路径 F:\apache-tomcat-6.0.20\webapps\xiaoneinew
		stream = ff.getInputStream();// 把文件读入
		String oldPhotoName = ff.getFileName();
		if(ff == null || oldPhotoName == null || oldPhotoName.length() == 0){
			return newPhotoName;
		}
		System.out.println("filePath:"+filePath+"oldPhotoName: "+oldPhotoName);
		//filePath:E:\MyEclipse 2013\Projects\.metadata\.me_tcat7\webapps\Renren\  
		//oldPhotoName: java集合图.gif
		newPhotoName = id + oldPhotoName.substring(oldPhotoName.indexOf("."), oldPhotoName.length());
		String newFullNewPath = filePath+"\\images\\"+id+"\\head\\";
		System.out.println("newFullNewPath :"+newFullNewPath);
		//newFullNewPath :E:\MyEclipse 2013\Projects\.metadata\.me_tcat7\webapps\Renren\\images\1\head\
		//判断newFullNewPath文件夹是否存在
		File f=new File(newFullNewPath);
		if(!f.isDirectory()){
			//不是文件夹,创建即可
			f.mkdirs();		
		}
		//把上传的头像名字修成成 编号.后缀
		
		bos = new FileOutputStream(newFullNewPath+ newPhotoName);
		int len = 0;
		byte[] buffer = new byte[8192];
		while ((len = stream.read(buffer, 0, 8192)) != -1) {
			bos.write(buffer, 0, len);// 将文件写入服务器
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		try {
			bos.close();
			stream.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	  return newPhotoName;
	}
}
