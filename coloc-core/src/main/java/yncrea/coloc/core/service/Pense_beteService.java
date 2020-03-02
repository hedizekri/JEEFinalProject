package yncrea.coloc.core.service;

import org.springframework.stereotype.Service;
import yncrea.coloc.core.dao.Pense_beteDAO;
import yncrea.coloc.core.entity.Pense_bete;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class Pense_beteService {

    private Pense_beteDAO pense_beteDAO;


    public Pense_beteService(final Pense_beteDAO pense_beteDAO) {
        this.pense_beteDAO = pense_beteDAO;
    }

    public List<Pense_bete> findAll(){
        return pense_beteDAO.findAll();
    }


    public Pense_bete getById_pense_bete(final long pense_beteId) {
        return pense_beteDAO.getOne(pense_beteId);
    }

    public void save(final Pense_bete pense_bete) {
        System.out.println("Pense_beteService / save");
        pense_beteDAO.save(pense_bete);
    }

    public void delete(final long pense_bete_id) {
        pense_beteDAO.deleteById(pense_bete_id);
    }
}
