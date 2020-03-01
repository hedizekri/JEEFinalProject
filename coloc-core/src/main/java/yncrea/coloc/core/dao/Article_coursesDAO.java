package yncrea.coloc.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import yncrea.coloc.core.entity.Article_courses;

public interface Article_coursesDAO extends JpaRepository<Article_courses, Long> {

    @Query("SELECT DISTINCT a FROM Article_courses a WHERE a.id_article_courses=:id")
    Article_courses getOne(@Param("id") long Article_coursesId);
}
