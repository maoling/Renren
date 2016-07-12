package com.renren.service.impl;

import java.util.List;

import com.renren.base.service.BaseServiceImpl;
import com.renren.domain.Users;
import com.renren.service.inter.UserServiceInter;

public class UserServiceImpl extends BaseServiceImpl implements UserServiceInter{

	@SuppressWarnings("unchecked")
	@Override
	public Users check(Users user) {
		// TODO Auto-generated method stub
		List<Users> list = getResult("from Users where email=? and pwd=?", new Object[]{user.getEmail(),user.getPwd()});
		if(list.size() == 1)
			return list.get(0);
		else{
			return null;
		}	
	}

}
