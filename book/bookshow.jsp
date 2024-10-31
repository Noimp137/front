<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">	
	<meta charset="utf-8">
	<title>教材管理系统</title>
	

	<%@ include file="../css.jsp" %>


</head>

<body>
		<!-- topbar starts -->
		
	<%@ include file="../head.jsp" %>
	
	<!-- topbar ends -->
	
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			
			<%@ include file="../menu.jsp" %>
			
			<!--/span-->
			<!-- left menu ends -->
			
			
			
			<div id="content" class="span10">
			<!-- content starts -->
			


			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i>${title }</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" action="${url }" method="post" onsubmit="return checkform()" enctype="multipart/form-data" >
							<fieldset>
							
							
							<div class="control-group">
								<label class="control-label" for="focusedInput">所属课程</label>
								<div class="controls">
								 <input class="input-xlarge focused" type='text' value="${bean.cname }" readonly="readonly"  name='bnumber' id='bnumberid' />
							
								
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教材编号</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${bean.bnumber }" readonly="readonly"  name='bnumber' id='bnumberid' />
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教材类别</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${bean.bcategory }" readonly="readonly"  name='bcategory' id='bcategoryid' />
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教材名称</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${bean.bname }" readonly="readonly"  name='bname' id='bnameid' />
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教材封面</label>
								<div class="controls">
								   <img src="<%=basePath %>/${bean.pic }" alt="img" width="80" height="80">
								</div>
							  </div>
							  
							  
							
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">作者</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${bean.author }" readonly="readonly"  name='author' id='authorid' />
								</div>
							  </div>
							  
							  
							
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">出版社</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${bean.press }" readonly="readonly"  name='press' id='pressid' />
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">单价(元)</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${bean.price }" readonly="readonly"  name='price' id='priceid' />
								</div>
							  </div>
							  
							 
							  
							 
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教材介绍</label>
								<div class="controls">
								  <textarea class="input-xlarge textarea"  name="intro" readonly="readonly"  style="width: 500px; height: 150px">${bean.intro }</textarea>
								</div>
							  </div>
							  
							  
							  
							  <div class="form-actions">
							             

  			<button class="btn btn-primary btn-sm"  type="button"  onclick="javascript:history.go(-1);">&nbsp;&nbsp;返&nbsp;&nbsp;回&nbsp;&nbsp;</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			
    
					<!-- content ends -->
			</div><!--/#content.span10-->
			
			
		
		
		</div><!--/fluid-row-->
				
		<hr>

		<footer>
			
		</footer>
		
	</div><!--/.fluid-container-->

	<%@ include file="../footer.jsp" %>
	
		
</body>
</html>

