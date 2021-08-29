package Dao;

import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.SQLException;
import Model.porder;
public interface implDao{
	// 連線方法
	static Connection getDb() {
		Connection conn = null;
		// 如果遇到傳入中文到 SQL Table 中，有問題，請加上此語法 ?useUnicode=true&characterEncoding=utf-8
		// String url = "jdbc:mysql://localhost:3307/company?useUnicode=true&characterEncoding=utf-8";
		String url = "jdbc:mysql://localhost:3307/company";
		String user = "root";
		String password = "1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("No Driver");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("No Connection");
			e.printStackTrace();
		}
		return conn; 
	}
	
	// 新增物件
	public void add(String desk, Integer a, Integer b, Integer c);
	public void add(porder p);
	// 修改物件
	public void update(porder porder);
	// 查詢物件
	public String queryAll();//全部
	porder queryId(int id);
	String querySum(int start, int end);	
	// 刪除物件
	public void delete(int id);
}
