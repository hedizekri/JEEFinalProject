package yncrea.coloc.core.entity;

import javax.persistence.*;
import java.util.Set;

// The @ManyToMany annotation is provided because it is not that easy ;)
// Another @ManyToMany annotation is needed !
// Hint : https://www.baeldung.com/jpa-many-to-many
// Hint 2 : https://tomee.apache.org/examples-trunk/jpa-enumerated/
@Entity
public class Book implements Comparable<Book> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String title;

    @Enumerated(EnumType.STRING)
    private Language language;

    @ManyToMany
    @JoinTable(
            name = "book_author",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "author_id"))
    private Set<Author> authors;

    private String image;

    @ManyToMany
    @JoinTable(
            name = "book_tag",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id"))
    private Set<Tag> tags;

    @OneToMany(mappedBy = "book")
    private Set<Review> reviews;


    public long getId() {
        return id;
    }


    public String getTitle() {
        return title;
    }


    public void setTitle(final String titleValue) {
        title = titleValue;
    }


    public Language getLanguage() {
        return language;
    }


    public void setLanguage(final Language languageValue) {
        language = languageValue;
    }


    public Set<Author> getAuthors() {
        return authors;
    }


    public void setAuthors(final Set<Author> authorsValue) {
        authors = authorsValue;
    }


    public String getImage() {
        return image;
    }


    public void setImage(final String imageValue) {
        image = imageValue;
    }


    public Set<Tag> getTags() {
        return tags;
    }


    public void setTags(final Set<Tag> tagsValue) {
        tags = tagsValue;
    }


    public Set<Review> getReviews() {
        return reviews;
    }


    public void setReviews(final Set<Review> reviewsValue) {
        reviews = reviewsValue;
    }


    @Override public int compareTo(final Book o) {
        return title.compareTo(o.title);
    }
}
