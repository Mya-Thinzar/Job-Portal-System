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

<input type="text" value="${userLogin.loginId}" name="frmJobSeekerId" />
<sform:form modelAttribute="jobSeekerModel" action="updateJobSeekerPath"
	method="post">

	<table>
		<tr>
			<th>JobSeeker Id</th>
			<td>${jobSeekerModel.jobSeeker.jobSeekerId}</td>
		</tr>
		<tr>
			<input type="hidden" path="frmJobSeekerId"
				value="${userLogin.loginId}" name="frmJobSeekerId" />
			<th>Name</th>
			<td><sform:input path="frmName"
					value="${jobSeekerModel.jobSeeker.name}" /></td>
		</tr>
		<tr>
			<th>Email</th>
			<td><sform:input path="frmEmail"
					value="${jobSeekerModel.jobSeeker.email}" /></td>
		</tr>
		<tr>
			<th>Phone</th>
			<td><sform:input path="frmPhone"
					value="${jobSeekerModel.jobSeeker.phone}" /></td>
		</tr>
		<tr>
			<th>Skills</th>
			<td><sform:input path="frmSkills"
					value="${jobSeekerModel.jobSeeker.skills}" /></td>
		</tr>
		<tr>
			<th>Gender</th>
			<td><sform:input path="frmGender"
					value="${jobSeekerModel.jobSeeker.gender}" /></td>
		</tr>
		<tr>
			<th>Date of Birth</th>
			<td><sform:input path="frmDob"
					value="${jobSeekerModel.jobSeeker.dob}" type="date" /></td>
		</tr>
		<tr>
			<th>Address</th>
			<td><sform:input path="frmAddress"
					value="${jobSeekerModel.jobSeeker.address}" /></td>
		</tr>
		<tr>
			<th>State</th>
			<td>${jobSeekerModel.jobSeeker.state}</td>
		</tr>
		<tr>
			<th>Select State</th>
			<td>
			<sform:select mult="single" path="frmState" name="frmState" id="frmState" >
				<sform:option value="${jobSeekerModel.jobSeeker.state}">Select</sform:option> 
				<sform:option value="Yangon">Yangon</sform:option> 
                <sform:option value="Nay Pyi Taw">Nay Pyi Taw</sform:option> 
                <sform:option value="Mandalay">Mandalay</sform:option> 
                
                
                 </sform:select>
			</td>
		</tr>
		<tr>
			<th>Postal Code</th>
			<td><sform:input path="frmPostalCode"
					value="${jobSeekerModel.jobSeeker.postalCode}" /></td>
		</tr>
		<tr>
			<th>Favorite Job Category</th>
		<c:if test="${(registerJobSeekerForm.mapFavCategory!='null')}">
	     <c:forEach var="at" items="${registerJobSeekerForm.mapFavCategory}" varStatus="s">
			<tr>
				
				<td>${at.key}</td>
				<td>${at.value}</td>
				<td><a href="deleteFavCategoryPath?frmCatId=${at.key}&frmJobSeekerId=${userLogin.loginId}">
				delete
				</a>
			</tr>		
		</c:forEach>
		</c:if>
		</tr>
		<tr>
			<th>Education</th>
			<td><a
				href="getEduPath?frmId=${jobSeekerModel.jobSeeker.jobSeekerId}">View
					Education</a></td>
		</tr>
		<tr>
			<th>Work Experience</th>

			<td><a
				href="getExpPath?frmId=${jobSeekerModel.jobSeeker.jobSeekerId}">View
					Work Experience</a></td>
		</tr>
<tr></tr>
		<tr>
			<td><input type="submit" name="save" value="Update" /></td>
		</tr>
	</table>
</sform:form>
<sform:form modelAttribute="loginModel"
	action="updatePasswordPath" method="post">
	<table>
		<tr>
			<td>Enter Current Password:</td>
			<td><sform:input path="frmPassword" type="password" /></td>
		</tr>
		<tr>
			<td><input type="hidden" path="frmLoginId"
				value="${userLogin.loginId}" name="frmLoginId" /></td>
		</tr>
		<tr>
			<td>Enter New Password:</td>
			<td><sform:input path="frmNewPassword" type="password" /></td>
		</tr>
		<tr>
			<td>Retype Password:</td>
			<td><sform:input path="frmRePassword" type="password" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="Update" /></td>
		</tr>

	</table>
</sform:form>

<sform:form modelAttribute="registerJobSeekerForm" action="updateFavCategoryPath" method="post">
<input type="hidden" path="frmJobSeekerId" value="${userLogin.loginId}" name="frmJobSeekerId" />
			<tr>
			<td>Check Update FavCategory:</td>
			<td>
			 <sform:checkboxes  items="${registerJobSeekerForm.mapAllCategory}" path="jobSeekerModel.selectJobCategory"/>
			</td>
			</tr>
			<tr>
			<td><input type="submit" value="Update" /></td>
			</tr>
					
</sform:form>
  <br>
<a href="logOutPath">Log Out</a>


