<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
   <table border="1" width="100%" >
        <thead>
          <tr>
			<th>No</th>
			<th>Job Seeker Name</th>
			<th>Experience Id</th>
			<th>Company Name</th>
			<th>Role</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Duration</th>
			<c:set var="mymsg" value="${userLogin.loginId}"/>
			<c:choose>
					 <c:when test="${fn:startsWith(mymsg, 'uid')}">
				<th>Update Experience</th></c:when>
				</c:choose>
			<c:set var="mymsg" value="${userLogin.loginId}"/>
			<c:choose>
					 <c:when test="${fn:startsWith(mymsg, 'uid')}">
				<th>Delete Experience</th></c:when>
				</c:choose>
		       </tr>
            </thead>
                <tbody>
            <c:forEach var="at" items="${expModel.expList}" varStatus="s">
			<tr>
				<td>${s.index+1}</td>
				<td>${at.jobSeeker.name}</td>
				<td>${at.expId}</td>
				<td>${at.companyName}</td>
				<td>${at.role}</td>
				<td>${at.startDate}</td>
				<td>${at.endDate}</td>
				<td>${at.duration}</td>
				<c:set var="mymsg" value="${userLogin.loginId}"/>
				<c:choose>
					 <c:when test="${fn:startsWith(mymsg, 'uid')}">
				<td><a href="prepareUpdateExpPath?&frmExpId=${at.expId}&frmJobSeekerId=${at.jobSeeker.jobSeekerId}">Update Experience</a></td></c:when>
				</c:choose>
				<c:set var="mymsg" value="${userLogin.loginId}"/>
				<c:choose>
					 <c:when test="${fn:startsWith(mymsg, 'uid')}">
				<td><a href="deleteExpPath?frmExpId=${at.expId}&frmJobSeekerId=${at.jobSeeker.jobSeekerId}">Delete Experience</a></td></c:when>
				</c:choose>
			</tr>		
		</c:forEach>
                </tbody>
              </table>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>