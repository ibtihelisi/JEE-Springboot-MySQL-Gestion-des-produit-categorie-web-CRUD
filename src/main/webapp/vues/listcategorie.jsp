<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Liste des Catégories</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
          integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer">
    
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        h1 {
            color: #007bff;
        }

        table {
            margin-top: 20px;
        }

        th, td {
            text-align: center;
        }

        .btn-danger {
            color: #fff;
            background-color: #dc3545;
            border-color: #dc3545;
        }

        .btn-danger:hover {
            color: #fff;
            background-color: #bb2d3b;
            border-color: #bb2d3b;
        }

        .fas {
            margin-right: 5px;
        }

        .btn-add {
            margin-top: 20px;
        }

        .form-inline {
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .btn-search {
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Liste des categories</h1>
        
        
        <div class="d-flex flex-row-reverse">
            <div class="p-2">
                <a href="ajoutercat" class="btn btn-success btn-add">Ajouter une nouvelle categorie</a>
            </div>
        </div>

        
        <form method="get" action="/affichecategorie" class="form-inline">
            <input type="text" name="mc">
            <button type="submit" class="btn btn-info btn-search">Chercher</button>
        </form>

        <table class="table">
           <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${categories}" var="categorie">
                    <tr>
                        <td>${categorie.id}</td>
                        <td>${categorie.nom}</td>
                        <td>
                            <a href="deletecat/${categorie.id}" class="btn btn-danger">
                                <i class="fas fa-trash-alt"></i> Supprimer
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
