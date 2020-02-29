package yncrea.coloc.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import yncrea.coloc.core.entity.Colocataire;

public interface ColocataireDAO extends JpaRepository<Colocataire, Long> {

    @Query("SELECT DISTINCT c FROM Colocataire c WHERE c.id_coloc=:id")
    Colocataire getOne(@Param("id") long colocataireId);
}
