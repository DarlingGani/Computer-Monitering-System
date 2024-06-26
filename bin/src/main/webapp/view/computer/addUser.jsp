<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
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
				<h5 style="font-weight: 700 !important">Add User </h5>
			</div>
			<div class="col-md-9 " >
				<nav aria-label="breadcrumb">
				 	<ol class="breadcrumb ">
				    	<li class="breadcrumb-item ml-auto"><a href="ComputerList.htm"><i class="fa fa-home"></i> Home</a></li>
				    	<li class="breadcrumb-item"><a href="MasterDashboard.htm"><i class="fa fa-home"></i> Master Dashboard</a></li>
				    	<li class="breadcrumb-item"><a href="UserList.htm"><i class="fa fa-home"></i> User List</a></li>
				    	<li class="breadcrumb-item active">Add User </li>
				  	</ol>
				</nav>
			</div>			
		</div>
	</div>
	<div class="card-body" style="width: 99%">
		<div class="table-responsive" style="width: 50%; margin: auto;padding: 10px;">
			<form>
	  			<table class="table table-bordered table-hover  table-condensed "  >
	      			<tr>
	      				<th><label >User Name :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="username" class="form-control form-control" placeholder="User Name" required="required" maxlength="30" style="font-size: 15px;"></td>
	       			</tr>
	       			<tr>
	      				<th><label >Date of Birth :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="date" name="dob" class="form-control form-control" required="required" style="font-size: 15px;"></td>
	       			</tr>
					<tr>
	      				<th><label >Gender :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><select name="gender" class="form-control form-control" required="required" style="font-size: 15px;">
	      						<option  selected disabled>--Select--</option>
	      						<option value="M">Male</option>
	      						<option value="F">Female</option>
	      						<option value="O">Others</option>
	      					</select></td>
	       			</tr>
					<tr>
	      				<th><label >Address :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="address" class="form-control form-control" placeholder="Address" required maxlength="100" style="font-size: 15px;"></td>
	       			</tr>
					<tr>
	      				<th><label >Date of Joining :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="date" name="doj" class="form-control form-control" placeholder="Date of Joining" required style="font-size: 15px;"></td>
	       			</tr>
	       			<tr>
	       				<td colspan="2">
	       					<button type="submit" onclick="return addUser();" formaction="SaveAddUser.htm" class="btn btn-primary btn-sm submit">Save</button>
							<button type="submit" class="btn btn-warning btn-sm edit" formaction="UserList.htm" formnovalidate="formnovalidate">Back</button>
	       				</td>
	       			</tr>
				</table>
			</form>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	function addUser() { 
		if(confirm("Are you sure To Add?")) {
			return true;
		} else {
			return false;
		}
	}
</script>
</html>