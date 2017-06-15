package model.bo;

import java.util.ArrayList;

import model.bean.Book;
import model.bean.Impression;
import model.dao.BookDao;

public class BookBO {
	BookDao bookDao=new BookDao();
	public ArrayList<Book> getListBook() {
		// TODO Auto-generated method stub
		return bookDao.getListBook();
	}
	public ArrayList<Impression> getListImpression() {
		// TODO Auto-generated method stub
		return bookDao.getListImpression();
	}
	public void addBook(Book book) {
		// TODO Auto-generated method stub
		bookDao.addBook(book);
	}

}
