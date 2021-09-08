<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h3>Job Application Form for ${sessionScope.frmSeekerId}</h3>
<sform:form method="POST" modelAttribute="applicationModel" enctype="multipart/form-data"
action="saveAppPath">
	       <input type="text" value="${frmSeekerId}" name="frmSeekerId"/>
	       <input type="text" value="${frmRecruiterId}" name="frmRecruiterId"/>
	       <input type="text" value="${frmJobId}" name="frmJobId"/><br><br>
	       
	        <table>
            <tr>
					<td>Check Status:</td>
					<td>pending</td>	
            </tr>
            <tr>
               <td>Enter Your Detail Info for Resume:</td>
               <td><sform:textarea path="resume"/>
            </tr>

            <tr>
            	<td>Upload your Resume file:</td>
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