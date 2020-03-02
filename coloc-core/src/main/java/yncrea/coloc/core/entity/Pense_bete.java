package yncrea.coloc.core.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Pense_bete implements Comparable<Pense_bete> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id_pense_bete;

    private long id_coloc;

    private String contenu_pense_bete;

    private Date date_pense_bete;


    @Override
    public int compareTo(final Pense_bete o) {
        return contenu_pense_bete.compareTo(o.contenu_pense_bete);
    }


    public long getId_pense_bete() {
        return id_pense_bete;
    }


    public void setId(final long id_pense_beteValue) {
        id_pense_bete = id_pense_beteValue;
    }

    public long getId_coloc() {
        return id_coloc;
    }


    public void setId_coloc(final long id_colocValue) {
        id_coloc = id_colocValue;
    }


    public String getContenu_pense_bete() {
        return contenu_pense_bete;
    }


    public void setContenu_pense_bete(final String contenu_pense_beteValue) {
        contenu_pense_bete = contenu_pense_beteValue;
    }

    public Date getDate_pense_bete() {
        return date_pense_bete;
    }


    public void setDate_pense_bete(final Date date_pense_beteValue) {
        date_pense_bete = date_pense_beteValue;
    }




}
