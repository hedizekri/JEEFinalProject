package yncrea.coloc.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import yncrea.coloc.core.entity.Review;

public interface ReviewDAO extends JpaRepository<Review,Long> {

}
