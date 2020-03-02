package yncrea.coloc.web.controller;


import yncrea.coloc.core.entity.Colocataire;
import yncrea.coloc.core.service.ColocataireService;
import yncrea.coloc.web.dto.ColocataireDTO;

import javax.inject.Inject;
import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Named
@Path("/colocataires")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class ColocataireController implements RestController {

    @Inject
    private ColocataireService colocataireService;

    @GET
    @Path("")
    public Map<Long,String> getColocataires(){
        System.out.println("GetColocataires");
        List<Colocataire> colocataires = colocataireService.findAll();
        Map<Long,String> returnedMap = new HashMap<>();
        for(Colocataire colocataire:colocataires){
            String name = colocataire.getFirstname_coloc() + " " + colocataire.getLastname_coloc();
            System.out.println("name coloc : " + name);
            returnedMap.put(colocataire.getId_coloc(), name);
        }
        return returnedMap;
    }

    @GET
    @Path("/{colocataireId}")
    public ColocataireDTO getColocataireDetails(@PathParam("colocataireId") long colocataireId){
        Colocataire colocataire = colocataireService.getById_coloc(colocataireId);
        ColocataireDTO dto = new ColocataireDTO();
        dto.setId_coloc(colocataire.getId_coloc());
        dto.setFirstname_coloc(colocataire.getFirstname_coloc());
        dto.setLastname_coloc(colocataire.getLastname_coloc());
        return dto;
    }

    @POST
    @Path("")
    public void saveColocataire(Colocataire colocataire){
        System.out.println("ColocataireController / saveColocataire");
        System.out.println(colocataire.getFirstname_coloc() + " " + colocataire.getLastname_coloc());
        colocataireService.save(colocataire);

    }

    @DELETE
    @Path("/{colocId}")
    public void deleteColocataire(@PathParam("colocId") long colocId){
        colocataireService.delete(colocId);
    }


}
