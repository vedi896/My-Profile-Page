package com.bookhub.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookhub.model.Book;

@Repository      // ✅ Tells Spring this is a DAO bean
@Transactional   // ✅ Allows automatic transaction management
public class BookDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void saveBook(Book book) {
        sessionFactory.getCurrentSession().save(book);
    }

    public List<Book> getAllBooks() {
        return sessionFactory.getCurrentSession()
                .createQuery("from Book", Book.class)
                .list();
    }
}
