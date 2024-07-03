<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Master Dashboard</title>
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

</head>
<body>
<div class="page-wrapper">
	<div class="card-header page-top">
		<div class="row">
			<div class="col-md-3 heading-breadcrumb">
				<h5 style="font-weight: 700 !important"><b>Computer List</b></h5>
			</div>
			<div class="col-md-9 " >
				<nav aria-label="breadcrumb">
				 	<ol class="breadcrumb ">
				    	<li class="breadcrumb-item ml-auto"><a href="ComputerList.htm"><i class="fa fa-home"></i> Home</a></li>
				    	<li class="breadcrumb-item active">Master Dashboard </li>
				  	</ol>
				</nav>
			</div>			
		</div>
	</div>
	<div class="card-body " style="padding-top: 6px;max-height:43rem;"> 
    	<div class="container">
    	
    		 <div class="row">
				<div class="text-white col-md-3 col-xl-3" style="max-width: 15rem;text-align:center">
					<a href="UserList.htm" data-toggle="tooltip" data-placement="top" data-original-title="Click Here to Add User">
  						<div class="card-body" style="top: 0;background: linear-gradient(to bottom, #363795, #457fca);z-index: 10;"><br>
	    					<h5 class="card-title">User</h5>
	    					<p class="card-text"></p>
  						</div>
  					</a>
				</div>
				<div class="text-white col-md-3 col-xl-3" style="max-width: 15rem;text-align:center">
					<a href="UserList.htm" data-toggle="tooltip" data-placement="top" data-original-title="Click Here to Add Computer">
  						<div class="card-body" style="top: 0;background: linear-gradient(to bottom, #363795, #457fca);z-index: 10;"><br>
	    					<h5 class="card-title">Computer</h5>
	    					<p class="card-text"></p>
  						</div>
  					</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>