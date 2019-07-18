package com.zit.mongodb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zit.mongodb.dao.BookDao;
import com.zit.mongodb.entity.Book;
import com.zit.mongodb.service.BookService;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDao bookDao;

	@Override
	public void saveBook(Book book) {
		bookDao.saveBook(book);
	}

	@Override
	public List<Book> getBooks() {
		List<Book> result = bookDao.getBooks();
		return result;
	}

}
