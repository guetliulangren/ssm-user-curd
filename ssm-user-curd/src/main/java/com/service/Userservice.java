package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgm.bean.User;
import com.lgm.dao.Userdao;
@Service
public class Userservice {
	//ע��
	@Autowired
	Userdao dUserdao;
	
	//���Ҳ�����һ������
	public User getlongin(String name,String password) {
		
		

		User user=dUserdao.find(name, password);
		return user;
		
		
	}
	//ɾ��
	public  void getdelete(int id) {
		
		dUserdao.delect(id);
		
	}
	//�޸�
	public int getupdete(int id) {
		
		int user=dUserdao.update(id);
		return user;
		
		
	}
	//����
	public int getsave(User u) {
		
		
		int user=dUserdao.insert(u);
		return user;
		
		
	}
	
	

}
