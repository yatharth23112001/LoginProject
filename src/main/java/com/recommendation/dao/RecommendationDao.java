package com.recommendation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RecommendationDao {
	String sql = "select * from music where genre=?";
	String url = "jdbc:mysql://localhost:3306/navin";
	String username = "root";
	String password = "dada23112001";
	public ArrayList<String> check(String genre)
	{
		ArrayList<String> movies = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, genre);
			ResultSet rs = st.executeQuery();
			while(rs.next())
			{
				movies.add(rs.getString(1));
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return movies;
	}
}
