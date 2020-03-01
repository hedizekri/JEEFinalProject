package yncrea.coloc.web.controller;


import yncrea.coloc.core.entity.Book;
import yncrea.coloc.core.entity.Tag;
import yncrea.coloc.core.service.BookService;
import yncrea.coloc.web.dto.BookDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Named
@Path("/books")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class BookController implements RestController {

    @Inject
    private BookService bookService;

    @GET
    @Path("")
    public Map<Long,String> getBooks(){
        List<Book> books = bookService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Book book:books){
            returnedMap.put(book.getId(),book.getTitle());
        }
        return returnedMap;
    }

    @GET
    @Path("/{bookId}")
    public BookDTO getBookDetails(@PathParam("bookId") long bookId){
        Book book = bookService.getById(bookId);
        BookDTO dto = new BookDTO();
        dto.setAuthors(book.getAuthors().stream().map(a->a.toString()).collect(Collectors.toList()));
        dto.setId(book.getId());
        dto.setImage(book.getImage());
        dto.setLanguage(book.getLanguage().toString());
        dto.setTitle(book.getTitle());
        dto.setTags(book.getTags().stream().map(Tag::getName).collect(Collectors.toList()));
        dto.setReviews(book.getReviews());


        return dto;
    }



}
