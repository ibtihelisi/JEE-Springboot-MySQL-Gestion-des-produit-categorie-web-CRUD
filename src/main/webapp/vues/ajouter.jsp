

<%@page import="dao.entities.Produit" session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="navbar.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
	
	
	<br>
	<br>


	<div class=container-fluid>
		<div class="card mx-5">
			<div class="card-header">AjouterProduit</div>
			<div class="card-body">
				<form method="post" action="Controleur">
					<div class="mb-3">
						<label for="nom" class="form-label">Nom </label> <input
							type="text" class="form-control" id="nom" name="nom"
							value="${produit.nom}">

					</div>
					<div class="mb-3">
						<label for="prix" class="form-label">Prix </label> <input
							type="number" class="form-control" id="prix" name="prix"
							value="${produit.prix}">

					</div>
					<div class="mb-3">
						<label for="quantite" class="form-label">Quantite </label> <input
							type="text" class="form-control" id="quantite" name="quantite"
							value="${produit.quantite}">

					</div>
					<div>
					    <label for="categorie" class="form-label">Catégorie</label>
    					<select name="categorie" id="categorie" class="form-control">
        					<c:forEach items="${categories}" var="c">
          		  				<option value="${c.id }">${c.nom}</option>
      						</c:forEach>
					
					</select></div>

					<button type="submit" name="action" value="Ajouter"
						class="btn btn-primary">
						<c:if test="${produit.id==null}">Ajouter</c:if>
						<c:if test="${produit.id!=null}">Modifier</c:if>
					</button>
					<%-- est une balise de la bibliothèque de balises standard JavaServer Pages (JSTL) utilisée pour l'encodage et la manipulation des URL. --%>
              <a href="<c:url value='/home'/>" class="btn btn-secondary">Annuler</a> 
            
					<input type="hidden" name="id" value="${produit.id}">
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>