package com.isitcom.formation.GestionCatalogue.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.isitcom.formation.GestionCatalogue.entities.Produit;
@Repository

public interface ProduitRepository extends JpaRepository<Produit,Long>{
	public List<Produit> findByNomContains(String mc);
}
