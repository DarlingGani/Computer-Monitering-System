<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
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
.table thead tr th {
	background-color: aliceblue;
	width:30%;
}

.table thead tr td {
	background-color: #f9fae1;
	text-align: left;
}

label{
font-size: 15px;
}

table{
	box-shadow: 0 4px 6px -2px gray;
}
</style>
</head>
<body>
<div class="page-wrapper">
	<div class="card-header page-top">
		<div class="row">
			<div class="col-md-3 heading-breadcrumb">
				<h5 style="font-weight: 700 !important"><b>Edit Computer</b></h5>
			</div>
			<div class="col-md-9 " >
				<nav aria-label="breadcrumb">
				 	<ol class="breadcrumb ">
				    	<li class="breadcrumb-item ml-auto"><a href="ComputerList.htm"><i class="fa fa-home"></i> Home</a></li>
				    	<li class="breadcrumb-item"><a href="MasterDashboard.htm"><i class="fa fa-address-book"></i> Master Dashboard</a></li>
				    	<li class="breadcrumb-item"><a href="UserList.htm"><i class="fa fa-address-book"></i> User List</a></li>
				    	<li class="breadcrumb-item active">User Edit</li>
				    </ol>
				</nav>
			</div>			
		</div>
	</div>
	<div class="card-body" style="width: 99%">
	
		<div class="table-responsive" style="width: 50%; margin: auto;padding: 10px;">
			<form>
			<%Object[] userData = (Object[]) request.getAttribute("userData"); %>
	  			<table class="table table-bordered table-hover  table-condensed "  >
	      			<tr>
	      				<th><label >User Name :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="username" value="<%if(userData != null && userData[1] != null){ %><%=userData[1].toString()%><%} %>" class="form-control form-control" maxlength="255" style="font-size: 15px;" required></td>
	       			</tr>
	       			<tr>
	      				<th><label >Date of Birth :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="date" name="dob" value="<%if(userData != null && userData[2] != null){ %><%=userData[2].toString()%><%} %>" class="form-control form-control" maxlength="255" style="font-size: 15px;" required></td>
	       			</tr>
					<tr>
	      				<th><label >Gender :<span class="mandatory" style="color: red;">*</span></label></th>
	       				<td><select name="gender" class="form-control form-control" required style="font-size: 15px;">
	       					<option value="M" <%if(userData != null && userData[4] != null && userData[4].toString().equalsIgnoreCase("M")){ %> selected <%} %>>Male</option>
	       					<option value="F" <%if(userData != null && userData[4] != null && userData[4].toString().equalsIgnoreCase("F")){ %> selected <%} %>>Female</option>
	       					<option value="O" <%if(userData != null && userData[4] != null && userData[4].toString().equalsIgnoreCase("O")){ %> selected <%} %>>Others</option>
	       				</select></td>
	       			</tr>
					<tr>
	      				<th><label >Address :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="address" value="<%if(userData != null && userData[3] != null){ %><%=userData[3].toString()%><%} %>" class="form-control form-control" required maxlength="255" style="font-size: 15px;"></td>
	       			</tr>
					<tr>
	      				<th><label >Date of Joining :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="date" name="doj" value="<%if(userData != null && userData[5] != null){ %><%=userData[5].toString()%><%} %>" class="form-control form-control" required maxlength="255" style="font-size: 15px;"></td>
	       			</tr>
	       			<tr>
	       				<td colspan="2">
							<button type="submit" formaction="UpdateEditUser.htm"class="btn btn-primary btn-sm submit">Update</button>
							<button type="submit" formaction="UserList.htm" class="btn btn-warning btn-sm edit" formnovalidate>Back</button>
						</td>
					</tr>
				</table>
				
			</form>
		</div>
	</div>
</div>
</body>
</html>