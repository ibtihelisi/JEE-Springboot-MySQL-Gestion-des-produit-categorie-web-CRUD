package com.isitcom.formation.GestionCatalogue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.isitcom.formation.GestionCatalogue.dao.ProduitRepository;
import com.isitcom.formation.GestionCatalogue.entities.Produit;


@Service
public class ServiceProduit implements IServiceProduit{
	
	@Autowired
	private ProduitRepository pr;

	@Override
	public void addProduct(Produit p) {
		
		pr.save(p);
		
	}

	@Override
	public void deleteProduct(Long id) {
		// TODO Auto-generated method stub
		pr.deleteById(id);
		
	}

	@Override
	public void updateProduct(Produit p) {
		// TODO Auto-generated method stub
		pr.save(p);
		
	}

	@Override
	public Produit getProduct(Long id) {
		// TODO Auto-generated method stub
		return pr.findById(id).get();
	}

	@Override
	public List<Produit> getAllProducts() {
		// TODO Auto-generated method stub
		return pr.findAll();
	}

	@Override
	public List<Produit> getProductsBMC(String mc) {
		// TODO Auto-generated method stub
		return pr.findByNomContains(mc);
	}

}
