<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<table border="1" width="100%">
	<thead>
		<tr>
			<th>No</th>
			<th>Recruiter Id</th>
			<th>Payment Id</th>
			<th>Plan</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Amount</th>
			<th>Discount</th>
		</tr>
		<c:forEach var="at" items="${registerPaymentForm.paymentList}"
				varStatus="s">
		<tr>
			
				<td>${s.index+1}</td>
				<td><a href="viewRecruiterPath?action=view&frmRecruiterId=${at.recruiterId}">${at.recruiterId}</a> </td>
				<td>${at.paymentId}</td>
				<td>${at.plan}</td>
				<td>${at.startDate}</td>
				<td>${at.endDate}</td>
				<td>${at.amount}</td>
				<td>${at.discount}</td>
				</tr>
			</c:forEach>
		
</table>
<br>
<form action="logOutPath">
	<input type="submit" value="Log Out" name="logout">
</form>