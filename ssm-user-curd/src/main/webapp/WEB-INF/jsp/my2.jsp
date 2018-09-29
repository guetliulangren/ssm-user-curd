<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%  pageContext.setAttribute("app_context", request.getContextPath());%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <script src="${app_context}/static/js/jquery.min.js"></script>
  <link href="${app_context}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="${app_context}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
     <style> 
      h1{text-align:center} 
    </style> 
<title>员工列表</title>
</head>
<body>
<!-- 员工更新框 -->
<div class="modal fade" id="updatemodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">员工修改</h4>
      </div>
      <div class="modal-body">
	        <form class="form-horizontal">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">员工名字</label>
				    <div class="col-sm-10">
				      <input type="text"   name="empName" class="form-control" id="updateempname" placeholder="empName">
				      <span id="helpBlock" class="help-block">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">性别</label>
				    <div class="col-sm-10">
				      <label class="radio-inline">
						  <input type="radio" name="gender" id="updatesex" value="男"> 男
						</label>
						<label class="radio-inline">
						  <input type="radio" name="gender" id="updatesex" value="女"> 女
						</label>
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
				    <div class="col-sm-10">
				      <input type="email"     name="email" class="form-control" id="updateemail" placeholder="email">
				       <span id="hlpBlock" class="help-block">
				    </div>
				  </div>
				
			      <div class="form-group">
				             <label for="inputEmail3" class="col-sm-2 control-label">部门ID</label>
							  <div class="col-sm-5">
							    <select class="form-control"  name="deptId"  id="updateaddid">
									
									</select>
							    </div>
				  </div> 
				  
				  <div class="form-group">
				   <label for="inputEmail3" class="col-sm-2 control-label">部门名</label>
							  <div class="col-sm-5">
							    <select class="form-control"  name="department"  id="updatdepartment">
									
									</select>
							    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-10 col-sm-10">
				      <button type="submit" class="btn btn-default">提交</button>
				    </div>
				  </div>
				</form>
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary"    id="emp_update">更新</button>
      </div>
    </div>
  </div>
</div>



<!-- 员工添加的模态框 -->
<div class="modal fade" id="empaddmodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">员工添加</h4>
      </div>
      <div class="modal-body">
	        <form class="form-horizontal">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">员工名字</label>
				    <div class="col-sm-10">
				      <input type="text"   name="empName" class="form-control" id="inputempname" placeholder="empName">
				      <span id="helpBlock" class="help-block">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">性别</label>
				    <div class="col-sm-10">
				      <label class="radio-inline">
						  <input type="radio" name="gender" id="inlineRadio1" value="男"> 男
						</label>
						<label class="radio-inline">
						  <input type="radio" name="gender" id="inlineRadio2" value="女"> 女
						</label>
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
				    <div class="col-sm-10">
				      <input type="email"     name="email" class="form-control" id="inputemail" placeholder="email">
				       <span id="hlpBlock" class="help-block">
				    </div>
				  </div>
				 <!--  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">部门ID</label>
				    <div class="col-sm-10">
				      <input type="text" name="deptId" class="form-control" id="inputid" placeholder="deptId">
				    </div>
				  </div> -->
			  <div class="form-group">
				   <label for="inputEmail3" class="col-sm-2 control-label">部门ID</label>
							  <div class="col-sm-5">
							    <select class="form-control"  name="deptId"  id="deptaddid">
									
									</select>
							    </div>
				  </div> 
				  <div class="form-group">
				   <label for="inputEmail3" class="col-sm-2 control-label">部门名</label>
							  <div class="col-sm-5">
							    <select class="form-control"  name="de"  id="deptadd">
									
									</select>
							    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-10 col-sm-10">
				      <button type="submit" class="btn btn-default">提交</button>
				    </div>
				  </div>
				</form>
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary"    id="emp_save">保存</button>
      </div>
    </div>
  </div>
</div>




<div   class="container">
  <h2>  welcome:  ${name}  </h2>
			  <div class="row">
			    <div class="col-md-12">
			     
			      <h1  style="color:blue">build by lgm</h1>
			 
			    </div>
			   </div>
			   <!-- 首页顶部信息 -->
		
		<div class="row">
		    <div class="col-md-4 col-md-offset-8">
		     <button type="button" class="btn btn-primary"   id="emp_add_model">新增</button>
		     <button type="button" class="btn btn-danger">删除</button>
		    </div>
		</div>
		<!-- 删除增加按钮 -->
		
		
      <!-- 表格 -->
     <div class="row">
      <div class="col-md-12">
        <table  class="table table-hover"  id="mytable">
         <thead><tr>
           <th>#</th>
           <th>empName</th>
           <th>gender</th>
           <th>email</th>
           <th>deptId</th>
           <th>deptName</th>
           <th>操作</th>
         </tr>
       </thead>
        <tbody>
      
        </tbody>
         </table>
       
 
     </div>
  
   </div>  
  
<!-- 显示分页  -->
 <div class="row">
    <div class="col-md-6"  id="pageinfo_area">

    </div> 
    <div class="col-md-6"  id="pageinfog">

    </div> 
</div>
</div>
<script type="text/javascript">


   var pagetotal;
    $(function(){
	
	   to_page(1);
	
    });	

			  function to_page(pn){
				$.ajax({
					
					url:"${app_context}/my/emps",
					data:"pn="+pn,
					type:"GET",
					datatype:"json",
					success:function(result){
					
						
					//解析并显示员工数据
					 build_emp_info(result);
					//解析并显示分页信息
					build_page_info(result);
				    build_pagenav_info(result);
					}
				  });
			  }
             //解析并显示员工数据
                
				function build_emp_info(result)
				{
					   $("#mytable tbody").empty();
					   var emp=result.extend.pageinfo.list;
					   $.each(emp,function(index,items){
						var d=$("<td> </td>").append("#");
						var dempName=$("<td> </td>").append(items.empName);
						var dgender=$("<td> </td>").append(items.gender);
						var demail=$("<td> </td>").append(items.email);
						var dempid=$("<td> </td>").append(items.deptId);
						var ddeptName=$("<td> </td>").append(items.department.deptName);
						var dbutton=$("<button></button>").addClass("btn btn-primary btn-xs   edi_dutton")
						.append($(" <span></span>").addClass("glyphicon glyphicon-pencil")).append(" 编辑");
					     var debutton=$("<button></button>").addClass("btn btn-danger btn-xs  dele_dutton")
							.append($(" <span></span>").addClass("glyphicon glyphicon-remove-circle")).append("删除");
					     var dbbutton=$("<td></td>").append(dbutton).append(" ").append(debutton);
						$("<tr></tr>")
						.append(d)
						.append(dempName)
						.append(dgender)
						.append(demail)
						.append(dempid)
						.append(ddeptName)
						.append(dbbutton)
						.appendTo("#mytable tbody");
						
					}); 
					
				}
				function build_page_info(result){
					
					$("#pageinfo_area").empty();
					$("#pageinfo_area").append("当前"+result.extend.pageinfo.pageNum+",总"+result.extend.pageinfo.pages+"页,总"+result.extend.pageinfo.total+"条记录");
					 pagetotal=result.extend.pageinfo.pages;
					
				}
				
	             function build_pagenav_info(result)
	             {
	            	 $("#pageinfog").empty();
	            	 var ur=$("<ul></ul>").addClass("pagination");
	            	 var firstpage=$("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
	            	 var prepage=$("<li></li>").append($("<a></a>").append("&raquo;"));
	            	
	            	 if(result.extend.pageinfo.hasPreviousPage==false)
	            		 {
	            		 firstpage.addClass("disabled");
	            		 prepage.addClass("disabled");
	            		 
	            		 }
	            	 else{
	            		 
	            		 firstpage.click(function(){
		            		 to_page(1); 
		            	 });
		            	 prepage.click(function(){
		            		 to_page(result.extend.pageinfo.pageNum+1); 
		            	 });
	            		 
	            		 
	            	 }
	            	 var nextpage=$("<li></li>").append($("<a></a>").append("&laquo;"));
	            	 var lastpage=$("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
	            	 if(result.extend.pageinfo.hasNextPage==false)
            		 {
	            		
	            		 lastpage.addClass("disabled");
	            		
	            		 nextpage.addClass("disabled");
            		 
            		 }
	            	 else{
	            		 nextpage.click(function(){
		            		 to_page(result.extend.pageinfo.pageNum-1); 
		            	 });
		            	 lastpage.click(function(){
		            		 to_page(result.extend.pageinfo.pages); 
		            	 });
	            		 
	            	 }
	            	
					 ur.append(firstpage).append(nextpage);
	            	 var emp=result.extend.pageinfo.navigatepageNums;
					 $.each(emp,function(index,items){
						 
						 
						 var f=$("<li></li>").append($("<a></a>").append(items));
						 if(result.extend.pageinfo.pageNum==items)
							 {
							 f.addClass("active");
							 }
						 f.click(function(){
							 
							 to_page(items);
							 
							 
						 });
						 ur.append(f);
						 
					 });
					 ur.append(prepage).append(lastpage);
					 var nav=$("<nav></nav>").append(ur);
					 nav.appendTo("#pageinfog");			
	             }
	             /*  点击弹出模态框*/
	             $("#emp_add_model").click(function(){
	            	 /*  将表单数据重置*/
	            	 $("#empaddmodel form")[0].reset();
	            	 /*  发送ajax请求查出部门信息*/
	            	 getdeptname();
	            	 $("#empaddmodel").modal({
	            		 
	            		 backdrop:"static"
	            		 
	            	 });
	             });
	             /* 保存按钮 */
	            /*  检验名字是否重复 */
	            $("#inputempname").change(function(){
	             var empName= this.value;
	             $.ajax({
	          
	            
	            url:"${app_context}/my/check",
	            data:"empName="+empName,
	            type:"POST",
	            success:function(result){
	            if(result.code==100)
	            {
	                 show_validator_msg("#inputempname","success","用户名可用");
	                 $("#emp_save").attr("ajax_va","success");
	            }
	            else  if(result.code==200){
	            
	              show_validator_msg("#inputempname","error","用户名不可用");
	              $("#emp_save").attr("ajax_va","error");
	            
	            }
	            }
	           
	            
	            });
	            });
	             /*  数据校验*/
	           
	             function validate_add_form(){
	             
	            var empname= $("#inputempname").val();
	            var pempname=/(^[a-zA-Z0-9_-]{6,10}$)|(^[\u2E80-\u9FFF]{2,5})/;
	              if(!pempname.test(empname)){
	              show_validator_msg("#inputempname","error","中文名2-5位，英文6-10");
	             
	             /*  alert("中文名2-5位，英文6-10"); */
	               return false;
	              }
	              else{
	               show_validator_msg("#inputempname","success","");
	               /*   $("#inputempname").parent().addClass("has-success");
	                  $("#inputempname").next("span").text(""); */
	              
	              }
	              ;
	              var emailcheck= $("#inputemail").val();
	              var emailregulator=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
                     
	              if(!emailregulator.test(emailcheck)){
	              
	             /*   alert("邮箱格式不正确"); */
	             show_validator_msg("#inputemail","error","邮箱格式不正确");
	               return false;
	              } 
	              else{
	               show_validator_msg("#inputemail","success","");
	              
	              }
	              return true;
	             
	             }
	             function show_validator_msg(ele,status,msg)
	             {
	             
	                $(ele).parent().removeClass("has-success  has-error");
	                 $(ele).next("span").text("");
	                if(status=="success")
	                {
	                  $(ele).parent().addClass("has-success");
	                  $(ele).next("span").text("");
	                }
	                else if(status=="error")
	                {
	                
	                  $(ele).parent().addClass("has-error");
	                  $(ele).next("span").text(msg);
	                
	                }
	             
	             }
	             
	             
	             $("#emp_save").click(function(){
	             /*  提交数据前对数据进行校验*/
	            if(!validate_add_form()){
	                
	                  return false;
	                
	                };  
	            /*        判断之前的ajax请求是否成功 */
	            	 if( $(this).attr("ajax_va")=="error")
	            	 {
	            	    return false;
	            	  
	            	 };
	            	 $.ajax({
	            			
	            			url:"${app_context}/my/save",
	            			type:"POST",
	            			data:$("#empaddmodel form").serialize(),
	            			success:function(result){
	            				
	            				if(result.code)
	            				{
	            				   $("#empaddmodel").modal('hide');
	            				   to_page(pagetotal);
	            				}
	            				
	            			   else{
	            			        
	            			        
	            			        if(undefined==result.extend.errofail.email)
	            			        {
	            			         show_validator_msg("#inputemail","error",result.extend.errofail.email);
	            			        }
	            			        if(undefined==result.extend.errofail.empName)
	            			        {
	            			         show_validator_msg("#inputempname","error",result.extend.errofail.empName);
	            			        }
	            			   }
	            				
	            				
	            			}
	            			
	            			
	            		
	            	 
	            	 }); 
	            	 
	            	 
	             });
	             function getdeptname(){
	            	 
	            	 $.ajax({
	            			
	            			url:"${app_context}/my/deptname",
	            			type:"GET",
	            			success:function(result){
	            				
	            			/* 	{"code":100,"msg":"成功","extend":{"depts":[{"deptId":1,"deptName":"研发部"},{"deptId":2,"deptName":"测试部"}]}} */
	            			$.each(result.extend.depts,function(){
	            				
	            				var option=$("<option></option>").append(this.deptName).attr("value",this.deptId);
	                            var option1=$("<option></option>").append(this.deptId);
	                            option1.appendTo("#deptaddid");
	            				option.appendTo("#deptadd");
	            				
	            				
	            			});
	            				
	            				
	       	
	      }
	            	 });
	            	 
	             }
	             
	            $(document).on("click",".edi_dutton",function(){
	            
	            
	             $("#updatemodel").modal({
	            		 
	            		 backdrop:"static"
	            		 
	            	 });
	            
	            
	            
	            });
	             
	             
	             
</script> 
</body>
</html>