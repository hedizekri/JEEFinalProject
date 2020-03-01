package yncrea.coloc.core.service;

import org.springframework.stereotype.Service;
import yncrea.coloc.core.dao.ColocataireDAO;
import yncrea.coloc.core.entity.Colocataire;
import yncrea.coloc.core.entity.Review;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class ColocataireService {

    private ColocataireDAO colocataireDAO;


    public ColocataireService(final ColocataireDAO colocataireDAO) {
        this.colocataireDAO = colocataireDAO;
    }

    public List<Colocataire> findAll(){
        return colocataireDAO.findAll();
    }


    public Colocataire getById_coloc(final long colocataireId) {
        return colocataireDAO.getOne(colocataireId);
    }

    public void save(final Colocataire colocataire) {
        System.out.println("ColocataireService / save");
        colocataireDAO.save(colocataire);
    }

    public void delete(final long coloc_id) {
        colocataireDAO.deleteById(coloc_id);
    }
}
