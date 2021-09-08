<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<table border="1" width="100%">
	<thead>
		<tr>
			<th>No</th>
			<th>Company Name</th>
			<th>Resume</th>
			<th>Date Applied</th>
			<th>CV Form</th>
			<th>Selection Status</th>
			<th>Job Title</th>
			<th>Job Role</th>
			<th>Job Location</th>

		</tr>
	</thead>
	<tbody>
		<c:forEach var="at" items="${appModel.appList}" varStatus="s">
			<tr>
				<td>${s.index+1}</td>
				<td>${at.job.recruiter.companyName}</td>
				<td>${at.resume}</td>
				<td>${at.dateApplied}</td>
				<td><a href="downloadAppPath?frmAppId=${at.applicationId}">Download</a></td>
				<td>${at.status}</td>
				<td>${at.job.jobTitle}</td>
				<td>${at.job.jobRole}</td>
				<td>${at.job.jobLocation}</td>	
		</c:forEach>


	</tbody>
	<tfoot>


	</tfoot>
</table>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>
