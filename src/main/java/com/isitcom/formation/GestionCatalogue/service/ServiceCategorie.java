package com.isitcom.formation.GestionCatalogue.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.isitcom.formation.GestionCatalogue.dao.CategorieRepository;
import com.isitcom.formation.GestionCatalogue.dao.ProduitRepository;
import com.isitcom.formation.GestionCatalogue.entities.Categorie;
import com.isitcom.formation.GestionCatalogue.entities.Produit;


@Service

public class ServiceCategorie implements IServiceCategorie {
@Autowired
private CategorieRepository cr ;
	@Override
	public void addCategorie(Categorie c) {
		// TODO Auto-generated method stub
		cr.save(c);
		
		
	}

	@Override
	public void deleteCategorie(Long id) {
		// TODO Auto-generated method stub
		//cr.deleteById(id);
		
		Optional<Categorie> categorieOptional = cr.findById(id);
        categorieOptional.ifPresent(categorie -> {
            List<Produit> produits = categorie.getListe();
            for (Produit produit : produits) {
                produit.setCategorie(null);
            }
            cr.delete(categorie);
        });
		
		
	}

	@Override
	public void updateCategorie(Categorie c) {
		// TODO Auto-generated method stub
		cr.save(c);
		
	}

	@Override
	public Categorie getCategorie(Long id) {
		// TODO Auto-generated method stub
		
		return cr.findById(id).get();
	}

	@Override
	public List<Categorie> getAllCategories() {
		// TODO Auto-generated method stub
		return cr.findAll();
	}

	@Override
	public List<Categorie> getCategoriesBMC(String mc) {
		// TODO Auto-generated method stub
		return cr.findByNomContains(mc);
	}

}