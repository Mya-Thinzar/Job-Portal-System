<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h3>Job Register Form for ${sessionScope.frmRecruiterId}</h3>
<h3>Job Register Form for ${userLogin.loginId}</h3>
<sform:form modelAttribute="registerJobForm" action="saveJobPath" method="post">
  <input type="text" path="jobModel.frmRecruiterId" value="${userLogin.loginId}" name="frmRecruiterId"/>
         <table>
            <tr>
               <td>Enter Job Title Name:</td>
               <td><sform:input path="jobModel.frmJobTitle"/></td>
            </tr>
            <tr>
             <td>Select Category:</td>
			<td>
			<sform:select path="jobModel.frmCatId" name="" id="" > 
                       <sform:options items="${registerJobForm.mapAllCategory}"/>
                       </sform:select>
			</td>
			
			</tr>
            <tr>
            	<td>Enter Gender:</td>
            	<td>
					<sform:radiobutton path="jobModel.frmGender" value="male" label="Male"/>
					<sform:radiobutton path="jobModel.frmGender" value="female" label="Female"/>
					<sform:radiobutton path="jobModel.frmGender" value="both" label="both"/>
					
				</td>
            <tr>
            <tr>
            	<td>Enter Age:</td>
            	<td><sform:input path="jobModel.frmAge"/></td>
            <tr>
             <tr>
            	<td>Enter Job Role:</td>
            	<td><sform:input path="jobModel.frmJobRole"/></td>
            <tr>
             <tr>
            	<td>Enter Skills Required:</td>
            	<td><sform:input path="jobModel.frmSkillsRequired"/></td>
            <tr>
             <tr>
            	<td>Enter Job Qualification:</td>
            	<td><sform:input path="jobModel.frmJobQualification"/></td>
            <tr>
             <tr>
            	<td>Select Job Experience Year:</td>
            	<td><sform:input type="number" min="1" max="10" path="jobModel.frmJobExperience"/>
            <tr>
             <tr>
            	<td>Enter Job Post:</td>
            	<td><sform:input path="jobModel.frmJobPost"/></td>
            </tr>
             <tr>
            	<td>Enter Expected Salary:</td>
            	<td><sform:input path="jobModel.frmExpectedSalary"/></td>
            </tr>
             <tr>
            	<td>Enter Job Location:</td>
            	<td><sform:input path="jobModel.frmJobLocation"/></td>
            </tr>
             <tr>
            	<td>Enter Job Open Date:</td>
            	<td><sform:input type="datetime-local" path="jobModel.frmJobOpenDate"/></td>
            </tr>
             <tr>
            	<td>Enter Job Close Date:</td>
            	<td><sform:input type="date" path="jobModel.frmJobCloseDate"/></td>
            </tr>
             <tr>
            	<td>Enter Job Description:</td>
            	<td><sform:textarea path="jobModel.frmDescription"/></td>
            </tr>
            <tr>
                <td><input type = "submit" value = "Save"/></td>
            </tr>
         </table>  
         
</sform:form>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>