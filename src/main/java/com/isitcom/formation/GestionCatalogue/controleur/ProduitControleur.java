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
import com.isitcom.formation.GestionCatalogue.service.IServiceProduit;
import com.isitcom.formation.GestionCatalogue.service.ServiceCategorie;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class ProduitControleur {
	
	IServiceProduit sp;
	IServiceCategorie sc;
	
	@GetMapping ("/home")
	//Lorsque l'utilisateur accède à l'URL "/home" dans son navigateur, la méthode getAllProducts du contrôleur est appelée en raison de l'annotation @GetMapping("/home").
	// le model m permet de passer des données du contrôleur à la vue
	public String getAllProducts(Model m, @RequestParam(value = "mc", required = false) String mc) {
        List<Produit> liste;
        if (mc != null && !mc.isEmpty()) {
            liste = sp.getProductsBMC(mc); // Recherche avec le terme mc
        } else {
            liste = sp.getAllProducts(); // Récupère tous les produits si le terme de recherche est vide
        }
        //La liste de produits obtenue est ensuite ajoutée à l'objet Model avec le nom "produits".
		m.addAttribute("produits",liste);
		return "vue";
		}
	
	@GetMapping("/ajouterprod")
	public String afficherFormulaireAjout(Model model) {
	    // Vous pouvez initialiser les données nécessaires dans le modèle si nécessaire
		List<Categorie> categories = sc.getAllCategories();
	    model.addAttribute("categories", categories); // Assurez-vous que le modèle contient un produit vide
	    return "ajouter";
	}
	
	
	@PostMapping("/Controleur")
	public String ajouterProduit(@ModelAttribute Produit produit) {
	    // Ajoutez le code pour traiter l'ajout du produit
		sp.addProduct(produit);// Utilisez le service (sp) pour effectuer les opérations nécessaires
	    // Assurez-vous de rediriger correctement vers la page souhaitée après l'opération
	    return "redirect:/home";
	}
	
	
	@GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable Long id)
		{sp.deleteProduct(id);
        
		return "redirect:/home";
	}
	
	
	
	@GetMapping("/editProduit")
	public String showEditForm(@RequestParam Long id, Model model) {
	    Produit existingProduct = sp.getProduct(id);
	    model.addAttribute("produit", existingProduct);

	    List<Categorie> categories = sc.getAllCategories();
	    model.addAttribute("categories", categories);

	    return "editProduit"; // Affiche le formulaire de modification
	}
	@PostMapping("/updateProduit")
	// @ModelAttribute a pour but de lier les données du formulaire envoyées en tant qu'objet Produit
	public String updateProduct(@ModelAttribute Produit updatedProduct) {
	    sp.updateProduct(updatedProduct);
	    return "redirect:/home"; 
	}


}
