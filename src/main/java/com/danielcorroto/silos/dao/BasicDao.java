package com.danielcorroto.silos.dao;

import java.util.List;

public interface BasicDao<T> {
	public void save(T book);

	public List<T> list();

	public T get(Long id);

	public void delete(Long id);
}
