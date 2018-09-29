package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgm.bean.User;
import com.lgm.dao.Userdao;
@Service
public class Userservice {
	//注入
	@Autowired
	Userdao dUserdao;
	
	//查找并返回一个对象
	public User getlongin(String name,String password) {
		
		

		User user=dUserdao.find(name, password);
		return user;
		
		
	}
	//删除
	public  void getdelete(int id) {
		
		dUserdao.delect(id);
		
	}
	//修改
	public int getupdete(int id) {
		
		int user=dUserdao.update(id);
		return user;
		
		
	}
	//增加
	public int getsave(User u) {
		
		
		int user=dUserdao.insert(u);
		return user;
		
		
	}
	
	

}
