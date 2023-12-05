package com.isitcom.formation.GestionCatalogue.controleur;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.isitcom.formation.GestionCatalogue.entities.Categorie;
import com.isitcom.formation.GestionCatalogue.entities.Produit;
import com.isitcom.formation.GestionCatalogue.service.IServiceCategorie;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class CategorieControleur {
	
	IServiceCategorie sc;
	
	
	
	
	
	@GetMapping("/ajoutercat")
	public String FormAjoutCategorie(Categorie c )
	{
		
		//sc.addCategorie(c);
		return "ajoutercategorie";
	}
	@PostMapping("/add")
	public String AjouterCategorie(Categorie c , Model m)
	{
	    sc.addCategorie(c);
	    return "redirect:/affichecategorie";
	}
	

	@GetMapping("/deletecat/{id}")
    public String deleteCategorie(@PathVariable Long id)
		{sc.deleteCategorie(id);
        
		return "redirect:/affichecategorie";
	}
	
	
	
	@GetMapping ("/affichecategorie")
	
	public String getAllCategories(Model m, @RequestParam(value = "mc", required = false) String mc) {
		List<Categorie> liste;
        if (mc != null && !mc.isEmpty()) {
            liste = sc.getCategoriesBMC(mc); 
        } else {
            liste = sc.getAllCategories(); 
            }
        
		m.addAttribute("categories",liste);
		return "listcategorie";
		}
	
	
	

}
