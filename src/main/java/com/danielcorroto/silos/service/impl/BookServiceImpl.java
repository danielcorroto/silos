package com.danielcorroto.silos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.danielcorroto.silos.dao.BookDao;
import com.danielcorroto.silos.model.Book;
import com.danielcorroto.silos.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDao bookDao;

	@Transactional
	public void saveBook(Book book) {
		bookDao.save(book);
	}

	@Transactional(readOnly = true)
	public List<Book> listBooks() {
		return bookDao.list();
	}

	@Transactional(readOnly = true)
	public Book getBook(Long id) {
		return bookDao.get(id);
	}

	@Transactional
	public void deleteBook(Long id) {
		bookDao.delete(id);

	}
}