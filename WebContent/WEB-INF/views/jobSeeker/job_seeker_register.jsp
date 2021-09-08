<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h3>Job Seeker Register Form</h3>
<sform:form modelAttribute="registerJobSeekerForm" action="saveJobSeekerPath" method="post">
  
         <table>
            <tr>
               <td>Enter Job Seeker Id:</td>
               <td><sform:input path="jobSeekerModel.frmJobSeekerId" value="${frmJobSeekerId}" readonly="true"/></td>
            </tr>
            <tr>
               <td>Enter Job Seeker Name:</td>
               <td><sform:input path="jobSeekerModel.frmName"/></td>
            </tr>
            <tr>
               <td>Enter Job Seeker Email:</td>
               <td><sform:input path="jobSeekerModel.frmEmail"/></td>
            </tr>
            <tr>
            	<td>Enter Job Seeker Password:</td>
            	<td><sform:input type="password" path="loginModel.frmPassword"/></td>
            <tr>
            <tr>
            	<td>Enter Job Seeker Phone:</td>
            	<td><sform:input path="jobSeekerModel.frmPhone"/></td>
            <tr>
		    <tr>
		    	<td>Enter Your Skills:</td>
				<td><sform:input path="jobSeekerModel.frmSkills"/></td>
			</tr>
			<tr>
				<td>Select Gender:</td>
				<td>
					<sform:radiobutton path="jobSeekerModel.frmGender" value="male" label="Male"/>
					<sform:radiobutton path="jobSeekerModel.frmGender" value="female" label="Female"/>
				</td>
			</tr>
			<tr>
				<td>Enter Your Date of Birth:</td>
				<td><sform:input type="date" path="jobSeekerModel.frmDob"/></td>
			</tr>
			<tr>
				<td>Enter Your Home Address:</td>
				<td><sform:input path="jobSeekerModel.frmAddress"/></td>
			</tr>
			<tr>
				<td>Select Current State:</td>
				<td>
					<sform:radiobutton path="jobSeekerModel.frmState" value="Yangon" label="Yangon"/>
					<sform:radiobutton path="jobSeekerModel.frmState" value="Nay Pyi Taw" label="Nay Pyi Taw"/>
					<sform:radiobutton path="jobSeekerModel.frmState" value="Mandalay" label="Mandalay"/>
				</td>
			</tr>
			<tr>
				<td>Enter Postal Code:</td>
				<td><sform:input path="jobSeekerModel.frmPostalCode"/></td>
			</tr>
			<tr>
			<td>Select Category:</td>
			<td>
			 <sform:checkboxes  items="${registerJobSeekerForm.mapAllCategory}" path="jobSeekerModel.selectJobCategory"/>
			</td>
			</tr>		
		
				
	        <tr>
                <td><input type = "submit" name="save" value = "Save"/></td>
            </tr>
         </table>  
</sform:form>
