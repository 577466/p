<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



   @RequestMapping(value = "/viewTransaction", method = RequestMethod.GET)
   
   <table>

			<tr>
				<td>Account Number :</td>
				<td><form:input path="accountNumber" ng-pattern="/^[0-9\b.\b]{1,16}$/" maxlength="16" ng-model="accountNumber" required="true"/></td>
				</tr>
				
				<tr>
				<td>Transaction Id</td>
	<td><form:input path="transactionId" ng-pattern="/^[0-9\b.\b]{1,10}$/" maxlength="10" ng-model="transactionId" required="true"/></td>
		
		</tr>



</body>
</html>