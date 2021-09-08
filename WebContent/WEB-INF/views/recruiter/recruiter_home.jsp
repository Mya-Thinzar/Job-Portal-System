<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>

<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h1>RECRUITER HOME PAGE</h1><br>
<h2>${userLogin.username}</h2>
<h2>${recruiterId}</h2>
<a href="viewRecruiterPath?action=update">View Recruiter Profile</a><br>
<a href="getPaymentByRecruiter">View Payment</a><br>
<a href="getAllJobSeekerPath?frmRole=recruiter">View All Job Seeker Information</a><br>
<a href="regJobPath">Add new job post</a><br>
<!-- <a href="regPaymentPath">Make Payment</a><br> -->
<a href="viewJobByRecruiterPath?action=view">View job Post</a><br>
  <br>
  
<sform:form action="deactivatePath">
 	<input type="submit" value="Deactivate"/>
</sform:form>
  <br>
  
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>