package yncrea.coloc.core.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;

// TODO complete this implementation with the correct annotations, fields and methods.
// The @JsonIgnoreProperties annotation is mandatory in our case because it helps the JSON Serialization
// The @ManyToMany annotation is provided because it is not that easy ;)
@Entity
@JsonIgnoreProperties({ "books" })
public class Author implements Comparable<Author> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String firstname;

    private String lastname;

    @ManyToMany(mappedBy = "authors")
    private List<Book> books;


    public Author() {
    }


    public Author(final String firstname, final String lastname) {
        this.firstname = firstname;
        this.lastname = lastname;
    }


    @Override public int compareTo(final Author o) {
        if (lastname.equals(o.lastname)) {
            return firstname.compareTo(o.firstname);
        } else {
            return lastname.compareTo(o.lastname);
        }
    }

    @Override
    public String toString(){
        return firstname+" "+lastname;
    }


    public long getId() {
        return id;
    }


    public void setId(final long idValue) {
        id = idValue;
    }


    public String getFirstname() {
        return firstname;
    }


    public void setFirstname(final String firstnameValue) {
        firstname = firstnameValue;
    }


    public String getLastname() {
        return lastname;
    }


    public void setLastname(final String lastnameValue) {
        lastname = lastnameValue;
    }


    public List<Book> getBooks() {
        return books;
    }


    public void setBooks(final List<Book> booksValue) {
        books = booksValue;
    }
}
