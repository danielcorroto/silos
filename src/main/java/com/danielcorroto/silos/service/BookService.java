package com.danielcorroto.silos.service;

import java.util.List;

import com.danielcorroto.silos.model.Book;

public interface BookService {

	public void saveBook(Book book);

	public List<Book> listBooks();

	public Book getBook(Long id);

	public void deleteBook(Long id);

}