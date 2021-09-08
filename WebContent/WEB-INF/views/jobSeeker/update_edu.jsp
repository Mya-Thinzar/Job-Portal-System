<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h3>Job Seeker Education Form for ${frmJobSeekerId}</h3>
<sform:form method="POST" modelAttribute="fileBucket" enctype="multipart/form-data"
action="updateEduPath">
			<input type="hidden"
				value="${frmJobSeekerId}" name="frmJobSeekerId" />
			<input type="hidden" 
				value="${frmEduId}" name="frmEduId" />
	        <table>
            <tr>
               <td>Enter Institution Attended:</td>
               <td><sform:input path="institutionAttended"
                value="${fileBucket.jobSeekerEdu.institutionAttended}"/></td>
            </tr>
            <tr>
               <td>Select Completion Month:</td>
               <td><sform:input type="month" path="completionDate"
               value="${fileBucket.jobSeekerEdu.completionDate}"/></td>
            </tr>
            <tr>
               <td>Enter Certificate Name:</td>
               <td><sform:input path="certification"
               value="${fileBucket.jobSeekerEdu.certification}"/></td>
            </tr>
            <tr>
            	<td>Upload your certification file:</td>
            	<td><sform:input type="file" path="file"
            	value="${fileBucket.jobSeekerEdu.certificationFile}"/></td>
            </tr>   
            <tr>
                <td><input type = "submit" value = "update"/></td>
            </tr>     
         </table>  
</sform:form>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>