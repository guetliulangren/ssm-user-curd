package com.shiro;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import com.lgm.bean.User;
import com.service.Userservice;
public class Shiro1 extends AuthenticatingRealm{
	//自动注入
	@Autowired
    Userservice userservice;
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
	
		UsernamePasswordToken user=(UsernamePasswordToken) token;
		String name=user.getUsername();
	    char[] password=user.getPassword();
		/*System.out.println(name);
		System.out.println(password);*/
	    String pass=String.valueOf(password);
	    User u=userservice.getlongin(name, pass);
	   
	    System.out.println(u);
	    if(u==null) {
		
	     throw new UnknownAccountException("用户 ");
			
		 }
		
		Object principal=name;
		Object credentials=password;
		String realmName=getName();
		SimpleAuthenticationInfo info=new SimpleAuthenticationInfo(principal, credentials, realmName);
		return info;
	}

}
