<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h3>Job Seeker Work Exp Register Form for ${sessionScope.frmSeekerId}</h3>

<sform:form modelAttribute="jobSeekerWorkExpModel" action="saveExpPath" method="post">
  <input type="text" value="${sessionScope.frmSeekerId}" name="frmSeekerId"/>
         <table>
            <tr>
               <td>Enter Company Name:</td>
               <td><sform:input path="frmCompanyName"/></td>
            </tr>
            <tr>
               <td>Enter Role:</td>
               <td><sform:input path="frmRole"/></td>
            </tr>
            <tr>
            	<td>Enter Start Date:</td>
            	<td><sform:input type="date" path="frmStartDate"/></td>
            </tr>
            <tr>
            	<td>Enter End Date:</td>
            	<td><sform:input type="date" path="frmEndDate"/></td>
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