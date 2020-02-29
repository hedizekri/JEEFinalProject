package yncrea.coloc.web.dto;


import java.util.List;
import java.util.Set;

public class ColocataireDTO {

    private long id_coloc;

    private String firstname_coloc;

    private String lastname_coloc;


    public long getId_coloc() {
        return id_coloc;
    }


    public void setId_coloc(final long id_colocValue) {
        id_coloc = id_colocValue;
    }


    public String getFirstname_coloc() {
        return firstname_coloc;
    }


    public void setFirstname_coloc(final String firstname_colocValue) {
        firstname_coloc = firstname_colocValue;
    }

    public String getLastname_coloc() {
        return lastname_coloc;
    }


    public void setLastname_coloc(final String lastname_colocValue) {
        lastname_coloc = lastname_colocValue;
    }



}
