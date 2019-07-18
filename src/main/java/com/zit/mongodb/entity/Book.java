package com.zit.mongodb.entity;

import java.util.Date;

public class Book {
	private String _id;
	private String title;
	private String[] author;
	private Date published_date;
	private Integer pages;
	private String language;
	private String[] checkout;
	private String[] myPush;
	private Integer available1;
	
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String[] getAuthor() {
		return author;
	}
	public void setAuthor(String[] author) {
		this.author = author;
	}
	public Date getPublished_date() {
		return published_date;
	}
	public void setPublished_date(Date published_date) {
		this.published_date = published_date;
	}
	public Integer getPages() {
		return pages;
	}
	public void setPages(Integer pages) {
		this.pages = pages;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String[] getCheckout() {
		return checkout;
	}
	public void setCheckout(String[] checkout) {
		this.checkout = checkout;
	}
	public String[] getMyPush() {
		return myPush;
	}
	public void setMyPush(String[] myPush) {
		this.myPush = myPush;
	}
	public Integer getAvailable1() {
		return available1;
	}
	public void setAvailable1(Integer available1) {
		this.available1 = available1;
	}
}
