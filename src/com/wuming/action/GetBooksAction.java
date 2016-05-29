package com.wuming.action;

import com.opensymphony.xwork2.ActionSupport;
import com.wuming.pojo.Book;
import com.wuming.service.BookService;

import java.util.List;

public class GetBooksAction extends ActionSupport {
		
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		private String category;
		private List<Book> books;

		public List<Book> getBooks() {
			return books;
		}

		public void setBooks(List<Book> books) {
			this.books = books;
		}

		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}
		
		public String execute() {
			BookService bs = new BookService();
			setBooks(bs.getBooksByCategory(category));
			return SUCCESS;
			
		}

}
