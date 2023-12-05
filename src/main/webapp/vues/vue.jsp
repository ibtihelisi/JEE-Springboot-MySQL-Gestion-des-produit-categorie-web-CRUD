<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>


<br>

<br>
<div class="d-flex flex-row-reverse">
  <div class="p-2"><a href="ajouterprod" class="btn btn-success">Ajouter un nouveau produit</a></div>
  	
</div>
<form method="get" action="home">

 <input type="text" name="mc">
 <button type="submit" class="btn btn-info">Chercher</button> 
 
 </form>
<br>

<table class="table">
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Prix</th>
        <th>Quantite</th>
        <th>categorie</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${produits}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.nom}</td>
            <td>${p.prix}</td>
            <td>${p.quantite}</td>
            <td>${p.categorie.nom}</td>
            <td>
                <a href="delete/${p.id}"><span class="fa fa-trash"></span></a>
                <a href="editProduit?id=${p.id}"><span class="fa fa-edit"></span></a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
