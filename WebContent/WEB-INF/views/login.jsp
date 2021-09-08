<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h3>Login Form</h3>
${loginError}
<sform:form modelAttribute="loginModel" action="loginPath" method="post">
  
         <table>
         	<tr>
               <td>Enter Email:</td>
               <td><sform:input path="frmEmail"/></td>
            </tr>
           <tr>
                <td>Enter Password:</td>
            	<td><sform:input type="password" path="frmPassword"/></td>
            <tr>
  			 <tr>
            	<td><input type="submit" value="Login"/></td>
            <tr>
         </table>  
</sform:form>
${loginError}
<a href="regJobSeekerPath">Register Job Seeker?</a><br>
<a href="regRecruiterPath">Register Recruiter?</a>
