package com.renren.service.inter;

import com.renren.base.service.BaseServiceInter;
import com.renren.domain.Users;



public interface UserServiceInter extends BaseServiceInter {

	//��֤�û��Ƿ���ڣ�����Users�����������null,��ʾ���û�������
	public Users check(Users user);
}
