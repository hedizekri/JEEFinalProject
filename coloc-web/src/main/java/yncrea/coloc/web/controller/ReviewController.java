package yncrea.coloc.web.controller;

import yncrea.coloc.core.entity.Review;
import yncrea.coloc.core.service.ReviewService;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Named
@Path("/reviews")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class ReviewController implements RestController{

    @Inject
    private ReviewService reviewService;

    @POST
    @Path("")
    public void saveReview(Review review){
        reviewService.save(review);

    }

    @DELETE
    @Path("/{reviewId}")
    public void deleteReview(@PathParam("reviewId") long reviewId){
        reviewService.delete(reviewId);
    }


}
