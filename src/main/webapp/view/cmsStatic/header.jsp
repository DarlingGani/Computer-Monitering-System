<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS</title>
<jsp:include page="../static/dependancy.jsp"></jsp:include>
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
	<div class="card-header page-top">
		<div class="row" style="background-color:#3572EF;">
			<div class="col-md-9 heading-breadcrumb">
				<h5 style="font-weight: 700 !important;padding-left: 500px;color:white"><b>Computer Management System</b></h5>
			</div>
			<div class="col-md-3 " >
				<nav aria-label="breadcrumb" >
				 	<ol class="breadcrumb " style="background-color:#3572EF;">
				 		<li class="breadcrumb-item ml-auto"><a href="Dashboard.htm"><button class="btn btn-sm btn-success"><i class="fa fa-home"></i> Home</button></a></li>
				    	<li class="breadcrumb-item"><a href="ComputerList.htm"><button class="btn btn-sm btn-success">Computer</button></a></li>
				    	<li class="breadcrumb-item"><a href="MasterDashboard.htm"><button class="btn btn-sm btn-success">Master</button></a></li>
				    </ol>
				</nav>
			</div>			
		</div>
	</div>
</body>
</html>