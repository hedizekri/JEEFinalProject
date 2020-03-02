package yncrea.coloc.core.service;

import org.springframework.stereotype.Service;
import yncrea.coloc.core.dao.Tache_menagereDAO;
import yncrea.coloc.core.entity.Tache_menagere;
import yncrea.coloc.core.entity.Review;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class Tache_menagereService {

    private Tache_menagereDAO tache_menagereDAO;


    public Tache_menagereService(final Tache_menagereDAO tache_menagereDAO) {
        this.tache_menagereDAO = tache_menagereDAO;
    }

    public List<Tache_menagere> findAll(){
        return tache_menagereDAO.findAll();
    }


    public Tache_menagere getById_tache_menagere(final long tache_menagereId) {
        return tache_menagereDAO.getOne(tache_menagereId);
    }

    public void save(final Tache_menagere tache_menagere) {
        System.out.println("Tache_menagereService / save");
        tache_menagereDAO.save(tache_menagere);
    }

    public void delete(final long tache_menagere_id) {
        tache_menagereDAO.deleteById(tache_menagere_id);
    }
}
