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

	<table>
		<tr>
			<th>Recruiter Id</th>
			<td>${recruiterModel.recruiter.recruiterId}</td>
		</tr>
		<tr>
			<th>Recruiter Name</th>
			<td>${recruiterModel.recruiter.recruiterName}</td>
		</tr>
		<tr>
			<th>Company Name</th>
			<td>${recruiterModel.recruiter.companyName}</td>
		</tr>
		<tr>
			<th>Company License</th>
			<td>${recruiterModel.recruiter.companyLicense}</td>
		</tr>
		<tr>
			<th>Recruiter Email</th>
			<td>${recruiterModel.recruiter.email}</td>
		</tr>
		<tr>
			<th>Recruiter Address</th>
			<td>${recruiterModel.recruiter.address}</td>
		</tr>
		<tr>
			<th>State</th>
			<td>${recruiterModel.recruiter.state}</td>
		</tr>
		<tr>
			<th>Postal Code</th>
			<td>${recruiterModel.recruiter.postalCode}</td>
		</tr>
		<tr>
			<th>Description</th>
			<td>${recruiterModel.recruiter.description}</td>
		</tr>
	</table>	
  <br>
  
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>

