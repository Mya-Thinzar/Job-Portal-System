<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h2>View Job Seeker Profile</h2>
<input type="text" value="${userLogin.loginId}" name="frmRecruiterId" />
<sform:form modelAttribute="jobModel" action="updateJobPath"
	method="post">

	<table>
		<tr>
			<th>Job Id</th>
			<td>${jobModel.job.jobId}</td>
			<input type="text" 
				value="${jobModel.job.jobId}" name="frmJobId" />
		</tr>
		<tr>

			<th>Job Title</th>
			<td><sform:input path="frmJobTitle"
					value="${jobModel.job.jobTitle}" /></td>
		</tr>
		<tr>
			<th>Job Category</th>
			<td>${jobModel.job.jobCategoryName}</td>
		</tr>
            <tr>
             <th>Select Update Category:</th>
			<td>
			<sform:select mult="single" path="frmCatId" name="frmCatId" id="frmCatId" >
						<sform:option value="${jobModel.job.catId}">Select</sform:option> 
                       <sform:options items="${registerJobForm.mapAllCategory}"/>
                       </sform:select>
			</td>
			
			</tr>
		<tr>
			<th>Gender</th>
			<td><sform:input path="frmGender"
					value="${jobModel.job.gender}" /></td>
		</tr>
		<tr>
			<th>Age</th>
			<td><sform:input path="frmAge"
					value="${jobModel.job.age}" /></td>
		</tr>
		<tr>
			<th>Job Role</th>
			<td><sform:input path="frmJobRole"
					value="${jobModel.job.jobRole}" /></td>
		</tr>
		<tr>
			<th>Skills Required</th>
			<td><sform:input path="frmSkillsRequired"
					value="${jobModel.job.skillsRequired}" /></td>
		</tr>
		<tr>
			<th>Job Qualification</th>
			<td><sform:input path="frmJobQualification"
					value="${jobModel.job.jobQualification}" /></td>
		</tr>
		<tr>
			<th>Job Experience</th>
			<td><sform:input path="frmJobExperience"
					value="${jobModel.job.jobExperience}" /></td>
		</tr>
		<tr>
			<th>Job Post</th>
			<td><sform:input path="frmJobPost"
					value="${jobModel.job.jobPost}" /></td>
		</tr>
		<tr>
			<th>Salary</th>
			<td><sform:input path="frmExpectedSalary"
					value="${jobModel.job.expectedSalary}" /></td>
		</tr>
		<tr>
			<th>Job Location</th>
			<td><sform:input path="frmJobLocation"
					value="${jobModel.job.jobLocation}" /></td>
		</tr>
		<tr>
			<th>Job Open Date</th>
			<td><sform:input path="frmJobOpenDate"
					value="${jobModel.job.jobOpenDate}" type="datetime-local" /></td>
		</tr>
		<tr>
			<th>Job Close Date</th>
			<td><sform:input path="frmJobCloseDate"
					value="${jobModel.job.jobCloseDate}" type="date" /></td>
		</tr>
		<tr>
			<th>Job Description</th>
			<td><sform:input path="frmDescription"
					value="${jobModel.job.jobDescription}"/></td>
		</tr>	
		<tr>
			<td><input type="submit" value="Update" /></td>
		</tr>	

		<tr>

	</table>
</sform:form>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>