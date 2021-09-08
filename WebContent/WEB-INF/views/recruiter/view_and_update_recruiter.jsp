<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h2>View Recruiter Profile</h2>
<input type="text" value="${userLogin.loginId}" name="frmRecruiterId" />
<sform:form modelAttribute="recruiterModel" action="updateRecruiterPath"
	method="post">

	<table>
		<tr>
			<th>Recruiter Id</th>
			<td>${recruiterModel.recruiter.recruiterId}</td>
		</tr>
		<tr>
			<input type="hidden" path="frmRecruiterId"
				value="${userLogin.loginId}" name="frmRecruiterId" />
			<th>Name</th>
			<td><sform:input path="frmRecruiterName"
					value="${recruiterModel.recruiter.recruiterName}" /></td>
		</tr>
		<tr>
			<th>Company Name</th>
			<td><sform:input path="frmCompanyName"
					value="${recruiterModel.recruiter.companyName}" /></td>
		</tr>
		<tr>
			<th>Company License</th>
			<td><sform:input path="frmCompanyLicense"
					value="${recruiterModel.recruiter.companyLicense}" /></td>
		</tr>
		<tr>
			<th>Email</th>
			<td><sform:input path="frmEmail"
					value="${recruiterModel.recruiter.email}" /></td>
		</tr>
		<tr>
			<th>Address</th>
			<td><sform:input path="frmAddress"
					value="${recruiterModel.recruiter.address}" /></td>
		</tr>
		<tr>
			<th>State</th>
			<td>${recruiterModel.recruiter.state}</td>
		</tr>
		<tr>
			<th>Select State</th>
			<td>
			<sform:select mult="single" path="frmState" name="frmState" id="frmState" >
				<sform:option value="${recruiterModel.recruiter.state}">Select</sform:option> 
				<sform:option value="Yangon">Yangon</sform:option> 
                <sform:option value="Nay Pyi Taw">Nay Pyi Taw</sform:option> 
                <sform:option value="Mandalay">Mandalay</sform:option> 
                
                
                 </sform:select>
			</td>
			
		</tr>
		<tr>
			<th>Postal Code</th>
			<td><sform:input path="frmPostalCode"
					value="${recruiterModel.recruiter.postalCode}" /></td>
		</tr>
		<tr>
			<th>Description</th>
			<td><sform:input path="frmDescription"
					value="${recruiterModel.recruiter.description}" /></td>
		</tr>

		<tr>
		<tr>
			<td><input type="submit" value="Update" /></td>
		</tr>
		<tr>
			<th>View & Update Jobs</th>
			<td><a href="viewJobByRecruiterPath?action=update">View & Update Jobs</a><br>
			</td>
		</tr>
	</table>
</sform:form>  <br>
<sform:form modelAttribute="loginModel"
	action="updatePasswordPath" method="post">
	<table>
		<tr>
			<td>Enter Current Password:</td>
			<td><sform:input path="frmPassword" type="password" /></td>
		</tr>
		<tr>
			<td><input type="hidden" path="frmLoginId"
				value="${userLogin.loginId}" name="frmLoginId" /></td>
		</tr>
		<tr>
			<td>Enter New Password:</td>
			<td><sform:input path="frmNewPassword" type="password" /></td>
		</tr>
		<tr>
			<td>Retype Password:</td>
			<td><sform:input path="frmRePassword" type="password" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="Update" /></td>
		</tr>

	</table>
</sform:form>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>

