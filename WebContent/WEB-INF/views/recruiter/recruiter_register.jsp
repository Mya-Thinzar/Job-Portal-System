<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<h3>Recruiter Register Form for ${id}</h3>
<sform:form modelAttribute="registerRecruiterForm" action="saveRecruiterPath" method="post">
  
         <table>
            <tr>
               <td>Recruiter Id:</td>
               <td><sform:input path="recruiterModel.frmRecruiterId" value="${id}" readonly="true"/></td>
            </tr>
            <tr>
               <td>Enter Recruiter Name:</td>
               <td><sform:input path="recruiterModel.frmRecruiterName"/></td>
            </tr>
           	<tr>
               <td>Enter Company Name:</td>
               <td><sform:input path="recruiterModel.frmCompanyName"/></td>
            </tr>
            <tr>
               <td>Enter Company License:</td>
               <td><sform:input path="recruiterModel.frmCompanyLicense"/></td>
            </tr>
            <tr>
               <td>Enter Email:</td>
               <td><sform:input path="recruiterModel.frmEmail"/></td>
            </tr>
            <tr>
               <td>Enter Address:</td>
               <td><sform:input path="recruiterModel.frmAddress"/></td>
            </tr>
            <tr>
            	<td>Enter Password:</td>
            	<td><sform:input type="password" path="loginModel.frmPassword"/></td>
            </tr>
			<tr>
				<td>Select State:</td>
				<td>
					<sform:radiobutton path="recruiterModel.frmState" value="Yangon" label="Yangon"/>
					<sform:radiobutton path="recruiterModel.frmState" value="Nay Pyi Taw" label="Nay Pyi Taw"/>
					<sform:radiobutton path="recruiterModel.frmState" value="Mandalay" label="Mandalay"/>				
				</td>
			</tr>
			<tr>
				<td>Enter Postal Code:</td>
				<td><sform:input path="recruiterModel.frmPostalCode"/></td>
			</tr>
			<tr>
				<td>Enter Description:</td>
				<td><sform:input path="recruiterModel.frmDescription"/></td>
			</tr>
	        <tr>
                <td><input type = "submit" value = "Save"/></td>
            </tr>
         </table>  
</sform:form>
