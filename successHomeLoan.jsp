<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

.a1{


border-radius: 25px;

    padding: 20px; 
    width: 150px;
    height: 200px; 
    color: #660066;
    margin: 6px 1100px;
    } 
    

body 
{
   background-color:#f0f0f5;
}



</style>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/css/foundation.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
<a href="http://localhost:8080/BaseCodeSlice_BankManagementSystem/mvc/home.jsp?AccNo=${msg}" class="a1"> Home</a>
	<h1>LoanAccount Number is: ${m1}</h1>
	<h1>Loan ID is: ${m2}</h1>
</body>
</html>
