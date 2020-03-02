package yncrea.coloc.web.controller;


import yncrea.coloc.core.entity.Tache_menagere;
import yncrea.coloc.core.service.Tache_menagereService;
import yncrea.coloc.web.dto.Tache_menagereDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Named
@Path("/taches_menageres")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class Tache_menagereController implements RestController {

    @Inject
    private Tache_menagereService tache_menagereService;

    @GET
    @Path("")
    public Map<Long,String> getTaches_menageres(){
        System.out.println("GetTaches_menageres");
        List<Tache_menagere> taches_menageres = tache_menagereService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Tache_menagere tache_menagere:taches_menageres){
            String contenu = tache_menagere.getContenu_tache_menagere();
            System.out.println("contenu tache menagere : " + contenu);
            returnedMap.put(tache_menagere.getId_tache_menagere(), contenu);
        }
        return returnedMap;
    }

    @GET
    @Path("/{tache_menagereId}")
    public Tache_menagereDTO getTache_menagereDetails(@PathParam("tache_menagereId") long tache_menagereId){
        Tache_menagere tache_menagere = tache_menagereService.getById_tache_menagere(tache_menagereId);
        Tache_menagereDTO dto = new Tache_menagereDTO();
        dto.setId_tache_menagere(tache_menagere.getId_tache_menagere());
        dto.setId_coloc_auteur(tache_menagere.getId_coloc_auteur());
        dto.setId_coloc_destinataire(tache_menagere.getId_coloc_destinataire());
        dto.setContenu_tache_menagere(tache_menagere.getContenu_tache_menagere());
        dto.setDate_tache_menagere(tache_menagere.getDate_tache_menagere());

        return dto;
    }

    @POST
    @Path("")
    public void saveTache_menagere(Tache_menagere tache_menagere){
        System.out.println("Tache_menagereController / saveTache_menagere");
        System.out.println(tache_menagere.getContenu_tache_menagere());
        tache_menagereService.save(tache_menagere);

    }

    @DELETE
    @Path("/{tacheId}")
    public void deleteTache_menagere(@PathParam("tacheId") long reviewId){
        tache_menagereService.delete(reviewId);
    }



}
