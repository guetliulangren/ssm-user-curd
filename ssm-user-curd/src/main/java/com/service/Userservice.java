package com.service;

import java.io.Serializable;

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
		
		dUserdao.delete(id);
		
	}
	//�޸�
	public void getupdete(int id) {
		
		dUserdao.update(id);
	
		
		
	}
	//����
	public void getsave(User u) {
		
		
		dUserdao.insert(u);
		
		
		
	}
	
	
	

}
