package yncrea.coloc.core.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Tache_menagere implements Comparable<Tache_menagere> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id_tache_menagere;

    private long id_coloc_auteur;

    private long id_coloc_destinataire;

    private String contenu_tache_menagere;

    private Date date_tache_menagere;


    @Override
    public int compareTo(final Tache_menagere o) {
        return contenu_tache_menagere.compareTo(o.contenu_tache_menagere);
    }


    public long getId_tache_menagere() {
        return id_tache_menagere;
    }


    public void setId(final long id_tache_menagereValue) {
        id_tache_menagere = id_tache_menagereValue;
    }

    public long getId_coloc_auteur() {
        return id_coloc_auteur;
    }


    public void setId_coloc_auteur(final long id_coloc_auteurValue) {
        id_coloc_auteur = id_coloc_auteurValue;
    }

    public long getId_coloc_destinataire() {
        return id_coloc_destinataire;
    }


    public void setId_coloc_destinataire(final long id_coloc_destinataireValue) {
        id_coloc_destinataire = id_coloc_destinataireValue;
    }


    public String getContenu_tache_menagere() {
        return contenu_tache_menagere;
    }


    public void setContenu_tache_menagere(final String contenu_tache_menagereValue) {
        contenu_tache_menagere = contenu_tache_menagereValue;
    }

    public Date getDate_tache_menagere() {
        return date_tache_menagere;
    }


    public void setDate_tache_menagere(final Date date_tache_menagereValue) {
        date_tache_menagere = date_tache_menagereValue;
    }




}
