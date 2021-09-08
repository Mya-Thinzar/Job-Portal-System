<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
  <input type="text" value="${userLogin.loginId}" name="frmSeekerId"/>
   <table border="1" width="100%" >
        <thead>
          <tr>
			<th>No</th>
			<th>Name</th>
			<th>Education Id</th>
			<th>Institution Attended</th>
			<th>Completion Date</th>
			<th>Certification</th>
			<th>Certification File</th>
			<c:set var="mymsg" value="${userLogin.loginId}"/>
			<c:choose>
					 <c:when test="${fn:startsWith(mymsg, 'uid')}">
				<th>Update Education</th></c:when>
				</c:choose>
			<c:set var="mymsg" value="${userLogin.loginId}"/>
			<c:choose>
					 <c:when test="${fn:startsWith(mymsg, 'uid')}">
				<th>Delete Education</th></c:when>
				</c:choose>
		       </tr>
            </thead>
                <tbody>
            <c:forEach var="at" items="${fileBucket.eduList}" varStatus="s">
			<tr>
				<td>${s.index+1}</td>
				<td>${at.jobSeeker.name}</td>
				<td>${at.educationId}</td>
				<td>${at.institutionAttended}</td>
				<td>${at.completionDate}</td>
				<td>${at.certification}</td>
				<td><a href="downloadEduPath?frmJobSeekerId=${at.jobSeeker.jobSeekerId}&frmEduId=${at.educationId}">Download</a></td>
				<c:set var="mymsg" value="${userLogin.loginId}"/>
				<c:choose>
					 <c:when test="${fn:startsWith(mymsg, 'uid')}">
				<td><a href="prepareUpdateEduPath?&frmEduId=${at.educationId}&frmJobSeekerId=${at.jobSeeker.jobSeekerId}">Update Education</a></td></c:when>
				</c:choose>
				<c:set var="mymsg" value="${userLogin.loginId}"/>
				<c:choose>
					 <c:when test="${fn:startsWith(mymsg, 'uid')}">
				<td><a href="deleteEduPath?frmEduId=${at.educationId}&frmJobSeekerId=${at.jobSeeker.jobSeekerId}">Delete Education</a></td></c:when>
				</c:choose></tr><tr>
		
		</c:forEach>
                </tbody>
                <tfoot>
                
             
                </tfoot>
              </table>
              <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>
