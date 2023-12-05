package com.isitcom.formation.GestionCatalogue.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.isitcom.formation.GestionCatalogue.entities.Categorie;
import com.isitcom.formation.GestionCatalogue.entities.Produit;



public interface CategorieRepository  extends JpaRepository<Categorie,Long>{
	public List<Categorie> findByNomContains(String mc);
}



	

