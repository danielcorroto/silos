package com.danielcorroto.silos.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.danielcorroto.silos.dao.BookDao;
import com.danielcorroto.silos.model.Book;

@Repository
public class BookDaoImpl implements BookDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void save(Book book) {
		getSession().merge(book);
	}

	@SuppressWarnings("unchecked")
	public List<Book> list() {
		return getSession().createCriteria(Book.class).addOrder(Order.asc("name")).list();
	}

	public Book get(Long id) {
		return (Book) getSession().get(Book.class, id);
	}

	public void delete(Long id) {
		Book book = get(id);

		if (null != book) {
			getSession().delete(book);
		}
	}

	private Session getSession() {
		Session sess = getSessionFactory().getCurrentSession();
		if (sess == null) {
			sess = getSessionFactory().openSession();
		}
		return sess;
	}

	private SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
