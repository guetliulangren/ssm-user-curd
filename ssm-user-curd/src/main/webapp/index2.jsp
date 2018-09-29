<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% pageContext.setAttribute("context", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="utf-8">
  
   

<title>SSM-crud</title>
<script src="static/js/jquery.min.js"></script>

  <link href="stactic/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="stactic/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
       
     
    

   <nav class="navbar navbar-inverse navbar-fixed-top">
     
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right"  id  ="longinform"  method="post"   action="user/longin">
            <div class="form-group">
              <input type="text"   id="name1" name="Name"  placeholder="用户名" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" id="password1" name="Password"  placeholder="密码" class="form-control">
            </div>
            <button type="submit" class="btn btn-success"  id ="longin">Sign in</button>
          </form>
     </div>
    </nav>
    
	    
   
</body>
</html>