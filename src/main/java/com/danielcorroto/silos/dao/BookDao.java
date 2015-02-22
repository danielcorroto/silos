package com.danielcorroto.silos.dao;

import java.util.List;

import com.danielcorroto.silos.model.Book;

public interface BookDao extends BasicDao<Book>{
	public void save(Book book);

	public List<Book> list();

	public Book get(Long id);

	public void delete(Long id);
}
