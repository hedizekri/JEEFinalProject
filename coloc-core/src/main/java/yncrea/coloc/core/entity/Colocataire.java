package yncrea.coloc.core.entity;

import javax.persistence.*;
import java.util.Set;

// The @ManyToMany annotation is provided because it is not that easy ;)
// Another @ManyToMany annotation is needed !
// Hint : https://www.baeldung.com/jpa-many-to-many
// Hint 2 : https://tomee.apache.org/examples-trunk/jpa-enumerated/
@Entity
public class Colocataire implements Comparable<Colocataire> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id_coloc;

    private String firstname_coloc;

    private String lastname_coloc;


    public long getId_coloc() {
        return id_coloc;
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




    @Override public int compareTo(final Colocataire o) {
        return lastname_coloc.compareTo(o.lastname_coloc);
    }
}
