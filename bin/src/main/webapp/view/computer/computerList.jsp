<%@page import="java.util.List"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Computer List</title>
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
<%List<Object[]> list = (List<Object[]>) request.getAttribute("jspList");%>
<div class="page-wrapper">
	<div class="card-header page-top">
		<div class="row">
			<div class="col-md-3 heading-breadcrumb">
				<h5 style="font-weight: 700 !important"><b>Computer List</b></h5>
			</div>
			<div class="col-md-9 " >
				<nav aria-label="breadcrumb">
				 	<ol class="breadcrumb ">
				    	<li class="breadcrumb-item ml-auto active"><i class="fa fa-home"></i> Home</li>
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
							<th class="text-nowrap">Select</th>
							<th class="text-nowrap">Computer Name</th>
							<th class="text-nowrap">User Name</th>
							<th class="text-nowrap">Processor</th>
							<th class="text-nowrap">RAM</th>
							<th class="text-nowrap">ROM</th>
						</tr>
					</thead>
					<tbody>
					<%if(list != null && list.size() > 0) {
					for(Object[] obj : list) { %>
						<tr style="line-height: 2;">
							<td><input type="radio" value="<%=obj[0] %>" name="id"></td>
							<td><%=obj[1] %></td>
							<td><%=obj[2] %></td>
							<td><%=obj[3] %></td>
							<td><%=obj[4] %></td>
							<td><%=obj[5] %></td>
						</tr>
					<%}} %>
					</tbody>
				</table><br>
				<div align="center">
					<button class="btn btn-primary btn-sm add" type="submit" formaction="AddComputer.htm">Add</button>
					<button type="submit" formaction="EditComputer.htm" onclick="return editComputer();" class="btn btn-warning btn-sm edit">Edit</button>
					<button type="submit" formaction="DeleteComputer.htm" onclick="return deleteComputer();" class="btn btn-danger btn-sm delete">Delete</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<script>
$("#myTable1").DataTable({
    "lengthMenu": [7,10, 20, 40, 60, 80, 100],
     ordering: true
});	

function deleteComputer() { 
	
	var fields = $("input[name='id']").serializeArray();
    console.log("id :"+fields);
	if (fields.length === 0) {
		alert("Please Select any one button");
		event.preventDefault();
		return false;
	}else{
		if(confirm("Are you sure to Delete")){
			return true;
		}else{
			return false;
		}
	}
}

function editComputer() { 
	var fields = $("input[name='id']").serializeArray();
    console.log("id :"+fields);
	if (fields.length === 0) {
		alert("Please Select any one button");
		event.preventDefault();
		return false;
	}
}
</script>
</html>