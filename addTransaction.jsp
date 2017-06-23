
 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Registration Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/css/foundation.css">
<style>
	.cssClass {
		color: red;
	}
	

	
	
	.a1{

 border-radius: 25px;

    padding: 20px; 
    width: 200px;
    height: 200px; 
    color: #562949;
    margin: 6px 800px;
    } 
	
body{
 Margin: 0 auto;
 Width: 60%;
 background-color: #f0f0f5;
 position: relative;
 }
 table{
 position: absolute;
 }
 
 h2
{

top:35px;
color:   #562949;
}
 
 
 h3{
 margin-top: 100px;
 color: white;
 background-color:  #562949
;
  border-radius:10px;
 }
 
td{
width:500px;
}
span{
color: red;
}
 /*  td:hover{
 background-color: 	#dfe3ee;
font-weight: bold;
Border-radius:10px;

 } */
 button {
   align: center;
 	margin-top: 50px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    width:100px;
    height:50px;
    border: 2px solid   #562949;
     }

button:hover {
    background-color:   #562949
; /* Green */
    color: white;
}
 </style>


<title>Perform Transaction</title>
</head>





<body ng-app="myApp">
	<div ng-controller="myCntrl">
	
	
	<a href="http://localhost:8080/BaseCodeSlice_BankManagementSystem/mvc/home.jsp?AccNo=${msg}" class="a1"> Home</a>
	
	 
	 <h2 align="center"><i>Peform Transaction</i></h2>
	<h3> Welcome : ${name}</h3>
	
	
	
	
	<form:form method="POST"
		commandName="/BaseCodeSlice_BankManagementSystem/mvc/addTransaction?AccNo=${msg}"
		modelAttribute="transaction" name="TransactionForm">
		
		
		<table>

			<tr>
				<td>Transaction Description :</td>
				<td><form:input path="transactionDescription" placeholder="Transaction Description" maxlength="30" ng-model="transactionDescription"
				required="true" ng-pattern="/^[A-Za-z\b \b]{1,30}$/"/></td>
				<td><form:errors path="transactionDescription" cssClass="error" /></td>
				<td><span ng-show="TransactionForm.transactionDescription.$error.required && !TransactionForm.transactionDescription.$pristine">Transaction description is required</span></td>
				
     <td>    <span ng-show="TransactionForm.transactionDescription.$error.pattern && !TransactionForm.transactionDescription.$pristine">Only Alphabets are required</span></td>
			</tr>
			
			<tr>
				<td>Transaction Type :</td>
				<td><form:select path="transactionType">
				<option value="" disabled selected>Select account type</option>
						<option value="DEPOSIT">DEPOSIT</option>
						<option value="WITHDRAWAL">WITHDRAWAL</option>
					</form:select></td>
				<td><form:errors path="transactionType" cssClass="error" /></td>
				
			</tr>
			
			<tr>
				<td>Transaction Amount :</td>
				<td><form:input path="transactionAmount" placeholder="transactionAmount" maxlength="9"  ng-pattern="/^[0-9\b.\b]{1,10}$/" 
				ng-model="transactionAmount" required="true"/></td>
				<td><form:errors path="transactionAmount" cssClass="error" /></td>
				<td><span ng-show="TransactionForm.transactionAmount.$error.required && !TransactionForm.transactionAmount.$pristine">Transaction amount is required</span></td>
      <td>  <span ng-show="TransactionForm.transactionAmount.$error.pattern && !TransactionForm.transactionAmount.$pristine">Only Numbers are required</span></td>
				
			</tr>
			<tr>
				<td></td>
				<td colspan="2"><button type="submit" value="Add">Submit</button></td>
			</tr>
		</table>
	</form:form>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script>
	var app = angular.module('myApp', []);
	
	app.controller('myCntrl', function($scope){
		$scope.transactionDescription = "";
		$scope.transactionAmount = "";
		$scope.transactionAmount="";
	})
</script>
</body>
</html>