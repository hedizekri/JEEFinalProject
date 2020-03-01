package yncrea.coloc.web.controller;


import yncrea.coloc.core.entity.Article_courses;
import yncrea.coloc.core.service.Article_coursesService;
import yncrea.coloc.web.dto.Article_coursesDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Named
@Path("/articles_courses")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class Article_coursesController implements RestController {

    @Inject
    private Article_coursesService article_coursesService;

    @GET
    @Path("")
    public Map<Long,String> getArticles_courses(){
        System.out.println("GetArticles_courses");
        List<Article_courses> articles_courses = article_coursesService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Article_courses article_courses:articles_courses){
            String name = article_courses.getProduit();
            System.out.println("name article : " + name);
            returnedMap.put(article_courses.getId_article_courses(), name);
        }
        return returnedMap;
    }

    @GET
    @Path("/{article_coursesId}")
    public Article_coursesDTO getArticle_coursesDetails(@PathParam("article_coursesId") long article_coursesId){
        Article_courses article_courses = article_coursesService.getById_article_courses(article_coursesId);
        Article_coursesDTO dto = new Article_coursesDTO();
        dto.setId_article_courses(article_courses.getId_article_courses());
        dto.setId_coloc(article_courses.getId_coloc());
        dto.setProduit(article_courses.getProduit());
        return dto;
    }

    @POST
    @Path("")
    public void saveArticle_courses(Article_courses article_courses){
        System.out.println("Article_coursesController / saveArticle_courses");
        System.out.println(article_courses.getProduit());
        article_coursesService.save(article_courses);

    }

    @DELETE
    @Path("/{articleId}")
    public void deleteArticle_courses(@PathParam("articleId") long reviewId){
        article_coursesService.delete(reviewId);
    }



}
