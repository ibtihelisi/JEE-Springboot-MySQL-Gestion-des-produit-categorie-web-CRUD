package com.isitcom.formation.GestionCatalogue.service;
import java.util.List;


import com.isitcom.formation.GestionCatalogue.entities.Categorie;
import com.isitcom.formation.GestionCatalogue.entities.Produit;

public interface IServiceCategorie {


	
	public void addCategorie(Categorie c);
	public void deleteCategorie(Long id);
	public void updateCategorie(Categorie c);
	public Categorie getCategorie(Long id);
	public List<Categorie>getAllCategories();
	public List<Categorie> getCategoriesBMC(String mc);
	




}