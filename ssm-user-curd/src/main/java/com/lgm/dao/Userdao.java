package com.lgm.dao;

import org.apache.ibatis.annotations.Param;

import com.lgm.bean.User;

public interface Userdao {
	
	//查找
	User find(@Param("name")String name,@Param("password")String password);
	//删除
	int  delect(Integer id);
	//增加
	int insert(User u);
	//修改
	int update(int id);
	

}
