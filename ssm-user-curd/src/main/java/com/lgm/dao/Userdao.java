package com.lgm.dao;

import org.apache.ibatis.annotations.Param;

import com.lgm.bean.User;

public interface Userdao {
	
	//����
	User find(@Param("name")String name,@Param("password")String password);
	//ɾ��
	int  delect(Integer id);
	//����
	int insert(User u);
	//�޸�
	int update(int id);
	

}
