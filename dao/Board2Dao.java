package com.yg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.yg.action2.DBConnection;
import com.yg.dto.Board2Dto;

public class Board2Dao {
	public ArrayList<Board2Dto> getAllBoardList() throws Exception{
		Connection conn = DBConnection.getConnection();
		
		String sql = "SELECT * FRO simple_board ORDER BY bno DESC";
		ArrayList<Board2Dto> list1 = new ArrayList<Board2Dto>();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int bno = rs.getInt("bno");
			String title  = rs.getString("title");
			String content  = rs.getString("content");
			String writer  = rs.getString("writer");
			String writedate  = rs.getString("writedate");
			list1.add(new Board2Dto(bno, title, content, writer, writedate));
		}
		rs.close();
		pstmt.close();
		conn.close();
		return list1;
	}
}
