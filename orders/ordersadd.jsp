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


<script language="javascript" type="text/javascript">

function checkform()
{
	 
	

	if (document.getElementById('ordernumberid').value=="")
	{
		alert("订购数量不能为空");
		return false;
	}
	
	//验证正整数
	var reg1 =  /^\d+$/;
	 
	if (document.getElementById('ordernumberid').value.match(reg1) == null)
	{
		alert("订购数量必须为正整数");
		return false;
		
	}
	 
	return true;
	
}


</script>

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
								 <input class="input-xlarge focused" type='text' value="${book.cname }" readonly="readonly"   />
							
								
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教材编号</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${book.bnumber }" readonly="readonly"   />
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教材类别</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${book.bcategory }" readonly="readonly"  />
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教材名称</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${book.bname }" readonly="readonly"   />
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">待订购数量</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' value="${book.tobeordered }" readonly="readonly"   />
								</div>
							  </div>
							  
							  
							  
							  
							
							  
							  
							  <div class="control-group">
								<label class="control-label" for="focusedInput">订购数量</label>
								<div class="controls">
								  <input class="input-xlarge focused" type='text' placeholder='请输入订购数量'  name='ordernumber' id='ordernumberid' />
								</div>
							  </div>
							  
							  
							  
							  
							  <div class="form-actions">
								<button class="btn btn-success btn-sm"  type="submit">&nbsp;&nbsp;提&nbsp;&nbsp;交&nbsp;&nbsp;</button>
  			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;              

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

