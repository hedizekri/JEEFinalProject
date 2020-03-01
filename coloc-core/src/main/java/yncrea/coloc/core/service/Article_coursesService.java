package yncrea.coloc.core.service;

import org.springframework.stereotype.Service;
import yncrea.coloc.core.dao.Article_coursesDAO;
import yncrea.coloc.core.entity.Article_courses;
import yncrea.coloc.core.entity.Review;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class Article_coursesService {

    private Article_coursesDAO article_coursesDAO;


    public Article_coursesService(final Article_coursesDAO article_coursesDAO) {
        this.article_coursesDAO = article_coursesDAO;
    }

    public List<Article_courses> findAll(){
        return article_coursesDAO.findAll();
    }


    public Article_courses getById_article_courses(final long article_coursesId) {
        return article_coursesDAO.getOne(article_coursesId);
    }

    public void save(final Article_courses article_courses) {
        System.out.println("Article_coursesService / save");
        article_coursesDAO.save(article_courses);
    }

    public void delete(final long article_courses_id) {
        article_coursesDAO.deleteById(article_courses_id);
    }
}
