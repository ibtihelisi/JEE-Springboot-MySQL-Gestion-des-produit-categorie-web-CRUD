<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn-primary,
        .btn-secondary {
            margin-right: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="text-center mb-4">Edit Product</h2>
            <form method="post" action="updateProduit">
                <input type="hidden" name="id" value="${produit.id}">

                <div class="form-group">
                    <label for="nom">Nom:</label>
                    <input type="text" class="form-control" id="nom" name="nom" value="${produit.nom}" required>
                </div>

                <div class="form-group">
                    <label for="prix">Prix:</label>
                    <input type="text" class="form-control" id="prix" name="prix" value="${produit.prix}" required>
                </div>

                <div class="form-group">
                    <label for="quantite">Quantité:</label>
                    <input type="text" class="form-control" id="quantite" name="quantite" value="${produit.quantite}" required>
                </div>

                <div class="form-group">
                    <label for="categorie">Catégorie:</label>
                    <select class="form-control" id="categorie" name="categorie.id">
                        <c:forEach items="${categories}" var="categorie">
                            <option value="${categorie.id}" ${produit.categorie.id == categorie.id ? 'selected' : ''}>${categorie.nom}</option>
                        </c:forEach>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary">Enregistrer</button>
 				<%-- <form method="get" action="<c:url value='/home'/>"> 
    			<button type="submit" class="btn btn-secondary">Annuler</button>
				</form>--%>
              <a href="<c:url value='/home'/>" class="btn btn-secondary">Annuler</a> 
            </form>
        </div>
    </div>
</div>

</body>
</html>
