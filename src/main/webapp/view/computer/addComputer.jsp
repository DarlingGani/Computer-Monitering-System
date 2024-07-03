<%@page import="java.util.List"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Computer</title>
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
<%List<Object[]> userDropdownList = (List<Object[]>)request.getAttribute("userDropdownList"); %>
<div class="page-wrapper">
	<div class="card-header page-top">
		<div class="row">
			<div class="col-md-3 heading-breadcrumb">
				<h5 style="font-weight: 700 !important">Add Computer </h5>
			</div>
			<div class="col-md-9 " >
				<nav aria-label="breadcrumb">
				 	<ol class="breadcrumb ">
				    	<li class="breadcrumb-item ml-auto"><a href="ComputerList.htm"><i class="fa fa-home"></i> Home</a></li>
				    	<li class="breadcrumb-item active">Add Computer </li>
				  	</ol>
				</nav>
			</div>			
		</div>
	</div>
	<div class="card-body" style="width: 99%">
		<div class="table-responsive" style="width: 50%; margin: auto;padding: 10px;">
			<form method="post">
	  			<table class="table table-bordered table-hover  table-condensed " >
	      			<tr>
	      				<th><label >Computer Name :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="computername" class="form-control form-control" placeholder="Computer Name" required="required" maxlength="25" style="font-size: 15px;"></td>
	       			</tr>
	       			<tr>
	       			
	      				<th><label >User Name :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td>
<!-- 	      				<input type="text" name="username" class="form-control form-control" placeholder="User Name" required="required" maxlength="30" style="font-size: 15px;">
 -->	      			<select name="username" class="form-control form-control"required style="font-size: 15px;">
 							<%for(Object[] obj : userDropdownList) {%>
 							<option value="<%=obj[0] %>"><%=obj[1] %></option>
 							<%} %>
 						</select>
 
 
 	</td>
	       			</tr>
					<tr>
	      				<th><label >Processor :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="processor" class="form-control form-control" placeholder="Processor" required="required" maxlength="20" style="font-size: 15px;"></td>
	       			</tr>
					<tr>
	      				<th><label >RAM :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="ram" class="form-control form-control" placeholder="RAM" required="required" maxlength="10" style="font-size: 15px;"></td>
	       			</tr>
					<tr>
	      				<th><label >ROM :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="rom" class="form-control form-control" placeholder="ROM" required="required" maxlength="10" style="font-size: 15px;"></td>
	       			</tr>
	       			<tr>
	       				<td colspan="2">
	       					<button type="submit" onclick="return addStudent();" formaction="SaveAddComputer.htm" class="btn btn-primary btn-sm submit">Save</button>
							<button type="submit" class="btn btn-warning btn-sm edit" formaction="ComputerList.htm" formnovalidate="formnovalidate">Back</button>
	       				</td>
	       			</tr>
				</table>
			</form>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	function addStudent() { 
		if(confirm("Are you sure To Add?")) {
			return true;
		} else {
			return false;
		}
	}
</script>
</html>