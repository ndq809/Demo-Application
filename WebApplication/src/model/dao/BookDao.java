package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;




import model.bean.Book;
import model.bean.Impression;

public class BookDao{
	public Connection getconnection() {
		Connection conn=null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmanager?useSSL=false","root","11122114");
		System.out.println("ket noi thanh cong");
		} catch (Exception e) {
			System.out.println("ket noi that bai");
			System.out.println(e);
		}
		String sql = "select * from 書籍";
		try {
			ResultSet rs = conn.createStatement().executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;

	}
	public ArrayList<Book> getListBook() {
		// TODO Auto-generated method stub
		Connection conn=getconnection();
		ArrayList<Book> listBook = new ArrayList<Book>();
		Book book;
		String sql = "select * from 書籍";
		try {
			ResultSet rs = conn.createStatement().executeQuery(sql);
			while (rs.next()) {
				book = new Book();
				book.setBookId(rs.getInt(1));
				book.setBookName(rs.getString(2));
				book.setPublisher(rs.getString(3));
				book.setPageNumber(rs.getInt(4));
				listBook.add(book);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return listBook;
	}

	public ArrayList<Impression> getListImpression() {
		// TODO Auto-generated method stub
		Connection con=getconnection();
		ArrayList<Impression> listImpresssion = new ArrayList<Impression>();
		Impression impression;
		String sql = "select * from 感想";

		try {
			ResultSet rs = con.createStatement().executeQuery(sql);
			while (rs.next()) {
				impression = new Impression();
				impression.setImpressionId(rs.getInt(1));
				impression.setImpressionName(rs.getString(2));
				impression.setBookId(rs.getInt(3));
				listImpresssion.add(impression);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		 listImpresssion.get(0).getImpressionName();
		return listImpresssion;
	}
	public void addBook(Book book) {
		// TODO Auto-generated method stub
			// TODO Auto-generated method stub
			Connection con=getconnection();
			System.out.println(book.getBookName()+"  "+book.getPublisher());
			int x=0;
			String sql = "select * from 書籍";
			try {
				ResultSet rs = con.createStatement().executeQuery(sql);
				rs.last();
				x=rs.getInt(1);
					

				
			} catch (Exception e) {
				System.out.println(e);
			}
			x++;
			sql = String.format(
					"insert into 書籍 values (%s,'%s','%s',%s)",x, book.getBookName(),book.getPublisher(),book.getPageNumber());
			
			System.out.println(sql);
			try {
				con.createStatement().executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e);
			}
		
	}

}
