package yncrea.coloc.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import yncrea.coloc.core.entity.Pense_bete;

public interface Pense_beteDAO extends JpaRepository<Pense_bete, Long> {

    @Query("SELECT DISTINCT p FROM Pense_bete p WHERE p.id_pense_bete=:id")
    Pense_bete getOne(@Param("id") long Pense_beteId);
}
