package yncrea.coloc.core.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Article_courses implements Comparable<Article_courses> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id_article_courses;

    private long id_coloc;

    private String produit;


    @Override
    public int compareTo(final Article_courses o) {
        return produit.compareTo(o.produit);
    }


    public long getId_article_courses() {
        return id_article_courses;
    }


    public void setId(final long id_article_coursesValue) {
        id_article_courses = id_article_coursesValue;
    }

    public long getId_coloc() {
        return id_coloc;
    }


    public void setId_coloc(final long id_colocValue) {
        id_coloc = id_colocValue;
    }



    public String getProduit() {
        return produit;
    }


    public void setProduit(final String produitValue) {
        produit = produitValue;
    }



}
