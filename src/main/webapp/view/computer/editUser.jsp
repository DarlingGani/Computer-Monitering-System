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
	      			<tr>
	      				<th><label >First Name :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="firstname" value="<%if(userData != null && userData[1] != null){ %><%=userData[1].toString()%><%} %>" class="form-control form-control" placeholder="First Name" maxlength="30" style="font-size: 15px;" required></td>
	      				<th><label >Second Name :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="secondname" value="<%if(userData != null && userData[2] != null){ %><%=userData[2].toString()%><%} %>" class="form-control form-control" placeholder="First Name" maxlength="30" style="font-size: 15px;" required></td>
	       			</tr>
	      				
	       			<tr>
	      				<th><label >Date of Birth :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="date" name="dob" value="<%if(userData != null && userData[3] != null){ %><%=userData[3].toString()%><%} %>" class="form-control form-control" maxlength="255" style="font-size: 15px;" required></td>
	      				<th><label >Gender :<span class="mandatory" style="color: red;">*</span></label></th>
	       				<td><select name="gender" class="form-control form-control" required style="font-size: 15px;">
	       					<option value="M" <%if(userData != null && userData[4] != null && userData[4].toString().equalsIgnoreCase("M")){ %> selected <%} %>>Male</option>
	       					<option value="F" <%if(userData != null && userData[4] != null && userData[4].toString().equalsIgnoreCase("F")){ %> selected <%} %>>Female</option>
	       					<option value="O" <%if(userData != null && userData[4] != null && userData[4].toString().equalsIgnoreCase("O")){ %> selected <%} %>>Others</option>
	       				</select></td>
	       			</tr>
	       			<tr>
	      				<th><label >Mobile :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="mobile" id="numberField" onkeypress="return isNumberKey(event)" value="<%if(userData != null && userData[5] != null){ %><%=userData[5].toString()%><%} %>" class="form-control" placeholder="Mobile" maxlength="10" style="font-size: 15px;" required></td>
	      				<th><label >Marital Status :<span class="mandatory" style="color: red;">*</span></label></th>
	       				<td><select name="maritalstatus" class="form-control form-control" required style="font-size: 15px;">
	       					<option value="Single" <%if(userData != null && userData[6] != null && userData[6].toString().equalsIgnoreCase("Single")){ %> selected <%} %>>Single</option>
	       					<option value="Married" <%if(userData != null && userData[6] != null && userData[6].toString().equalsIgnoreCase("Married")){ %> selected <%} %>>Married</option>
	       					<option value="Widowed" <%if(userData != null && userData[6] != null && userData[6].toString().equalsIgnoreCase("Widowed")){ %> selected <%} %>>Widowed</option>
	       					<option value="Divorced" <%if(userData != null && userData[6] != null && userData[6].toString().equalsIgnoreCase("Divorced")){ %> selected <%} %>>Divorced</option>
	       				</select></td>
	      				</tr>
					<tr>
	      				<th><label>Office Mail :</label></th>
	      				<td><input type="email" name="officemail" value="<%if(userData != null && userData[7] != null){ %><%=userData[7].toString()%><%} %>" class="form-control form-control" placeholder="Office Mail" maxlength="50" style="font-size: 15px;"></td>
	      				<th><label >Personal Mail :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="email" name="personalmail" value="<%if(userData != null && userData[8] != null){ %><%=userData[8].toString()%><%} %>" class="form-control form-control" placeholder="Personal Mail" maxlength="50" style="font-size: 15px;" required></td>
	       			</tr>
	       			<tr>
	      				<th><label >Aadhar :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="aadhar" id="numberField" onkeypress="return isNumberKey(event)" value="<%if(userData != null && userData[9] != null){ %><%=userData[9].toString()%><%} %>" class="form-control form-control" placeholder="Aadhar" maxlength="12" style="font-size: 15px;" required></td>
	      				<th><label >Date of Joining :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="date" name="doj" value="<%if(userData != null && userData[10] != null){ %><%=userData[10].toString()%><%} %>" class="form-control form-control" placeholder="Date of Joining" style="font-size: 15px;" required></td>
	      			</tr>
	      			<tr>
	      				<th><label >PAN :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="pan" value="<%if(userData != null && userData[11] != null){ %><%=userData[11].toString()%><%} %>" class="form-control form-control" placeholder="PAN" maxlength="20" style="font-size: 15px;" required></td>
	      				<th><label >UAN :</label></th>
	      				<td><input type="text" name="uan" value="<%if(userData != null && userData[12] != null){ %><%=userData[12].toString()%><%} %>" class="form-control form-control" placeholder="UAN" maxlength="20" style="font-size: 15px;"></td>
	       			</tr>
	       			<tr>
	      				<th><label >Bank Name :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="bankname" value="<%if(userData != null && userData[13] != null){ %><%=userData[13].toString()%><%} %>" class="form-control form-control" placeholder="Bank Name" maxlength="255" style="font-size: 15px;" required></td>
	      				<th><label >Account Number :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="accountnumber" value="<%if(userData != null && userData[14] != null){ %><%=userData[14].toString()%><%} %>" class="form-control form-control" placeholder="Account Number" maxlength="20" style="font-size: 15px;" required></td>
	       			</tr>
	       			<tr>
	      				<th><label >IFSC Code :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="ifsccode" value="<%if(userData != null && userData[15] != null){ %><%=userData[15].toString()%><%} %>" class="form-control form-control" placeholder="IFSC Code" maxlength="20" style="font-size: 15px;" required></td>
	       				<th><label >Branch :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td><input type="text" name="branch" value="<%if(userData != null && userData[15] != null){ %><%=userData[15].toString()%><%} %>" class="form-control form-control" placeholder="Branch" maxlength="255" style="font-size: 15px;" required></td>
	       			</tr>
					<tr>
	      				<th><label >Address :<span class="mandatory" style="color: red;">*</span></label></th>
	      				<td colspan="3"><input type="text" name="address" value="<%if(userData != null && userData[16] != null){ %><%=userData[16].toString()%><%} %>" class="form-control form-control" placeholder="Address" maxlength="255" style="font-size: 15px;" required></td>
	       			</tr>
	       			<tr>
	       				<td colspan="4">
							<button type="submit" value="<%=userData[0] %>formaction="SaveEditUser.htm" class="btn btn-primary btn-sm submit">Update</button>
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