<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sform" %>

<h1>CATEGORY  PAGE</h1>
<sform:form modelAttribute="jobCategoryModel" action="saveCatPath" method="post">
  
         <table>
         	<tr>
               <td>Enter new Job Category:</td>
               <td><sform:input path="frmJobTitle"/></td>
            </tr>
           <tr>
           	<td>
           		<input type="submit" value="Save"/>
           	</td>
           </tr>
           </table>
</sform:form>
  <br>
<form action="logOutPath">
<input type="submit" value="Log Out" name="logout">
</form>
           