package yncrea.coloc.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import yncrea.coloc.core.entity.Tache_menagere;

public interface Tache_menagereDAO extends JpaRepository<Tache_menagere, Long> {

    @Query("SELECT DISTINCT t FROM Tache_menagere t WHERE t.id_tache_menagere=:id")
    Tache_menagere getOne(@Param("id") long Tache_menagereId);
}
