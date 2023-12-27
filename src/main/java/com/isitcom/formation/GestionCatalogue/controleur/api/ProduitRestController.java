package com.isitcom.formation.GestionCatalogue.controleur.api;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.isitcom.formation.GestionCatalogue.entities.Produit;
import com.isitcom.formation.GestionCatalogue.service.IServiceProduit;

import lombok.AllArgsConstructor;
//@CrossOrigi("*")
//la consomation des api rest a partire du angular
@RestController
@AllArgsConstructor
@RequestMapping("api")
public class ProduitRestController {
	
	
	private IServiceProduit sp;
	
	@GetMapping("/produits")
	
	public List<Produit>getProduct()
	{ return sp.getAllProducts();}
	
	
	
	
@GetMapping("/search")
	
	public List<Produit>getProductBMC (@RequestParam String mc)
	{ return sp.getProductsBMC(mc);}
	
@DeleteMapping("/delete/id")

public void deleteProduct (@PathVariable Long id)
{  sp.deleteProduct(id);}


	
@PostMapping("/add")
public void addProduct (@RequestBody Produit p)
{  sp.addProduct(p);}


}


