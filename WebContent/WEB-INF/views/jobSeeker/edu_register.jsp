<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h3>Job Seeker Education Form for ${sessionScope.frmSeekerId}</h3>
<sform:form method="POST" modelAttribute="fileBucket" enctype="multipart/form-data"
action="saveEduPath">
	       <input type="hidden" path="jobSeekerId" value="${sessionScope.frmSeekerId}" name="frmSeekerId"/>

	        <table>
            <tr>
               <td>Enter Institution Attended:</td>
               <td><sform:input path="institutionAttended"/></td>
            </tr>
            <tr>
               <td>Select Completion Month:</td>
               <td><sform:input type="month" path="completionDate"/></td>
            </tr>
            <tr>
               <td>Enter Certificate Name:</td>
               <td><sform:input path="certification"/></td>
            </tr>
            <tr>
            	<td>Upload your certification file:</td>
            	<td><sform:input type="file" path="file"/></td>
            </tr>   
            <tr>
                <td><input type = "submit" value = "save"/></td>
            </tr>     
         </table>  
</sform:form>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>