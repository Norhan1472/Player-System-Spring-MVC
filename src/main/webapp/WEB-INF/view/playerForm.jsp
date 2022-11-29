<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	form
	{	
		background-color: teal;
		color: white;
		margin: 20px;
		padding: 10px;
	}
	.error{
	color:red;
	}
</style>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<body>
<form:form modelAttribute="player" action="addPlayer">

  <div class="form-row">
       <form:hidden path="id"/>
	      
	    <div class="form-group col-md-6">
	      <label>Name</label>
	      <form:input type="text" path="name" class="form-control" placeholder="name"/>
	      <form:errors path="name" cssClass="error"></form:errors>
	    </div>
	    
	    <div class="form-group col-md-6">
	      <label>Number</label>
	      <form:input type="text" path="number" class="form-control" placeholder="Number"/>
	    </div>
	  
	 
	    <div class="form-group col-md-12">
	      <label >Address</label>
	      <form:input type="text" path="address" class="form-control" placeholder="Address"/>
	      
	    </div>
	    
	      <div class="form-group col-md-12">
	      <label>Phone</label>
	      <form:input type="text" path="phone" class="form-control" placeholder="Phone"/>
		 </div>
	</div>
	<input type="submit" value="Submit"/>
</form:form>
</body>
</html>