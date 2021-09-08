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
			<th>Job Title</th>
			<th>Job Category</th>
			<th>Gender</th>
			<th>Age</th>
			<th>Job Role</th>
			<th>Skills Required</th>
			<th>Job Qualification</th>
			<th>Job Experience</th>
			<th>Job Post</th>
			<th>Salary</th>
			<th>Job Location</th>
			<th>Job Open Date</th>
			<th>Job Close Date</th>
			<th>Job Description</th>
			<c:if test="${action=='view'}">
			<th>View Application</th>
				<th>Delete Jobs</th>
					</c:if>
			<c:if test="${action=='update'}">
			<th>Update Jobs</th>
			</c:if>
		       </tr>
            </thead>
                <tbody>
            <c:forEach var="at" items="${jobModelList.jobList}" varStatus="s">
			<tr>
				<td>${s.index+1}</td>
				<td>${at.jobTitle}</td>
				<td>${at.jobCategoryName}</td>
				<td>${at.gender}</td>
				<td>${at.age}</td>
				<td>${at.jobRole}</td>
				<td>${at.skillsRequired}</td>
				<td>${at.jobQualification}</td>
				<td>${at.jobExperience}</td>
				<td>${at.jobPost}</td>
				<td>${at.expectedSalary}</td>
				<td>${at.jobLocation}</td>
				<td>${at.jobOpenDate}</td>
				<td>${at.jobCloseDate}</td>
				<td>${at.jobDescription}</td>
				<c:choose>
					<c:when test="${action=='update'}">
				<td><a href="viewJobForUpdatePath?frmJobId=${at.jobId}">Update Jobs</a></td>
					</c:when>
					<c:otherwise>
				<td><a href="viewAppPath?frmJobId=${at.jobId}">View Application</a></td>
				<td><a href="deleteJobPath?frmJobId=${at.jobId}">Delete Job</a></td>
					</c:otherwise>
				</c:choose> 
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