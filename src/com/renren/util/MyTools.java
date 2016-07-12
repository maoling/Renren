package com.renren.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.upload.FormFile;


public class MyTools {
	//�ϴ�ͷ��ķ��� [�������ϴ���ͼƬ����]
	public static String uploadHead(HttpServletRequest request,FormFile ff,String id){
	
	 String newPhotoName ="";
	 InputStream stream = null;
	 OutputStream bos = null;
	 try{
		//���Ǹ�ÿ���û������Լ����ļ���.
		String filePath=request.getSession().getServletContext().getRealPath("/");
		
		//filePath���ǵ�ǰ���webӦ���Ǿ���·�� F:\apache-tomcat-6.0.20\webapps\xiaoneinew
		stream = ff.getInputStream();// ���ļ�����
		String oldPhotoName = ff.getFileName();
		if(ff == null || oldPhotoName == null || oldPhotoName.length() == 0){
			return newPhotoName;
		}
		System.out.println("filePath:"+filePath+"oldPhotoName: "+oldPhotoName);
		//filePath:E:\MyEclipse 2013\Projects\.metadata\.me_tcat7\webapps\Renren\  
		//oldPhotoName: java����ͼ.gif
		newPhotoName = id + oldPhotoName.substring(oldPhotoName.indexOf("."), oldPhotoName.length());
		String newFullNewPath = filePath+"\\images\\"+id+"\\head\\";
		System.out.println("newFullNewPath :"+newFullNewPath);
		//newFullNewPath :E:\MyEclipse 2013\Projects\.metadata\.me_tcat7\webapps\Renren\\images\1\head\
		//�ж�newFullNewPath�ļ����Ƿ����
		File f=new File(newFullNewPath);
		if(!f.isDirectory()){
			//�����ļ���,��������
			f.mkdirs();		
		}
		//���ϴ���ͷ�������޳ɳ� ���.��׺
		
		bos = new FileOutputStream(newFullNewPath+ newPhotoName);
		int len = 0;
		byte[] buffer = new byte[8192];
		while ((len = stream.read(buffer, 0, 8192)) != -1) {
			bos.write(buffer, 0, len);// ���ļ�д�������
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
