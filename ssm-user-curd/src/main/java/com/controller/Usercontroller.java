package com.controller;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
@RequestMapping("user")
public class Usercontroller {
	//映射路径
	@RequestMapping(value="/longin")
	@ResponseBody
    public String login(@RequestParam("Name")String name,@RequestParam("Password") String password
    		
    		
    		 ){
		
		
		Subject subject=SecurityUtils.getSubject();
    	UsernamePasswordToken token =new  UsernamePasswordToken(name,password);
    	 //  return new  ModelAndView("my2");//视图重定向
    	  
    	   
    	   try {
			
    	  
    	   subject.login(token);
    	   if (subject.hasRole("admin")) {
               return "redirect:/admin/adminpage";
           } else if (subject.hasRole("user")) {
               return "redirect:/teacher/showCourse";
           } else if (subject.hasRole("visit")) {
               return "redirect:/student/showCourse";
           }
    	  
	   
    	   } catch (AuthenticationException e) {
   			// TODO: handle exception
    		   
    		 
    		
   		 }
	 
       return "index2";
	
	}
	

}

