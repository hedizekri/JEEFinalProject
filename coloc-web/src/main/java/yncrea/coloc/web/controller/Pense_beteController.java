package yncrea.coloc.web.controller;


import yncrea.coloc.core.entity.Pense_bete;
import yncrea.coloc.core.service.Pense_beteService;
import yncrea.coloc.web.dto.Pense_beteDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Named
@Path("/penses_bete")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class Pense_beteController implements RestController {

    @Inject
    private Pense_beteService pense_beteService;

    @GET
    @Path("")
    public Map<Long,String> getPenses_bete(){
        System.out.println("GetPenses_bete");
        List<Pense_bete> penses_bete = pense_beteService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Pense_bete pense_bete:penses_bete){
            String contenu = pense_bete.getContenu_pense_bete();
            System.out.println("contenu pense bete : " + contenu);
            returnedMap.put(pense_bete.getId_pense_bete(), contenu);
        }
        return returnedMap;
    }

    @GET
    @Path("/{pense_beteId}")
    public Pense_beteDTO getPense_beteDetails(@PathParam("pense_beteId") long pense_beteId){
        Pense_bete pense_bete = pense_beteService.getById_pense_bete(pense_beteId);
        Pense_beteDTO dto = new Pense_beteDTO();
        dto.setId_pense_bete(pense_bete.getId_pense_bete());
        dto.setId_coloc(pense_bete.getId_coloc());
        dto.setContenu_pense_bete(pense_bete.getContenu_pense_bete());
        dto.setDate_pense_bete(pense_bete.getDate_pense_bete());
        return dto;
    }

    @POST
    @Path("")
    public void savePense_bete(Pense_bete pense_bete){
        System.out.println("Pense_beteController / savePense_bete");
        System.out.println(pense_bete.getContenu_pense_bete());
        pense_beteService.save(pense_bete);

    }

    @DELETE
    @Path("/{penseId}")
    public void deletePense_bete(@PathParam("penseId") long penseId){
        pense_beteService.delete(penseId);
    }



}
