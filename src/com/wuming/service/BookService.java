package com.wuming.service;


import com.wuming.pojo.Book;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BookService {
	
	static Map<String,List<Book>> bookDb;
	static {
		bookDb = new HashMap<>();
		List<Book> books1 = new ArrayList<>();
		books1.add(new Book(1,"Java编程","李刚",22.2));
		books1.add(new Book(1,"Ajax编程","李刚",224.2));
		books1.add(new Book(1,"C#编程","李刚",28.2));
		books1.add(new Book(1,"C语言编程","李刚",45.2));
		bookDb.put("计算机类", books1);
		
		List<Book> books2 = new ArrayList<>();
		books2.add(new Book(1,"蚂蚁之死","XXX",45.2));
		books2.add(new Book(1,"平凡的世界","贾平凹",274.2));
		books2.add(new Book(1,"围城","钱钟书",25.2));
		bookDb.put("文学类", books2);
	}

	/*
	 * 得到图书种类
	 */
	public List<String> getAllCategories() {
		List<String> categories = new ArrayList<>();
		for(String category : bookDb.keySet()) {
			categories.add(category);
		}
		return categories;
	}
	/*
	 * 根据图书各类得到该种类书籍
	 */
	public List<Book> getBooksByCategory(String category) {
		return bookDb.get(category);
	}
}
