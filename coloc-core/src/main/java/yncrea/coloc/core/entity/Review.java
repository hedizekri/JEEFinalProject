package yncrea.coloc.core.entity;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Review implements Comparable<Review> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private int score;

    private Date dateOfReview;

    @ManyToOne
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY) //We need this annotation for the deserialization only
    private Book book;


    @Override
    public int compareTo(final Review o) {
        return dateOfReview.compareTo(o.dateOfReview);
    }


    public long getId() {
        return id;
    }


    public void setId(final long idValue) {
        id = idValue;
    }


    public int getScore() {
        return score;
    }


    public void setScore(final int scoreValue) {
        score = scoreValue;
    }


    public Date getDateOfReview() {
        return dateOfReview;
    }


    public void setDateOfReview(final Date dateOfReviewValue) {
        dateOfReview = dateOfReviewValue;
    }


    public Book getBook() {
        return book;
    }


    public void setBook(final Book bookValue) {
        book = bookValue;
    }
}
