package com.lgm.dao;

import org.apache.ibatis.annotations.Param;


import com.lgm.bean.User;

public interface Userdao {
	
	//����
	User find(@Param("name")String name,@Param("password")char[] password);
	//ɾ��
	void delete(Integer id);
	//����
	void insert(User u);
	//�޸�
	void update(Integer id);
	
	

}
