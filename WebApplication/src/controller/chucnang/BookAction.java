package controller.chucnang;

import java.util.ArrayList;

import model.bean.Book;
import model.bean.Impression;
import model.bo.BookBO;

import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private ArrayList<Book> listBook;
	private ArrayList<Impression> listImpression;
	private Book book;
	
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public ArrayList<Book> getListBook() {
		return listBook;
	}
	public void setListBook(ArrayList<Book> listBook) {
		this.listBook = listBook;
	}
	public ArrayList<Impression> getListImpression() {
		return listImpression;
	}
	public void setListImpression(ArrayList<Impression> listImpression) {
		this.listImpression = listImpression;
	}
	
    BookBO bookBo=new BookBO();
    public String showListBook(){
    	listBook=bookBo.getListBook();
    	return "list-book-page";
    }
    
    public String showListImpression(){
    	listImpression=bookBo.getListImpression();
    	return "list-impression-page";
    }
    
    public String addBook(){
    	bookBo.addBook(book);
    	return "trang-chu";
    }
}
