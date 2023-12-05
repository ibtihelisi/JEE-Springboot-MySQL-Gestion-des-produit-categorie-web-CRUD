<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Category</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <!-- Add other necessary CSS and JS links here -->
</head>
<body>

<br>
<br>

<div class="container-fluid">
    <div class="card mx-5">
        <div class="card-header">AjouterCategorie</div>
        <div class="card-body">
            <form method="post" action="add">
                <div class="mb-3">
                    <label for="nom" class="form-label">nom</label>
                    <input
							type="text" class="form-control" id="nom" name="nom"
							value="${categorie.nom}">

                </div>

                
                <button type="submit" name="action" value="addCategorie" class="btn btn-primary">ajouter</button>
                <a href="<c:url value='/home'/>" class="btn btn-secondary">annuler</a>
            </form>
        </div>
    </div>
</div>

</body>
</html>
