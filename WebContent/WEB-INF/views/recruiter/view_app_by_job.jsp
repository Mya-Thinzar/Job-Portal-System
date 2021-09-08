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
			<th>Job Seeker Name</th>
			<th>Application Id</th>
			<th>Resume</th>
			<th>Date Applied</th>
			<th>CV Form</th>
			<th>Selection Status</th>

		</tr>
	</thead>
	<tbody>
		<c:forEach var="at" items="${appModel.appList}" varStatus="s">
			<tr>
				<td>${s.index+1}</td>
				<td>${at.jobSeeker.name}</td>
				<td>${at.applicationId}</td>
				<td>${at.resume}</td>
				<td>${at.dateApplied}</td>
				<td><a href="downloadAppPath?frmAppId=${at.applicationId}">Download</a></td>
				<c:choose>
					<c:when test="${not empty at.selection.status}">
						<td>${at.selection.status}</td>
					</c:when>
					<c:otherwise>
					
						<sform:form modelAttribute="appModel" action="saveSelectionPath"
							method="post">
							<td><input type="hidden" value="${at.jobId}" name="frmJobId"/>
							<input type="hidden" value="${at.applicationId}"
								name="frmAppId"> <sform:radiobutton
									path="selectionStatus" value="selected" label="Accept" /> <sform:radiobutton
									path="selectionStatus" value="cancel" label="Reject" /> <input
								type="submit" value="Submit"></td>

						</sform:form>
						</c:otherwise>
				</c:choose> 
		</c:forEach>


	</tbody>
	<tfoot>


	</tfoot>
</table>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>