package com.isitcom.formation.GestionCatalogue.entities;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Categorie
{
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;

    private String nom;

    @OneToMany (mappedBy = "categorie", cascade = CascadeType.ALL)
    private List<Produit> liste;

   
    

   


	public Categorie(String nom, List<Produit> liste) {
        this.nom = nom;
        this.liste = liste;
    }

    

    

    public List<Produit> getListe() {
        return liste;
    }

    /*@Override
    public String toString() {
        return "Categorie{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                '}';
    }
    */
    
   

}