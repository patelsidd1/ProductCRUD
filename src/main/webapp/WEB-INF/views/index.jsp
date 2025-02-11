<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>

<html>
<head>
<%@ include file = "./base.jsp"%>

<style>
        body {
            background-image: url('https://img.freepik.com/free-photo/blur-field-texture_1160-907.jpg?t=st=1739258428~exp=1739262028~hmac=d21a3fc98454b1382dade84d4d6347f363fab0b462f516f381f1d62478075075&w=740'); /* Path to your image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>

</head>
<body>
<div class="container mt-3">
<div class="row">
<div class="col-md-12">
<h1 class="text-center mb-3 fancy-heading">Welcome to <span class="highlight">Product App</span></h1>

<style>
    .fancy-heading {
        font-size: 2.5rem;
        font-weight: bold;
        color: #333;
        text-transform: capitalize;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        padding: 10px;
    }

    .highlight {
        color: #007bff;
        font-weight: bold;
    }
</style>


<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID </th>
      <th scope="col">Product Name </th>
      <th scope="col">Description</th>
      <th scope="col">Price </th>
      <th scope="col">Action </th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product}" var ="p">
    <tr>
      <th scope="row">TECH ${p.id}</th>
      <td>${p.name}</td>
      <td>${p.description}</td>
      <td class="font-weight-bold">&#8377;${p.price}</td>
      <td>
      <a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger" style="font-size:25px;"></i></a>
      <a href="update/${p.id}"><i class="fa-solid fa-pen-to-square text-primary" style="font-size:25px;"></i></a>

      </td>

    </tr>
    </c:forEach>

  </tbody>
</table>
<div class="container text-center">
<a href="add-product" class="btn btn-outline-success">Add Product </a>


</div>

</div>
</div>
</div>

</body>
</html>
