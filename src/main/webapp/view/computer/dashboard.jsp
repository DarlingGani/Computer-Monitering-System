<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
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
.table-wrapper {
      max-height: 450px; /* Adjust height as needed */
      overflow-y: auto;
    }
    .table-wrapper thead th {
      position: sticky;
      top: 0;
      background: linear-gradient(to bottom, #363795, #457fca); /* Adjust background color as needed */
      z-index: 10;
    }
</style>
</head>
<body>
<%
SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
List<Object[]> festList = (List<Object[]>) request.getAttribute("festList");
List<Object[]> fest1List = (List<Object[]>) request.getAttribute("fest1List");
%>
<div class="card-body" style="width: 95%">
	<%-- <div class="col-md-2" id="festList"  style="display: inline-block; float: left!important; width: 100%;"> 
	  	    <div class="col-md-6" style="float: left !important; text-align: left;">
                <label><b>Festival List : </b></label></div><br><br>
	  	    <%if(fest1List!=null && fest1List.size()>0){
	  	    for(Object[] obj : festList){ %>
	  	    <div style="display: flex; align-items: left;">
	  	    <span style="width: 100%;"><%=obj[2] %><br><%if(obj[3]!=null){%><%=sdf.format(obj[3])%><%}else{ %>-<%} %></span>
            </div><br>
            <%} }%>
	  	     </div> --%>
	<div class="col-md-12 row">
		<div class="col-md-2" style="float: left !important; text-align: left;">
			<div class="table-responsive table-wrapper" style="display: inline-block;">
				<table class="table table-bordered table-hover table-striped table-condensed">
					<thead>
						<tr>
							<th>National Festival dates</th>
						</tr>
					</thead>
					<tbody>
						<%for(Object[] obj : festList){ %>
						<tr data-toggle="tooltip" data-placement="top" data-original-title="<%=obj[2] %>">
							<td><%=obj[2] %><br><%if(obj[3]!=null){%><%=sdf.format(obj[3])%><%}else{ %>-<%} %></td>
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-md-2">
			<div class="table-responsive table-wrapper">
				<table class="table table-bordered table-hover table-striped table-condensed">
					<thead>
						<tr>
							<th>Regional Festival dates</th>
						</tr>
					</thead>
					<tbody>
						<%for(Object[] obj : fest1List){ %>
						<tr data-toggle="tooltip" data-placement="top" data-original-title="<%=obj[2] %>">
							<td><%=obj[2] %><br><%if(obj[3]!=null){%><%=sdf.format(obj[3])%><%}else{ %>-<%} %></td>
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-md-2">
			<div class="table-responsive table-wrapper">
				<table class="table table-bordered table-hover table-striped table-condensed">
					<thead>
						<tr>
							<th>Upcoming Birthday's</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>