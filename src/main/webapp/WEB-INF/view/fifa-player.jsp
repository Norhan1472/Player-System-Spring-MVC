<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<body>
<h1>Hello world</h1>
<table class="table table-dark">
  <thead>
    <tr>
      <td scope="col">id</th>
      <th scope="col">name</th>
      <th scope="col">number</th>
      <th scope="col">address</th>
      <th scope="col">phone</th>
      <th scope="col">service</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach var="player" items="${players}">
    <tr> 
      <td>${player.id}</td>
      <td>${player.name}</td>
      <td>${player.number}</td>
      <td>${player.address}</td>
      <td>${player.phone}</td>
      <td>
      <button type="button" class="btn btn-primary">Edit</button>
      <button type="button" class="btn btn-danger">Delete</button>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>