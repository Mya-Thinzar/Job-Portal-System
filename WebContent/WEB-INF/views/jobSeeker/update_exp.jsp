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
<sform:form method="POST" modelAttribute="expModel" action="updateExpPath">
			<input type="hidden"
				value="${frmJobSeekerId}" name="frmJobSeekerId" />
			<input type="hidden" 
				value="${frmExpId}" name="frmExpId" />
	        <table>
            <tr>
               <td>Company Name:</td>
               <td><sform:input path="frmCompanyName" value="${expModel.frmExp.companyName}"/></td>
            </tr>
            <tr>
               <td>Role:</td>
               <td><sform:input path="frmRole" value="${expModel.frmExp.role}"/></td>
            </tr>
            <tr>
            	<td>Start Date:</td>
            	<td><sform:input path="frmStartDate" type="date" value="${expModel.frmExp.startDate}"/></td>
            <tr>
            <tr>
            	<td>End Date:</td>
            	<td><sform:input path="frmEndDate" type="date" value="${expModel.frmExp.endDate}"/></td>
            <tr>
            <tr>
                <td><input type = "submit" value = "Update"/></td>
            </tr>         </table>  
</sform:form>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>