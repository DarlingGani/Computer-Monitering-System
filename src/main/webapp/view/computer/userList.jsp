<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
<jsp:include page="../static/dependancy.jsp"></jsp:include>
<jsp:include page="../cmsStatic/header.jsp"></jsp:include>

<spring:url value="/webresources/css/rfpHeader.css" var="headerCss" />
<link href="${headerCss}" rel="stylesheet" />

<spring:url value="/webresources/css/newfont.css" var="NewFontCss" />
<link href="${NewFontCss}" rel="stylesheet" /> 

<spring:url value="/webresources/css/master.css" var="masterCss" />
<link href="${masterCss}" rel="stylesheet" />
  
<spring:url value="/webresources/css/fontanimation.css" var="fontAnimation" />
<link href="${fontAnimation}" rel="stylesheet" />

<style>
th{
background-color:#3572EF;
line-height: 2;
}
</style>
</head>
<body>
<%List<Object[]> list = (List<Object[]>) request.getAttribute("jspList");
SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");%>
<div class="page-wrapper">
	<div class="card-header page-top">
		<div class="row">
			<div class="col-md-3 heading-breadcrumb">
				<h5 style="font-weight: 700 !important"><b>User List</b></h5>
			</div>
			<div class="col-md-9 " >
				<nav aria-label="breadcrumb">
				 	<ol class="breadcrumb ">
				    	<li class="breadcrumb-item ml-auto"><a href="ComputerList.htm"><i class="fa fa-home"></i> Home</a></li>
				    	<li class="breadcrumb-item"><a href="MasterDashboard.htm"><i class="fa fa-address-book"></i> Master Dashboard</a></li>
				    	<li class="breadcrumb-item active">User List </li>
				  	</ol>
				</nav>
			</div>			
		</div>
	</div>
	<div class="card-body" style="width: 99%">
		<div class="table-responsive" style="overflow:hidden;">
			<form>
				<table class="table table-bordered table-hover table-striped table-condensed" style="width: 99%;" id="myTable1">
					<thead>
						<tr>
							<th class="text-nowrap">Name</th>
							<th class="text-nowrap">Date of Birth</th>
							<th class="text-nowrap">Gender</th>
							<th class="text-nowrap">Mobile</th>
							<th class="text-nowrap">Office Mail</th>
							<th class="text-nowrap">Personal Mail</th>
							<th class="text-nowrap">Date of Joining</th>
							<th class="text-nowrap">Action</th>
						</tr>
					</thead>
					<tbody>
					<%if(list != null && list.size() > 0) {
					for(Object[] obj : list) { %>
						<tr style="line-height: 2;">
							<td><%=obj[1] %> <%=obj[2] %></td>
							<td><%if(obj[3]!=null){%><%=sdf.format(obj[3])%><%}else{ %>-<%} %></td>
							<td><%if(obj[4].equals('M')) { %>
									Male 
								<%} else if(obj[4].equals('F')) { %>
									Female
								<%} else if(obj[4].equals('O')) { %>
									Others
								<%} %></td>
							<td><%=obj[5] %></td>
							<td><%=obj[6] %></td>
							<td><%=obj[7] %></td>
							<td><%if(obj[8]!=null){%><%=sdf.format(obj[8])%><%}else{ %>-<%} %></td>
							<td><div align="center">
									<button type="submit" formaction="EditUser.htm" name="id" value="<%=obj[0] %>" class="btn btn-sm icon-btn"><img alt="edit" src="view/images/writing.png"></button>
									<button type="button" name="id" onclick="Preview()" value="<%=obj[0] %>" class="btn btn-sm icon-btn"><img alt="edit" src="view/images/preview3.png"></button>
									<button type="submit" formaction="DeleteUser.htm" onclick="return deleteUser();" name="id" value="<%=obj[0] %>" class="btn btn-sm icon-btn"><img alt="edit" src="view/images/delete.png"></button>
								</div>
							</td>
						</tr>
					<%}} %>
						
					</tbody>
				</table><br>
					<center><button type="submit" formaction="AddUser.htm" class="btn btn-primary btn-sm add">Add</button></center>
			</form>
		</div>
	</div>
	<div class="modal bd-example-modal-lg" tabindex="-1" role="dialog" id="digitization-details">
		<div class="modal-dialog modal-lg" role="document"  style="min-width: 90% !important; min-height: 200px !important; display: flex; align-items: stretch;" >
			<div class="modal-content">
				<div class="modal-header" style="background-color: rgba(0,0,0,.03);max-height:55px;">
		   			<div style="float: right;padding:5px;margin-top:-14px; ">
		  	  			<div class="btn-group TogglePreviewModal"> 
		         			<h4  id="model-card-header" >User Preview</h4>
						</div>
					</div>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script>
$("#myTable1").DataTable({
    "lengthMenu": [7,10, 20, 40, 60, 80, 100],
     ordering: true
});	
function deleteUser() { 
	if(confirm("Are you sure To Delete?")) {
		return true;
	} else {
		return false;
	}
}
function Preview(){
	$('#digitization-details').modal('show');
}
</script>
</html>