package com.zit.mongodb.dao;

import java.util.List;

import com.zit.mongodb.entity.Book;

public interface BookDao {
	void saveBook(Book book);
	List<Book> getBooks();
}
