package yncrea.coloc.web.dto;


import java.util.List;
import java.util.Set;

public class Article_coursesDTO {

    private long id_article_courses;

    private long id_coloc;

    private String produit;


    public long getId_article_courses() {
        return id_article_courses;
    }


    public void setId_article_courses(final long id_article_coursesValue) {
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
