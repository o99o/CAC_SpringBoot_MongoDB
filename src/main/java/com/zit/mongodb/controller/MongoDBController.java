package com.zit.mongodb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zit.mongodb.entity.Book;
import com.zit.mongodb.service.BookService;

@RestController
@RequestMapping("mongo")
public class MongoDBController {
	@Autowired
	private BookService bookService;
	
	@RequestMapping("books")
	public List<Book> getBooks(){
		List<Book> result = bookService.getBooks();
		return result;
	}
}
