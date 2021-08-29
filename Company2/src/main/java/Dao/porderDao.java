package Dao;

import java.sql.Connection;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Model.porder;
public class porderDao implements implDao{
	// 測試 MySQL 連線是否成功
	public static void main(String[] args) {
		System.out.println(implDao.getDb());
	// 連線成功後，驗證是否能新增物件
		new porderDao().add("IKEA", 1, 2, 3);
		porder p1 = new porder("Starbucks", 1,2,4);
		porder p2 = new porder("星巴克", 1,2,4);
		new porderDao().add(p1);
		new porderDao().add(p2);
	// 查詢物件驗證
		System.out.println(new porderDao().queryAll());
		System.out.println(new porderDao().queryId(67));
		System.out.println(new porderDao().querySum(840, 1000));
	}
	// Override method 新增物件
	@Override
	public void add(String desk, Integer a, Integer b, Integer c) {
		Connection conn = implDao.getDb();
		String sql = "insert into porder(desk, A, B, C, sum) values(?, ?, ?, ?, ?)";

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, desk);
			ps.setInt(2, a);
			ps.setInt(3, b);
			ps.setInt(4, c);
			ps.setInt(5, a*120+b*135+c*150);
			
			ps.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
	// Override method 新增物件
	@Override
	public void add(porder p) {
		Connection conn = implDao.getDb();
		String sql = "insert into porder(desk, A, B, C, sum) values(?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getDesk());
			ps.setInt(2, p.getA());
			ps.setInt(3, p.getB());
			ps.setInt(4, p.getC());
			ps.setInt(5, p.getSum());
			
			ps.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}	
	// Override method 修改物件
	
	

	// Override method 查詢物件
	@Override
	public String queryAll() {
		Connection conn = implDao.getDb();
		String sql = "select * from company.porder";
		String queryString = "";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				queryString = queryString + 
							  "id:"+ rs.getInt("id") 	  +
						      "\tdesk:" + rs.getString("desk") + 
							  "\tA:" + rs.getString("A")    + 
							  "\tB:" + rs.getString("B")  + 
							  "\tC:" + rs.getString("C")    + 
							  "\tsum:" + rs.getString("sum")  + 
							  "\n";
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return queryString;
	}
	@Override
	public porder queryId(int id) {
		Connection conn = implDao.getDb();
		String sql = "select * from company.porder where id=?";
		porder p = null;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p = new porder(rs.getString("desk"),
							   rs.getInt("A"),
							   rs.getInt("B"),
							   rs.getInt("C"));
						
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;
	}
	@Override
	public String querySum(int start, int end) {
		Connection conn = implDao.getDb();
		String sql = "select * from porder where sum>=? and sum<=?";
		String show ="";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				show = show+"id:"+rs.getInt("id")+
					   "\t桌號:"+rs.getString("desk")+
					   "\tA:"+rs.getInt("A")+
					   "\tB:"+rs.getInt("B")+
					   "\tC:"+rs.getInt("C")+
					   "\tsum:"+rs.getInt("sum")+"\n";
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return show;
	}
	
	
}
