package yncrea.coloc.core.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;
// TODO complete this implementation with the correct annotations, fields and methods.
// The @JsonIgnoreProperties annotation is mandatory in our case because it helps the JSON Serialization

@JsonIgnoreProperties({ "books" })
@Entity
public class Tag implements Comparable<Tag> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;

    @ManyToMany(mappedBy = "tags")
    private List<Book> books;


    public long getId() {
        return id;
    }


    public void setId(final long idValue) {
        id = idValue;
    }


    public String getName() {
        return name;
    }


    public void setName(final String nameValue) {
        name = nameValue;
    }


    public List<Book> getBooks() {
        return books;
    }


    public void setBooks(final List<Book> booksValue) {
        books = booksValue;
    }


    @Override
    public int compareTo(final Tag o) {
        return name.compareTo(o.name);
    }
}
