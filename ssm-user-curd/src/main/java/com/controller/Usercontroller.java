package com.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lgm.bean.User;
import com.service.Userservice;

@Controller
@RequestMapping("user")
public class Usercontroller {
	
	//自动注入
	@Autowired
	Userservice userservice;
	@Autowired
	HttpServletRequest request;
	//映射路径
	@RequestMapping(value="/longin")
	@ResponseBody
    public ModelAndView login(@RequestParam("Name")String name,@RequestParam("Password")String password
    		
    		
    		 ){
	   
       User user= (User) userservice.getlongin(name, password);
     
      
       if(user!=null)
	   {
    	   HttpSession session=request.getSession();
    	   session.setAttribute("username", name);
    	   return new  ModelAndView("my2");//视图重定向
	   
	   
	   }
	         return null;
	
	}
	

}

