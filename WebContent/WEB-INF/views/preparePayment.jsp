<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>
<sform:form modelAttribute="orderDetail" action="authorize_payment" method="post">
	<h1>Select Your Payment Plan</h1>
	<br/>
	<table>
			<tr>
			<td><input type="text" name="recruiterId" value="${recruiterId}" /></td>
		</tr>
		<tr>
			<td>Product/Service:</td>
			<td><input type="text" name="service" value="monthly" /></td>
		</tr>
		<tr>
			<td>Sub Total:</td>
			<td><input type="text" name="subtotal" value="100" /></td>
		</tr>
		<tr>
			<td>Discount:</td>
			<td><input type="text" name="discount" value="0" /></td>
		</tr>
		<tr>
			<td>Total Amount:</td>
			<td><input type="text" name="total" value="100" /></td>
		</tr>
		 <tr>
                <td><input type = "submit" name="save" value = "Select"/></td>
            </tr>
	</table>
	</sform:form>
	<sform:form modelAttribute="orderDetail" action="authorize_payment" method="post">
	
	<table>
		<tr>
			<td>Product/Service:</td>
			<td><input type="text" name="service" value="yearly" /></td>
		</tr>
		<tr>
			<td>Sub Total:</td>
			<td><input type="text" name="subtotal" value="1200" /></td>
		</tr>
		<tr>
			<td>Discount:</td>
			<td><input type="text" name="discount" value="0" /></td>
		</tr>
		<tr>
			<td>Total Amount:</td>
			<td><input type="text" name="total" value="1200" /></td>
		</tr>
		
		 <tr>
                <td><input type = "submit" name="save" value = "Select"/></td>
            </tr>
	</table>
			</sform:form>