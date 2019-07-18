package com.zit.mongodb.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.data.mongodb.core.MongoTemplate;

import com.zit.mongodb.dao.BookDao;
import com.zit.mongodb.entity.Book;

@Component
public class BookDaoImpl implements BookDao{

	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Override
	public void saveBook(Book book) {
		mongoTemplate.save(book);
	}

	@Override
	public List<Book> getBooks() {
		List<Book> result = mongoTemplate.findAll(Book.class);
		return result;
	}

}
