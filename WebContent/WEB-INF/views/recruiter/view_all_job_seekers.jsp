<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
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
			<th>JobSeeker Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Skills</th>
			<th>Gender</th>
			<th>Date of Birth</th>
            <th>Address</th>
			<th>State</th>
			<th>Postal Code</th>
			<c:if test="${role=='admin'}">
				<th>Status</th>
			</c:if>
			<th>Education</th>
			<th>Work Experience</th>
			<c:if test="${role=='admin'}">
				<th>Delete</th>
			</c:if>
		       </tr>
            </thead>
                <tbody>
            <c:forEach var="at" items="${jobSeekerModel.seekerList}" varStatus="s">
			<tr>
				<td>${s.index+1}</td>
				<td>${at.jobSeekerId}</td>
				<td>${at.name}</td>
				<td>${at.email}</td>
				<td>${at.phone}</td>
				<td>${at.skills}</td>
				<td>${at.gender}</td>
				<td>${at.dob}</td>
				<td>${at.address}</td>
				<td>${at.state}</td>
				<td>${at.postalCode}</td>
				<c:if test="${role=='admin'}">
					<td>${at.status}</td>
				</c:if>
				<td><a href="getEduPath?frmId=${at.jobSeekerId}">View Education</a></td>
				<td><a href="getExpPath?frmId=${at.jobSeekerId}">View Work Experience</a></td>
				<c:if test="${role=='admin'}">
					<td><a href="deleteSeekerPath?frmId=${at.jobSeekerId}">Delete Seeker</a></td>
				</c:if>
			</tr>		
		</c:forEach>
                </tbody>
                <tfoot>
                
             
                </tfoot>
              </table>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>