<%@page import="com.jobportal.entity.Login"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h1>JOB SEEKER HOME PAGE</h1>
${userLogin.username}<br>
<h2>View Job Seeker Profile</h2>
<input type="text" value="${userLogin.loginId}" name="frmJobSeekerId" />

 <sform:form modelAttribute="myJobSeekerModel">
	<table>
		<tr>
			<th>JobSeeker Id</th>
			<td>${myJobSeekerModel.jobSeeker.jobSeekerId}</td>
		</tr>
		<tr>
			<th>Name</th>
			<td>${myJobSeekerModel.jobSeeker.name}</td>
		</tr>
		<tr>
			<th>Email</th>
			<td>${myJobSeekerModel.jobSeeker.email}</td>
		</tr>
		<tr>
			<th>Phone</th>
			<td>${myJobSeekerModel.jobSeeker.phone}</td>
		</tr>
		<tr>
			<th>Skills</th>
			<td>${myJobSeekerModel.jobSeeker.skills}</td>
		</tr>
		<tr>
			<th>Gender</th>
			<td>${myJobSeekerModel.jobSeeker.gender}</td>
		</tr>
		<tr>
			<th>Date of Birth</th>
			<td>${myJobSeekerModel.jobSeeker.dob}</td>
		</tr>
		<tr>
			<th>Address</th>
			<td>${myJobSeekerModel.jobSeeker.address}</td>
		</tr>
		<tr>
			<th>State</th>
			<td>${myJobSeekerModel.jobSeeker.state}</td>
		</tr>
		<tr>
			<th>Postal Code</th>
			<td>${myJobSeekerModel.jobSeeker.postalCode}</td>
		</tr>
		
	</table>
</sform:form><br>
<a href="getJobSeekerPath">View Your Profile Details</a><br>
<a href="getAllRecruitersPath?frmRole=jobSeeker">View All Recruiters</a><br>
<a href="viewJobPath">View job posts</a><br>
<a href="getExpPath?frmId=${userLogin.loginId}">View Experience</a><br>
<a href="getEduPath?frmId=${userLogin.loginId}">View Education</a><br>
<a href="regWorkExpPath">Register job working experience</a><br>
<a href="regEduPath">Register education</a><br>
<a href="getAllAppPath">View Application Status</a><br>
 <sform:form action="deactivatePath">
 	<input type="submit" value="Deactivate"/>
 </sform:form>
  <br>
<a href="logOutPath">Log Out</a>

