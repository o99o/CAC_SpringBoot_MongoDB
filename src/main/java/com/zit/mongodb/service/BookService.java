package com.zit.mongodb.service;

import java.util.List;

import com.zit.mongodb.entity.Book;

public interface BookService {
	void saveBook(Book book);
	List<Book> getBooks();
}
