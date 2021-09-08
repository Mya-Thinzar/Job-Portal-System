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
			<th>Recruiter Name</th>
			<th>Company Name</th>
			<th>Company License</th>
			<th>Email</th>
			<th>Address</th>
			<th>State</th>
			<th>Postal Code</th>
			<th>Description</th>
			<c:if test="${role=='admin'}">
				<th>Status</th>
				<th>View Jobs</th>
				<th>Delete</th>
			</c:if>
		       </tr>
            </thead>
                <tbody>
            <c:forEach var="at" items="${recruiterModel.frmRecruiterList}" varStatus="s">
			<tr>
				<td>${s.index+1}</td>
				<td>${at.recruiterName}</td>
				<td>${at.companyName}</td>
				<td>${at.companyLicense}</td>
				<td>${at.email}</td>
				<td>${at.address}</td>
				<td>${at.state}</td>
				<td>${at.postalCode}</td>
				<td>${at.description}</td>
				<c:if test="${role=='admin'}">
					<td>${at.status}</td>
					<td><a href="viewJobByRecruiterPath?action=view1&frmRecruiterId=${at.recruiterId}">View job posts</a><br>
					<td><a href="deleteRecruiterPath?action=view1&frmRecruiterId=${at.recruiterId}">Delete Recruiter</a><br>
					
					</td>
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