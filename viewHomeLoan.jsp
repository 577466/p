<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/css/foundation.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
 h3
{

color:  #800040;
}



 .a1{

border-radius: 25px;

    padding: 50px; 
    width: 150px;
    height: 300px; 
    color: #660066;
    margin: 10px 1150px;
    } 

body 
{
   background-color: #f0f0f5;
}

</style>

<title>Insert title here</title>
</head>
<h3>welcome ${name}</h3>
<body ng-app="myApp">
	<div ng-controller="EmpCtrl">
<a href="http://localhost:8080/BaseCodeSlice_BankManagementSystem/mvc/home.jsp?AccNo=${msg}" class="a1"> Home</a>
		<input type="text" ng-model="search.loanAccountNumber"
			placeholder="Search By Homeloan Account Number" />
		<hr />

		<table>
			<tr bgcolor=" #8585ad">
				<th>Homeloan Account Number</th>
				<th>Home Loan Id</th>
				<th>Loan Amount</th>
				<th>Loan Duration</th>
				<th>Apply Date</th>
				<th>Annual Income</th>
				<th>Company Name</th>
				<th>Designation</th>
				<th>Total Experience</th>
				<th>Current Experience</th>
			</tr>
			<tr ng-repeat="homeLoan in homeLoans | filter: search">
				<td>{{homeLoan.loanAccountNumber}}</td>
				<td>{{homeLoan.homeLoanId}}</td>
				<td>{{homeLoan.loanAmount}}</td>
				<td>{{homeLoan.loanDuration}}</td>
				<td>{{homeLoan.loanApplyDate}}</td>
				<td>{{homeLoan.annualIncome}}</td>
				<td>{{homeLoan.companyName}}</td>
				<td>{{homeLoan.designation}}</td>
				<td>{{homeLoan.totalExperience}}</td>
				<td>{{homeLoan.currentExperience}}</td>
			</tr>
		</table>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	<script>
        var app = angular.module('myApp', []);
        app.controller('EmpCtrl', function($scope, $http){
            $http({
              method: 'GET',
              url: 'http://localhost:8080/BaseCodeSlice_BankManagementSystem/mvc/viewHomeLoan1?AccNo=${msg}'
            }).then(res=>res.data)
            .then(data => {
            	console.log(data);
            	$scope.homeLoans = data;
            })
        
           
        })
    </script>
</body>
</html>