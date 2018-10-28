package com.lgm.dao;

import java.io.Serializable;

import org.apache.ibatis.annotations.Param;


import com.lgm.bean.User;

public interface Userdao {
	
	//查找
	User find(@Param("name")String name,@Param("password") String password);
	//删除
	void delete(Integer id);
	//增加
	void insert(User u);
	//修改
	void update(Integer id);
	
	

}
