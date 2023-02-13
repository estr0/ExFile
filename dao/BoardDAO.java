package com.yg.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.yg.dto.BoardDTO;
import com.yg.dto.BoardDetailDTO;

public class BoardDAO {
	// getConnection() : DB연결 후 Connection객체의 참조값을 리턴.
	private Connection getConnection() {
		Connection conn = null;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbID = "test1017";
		String dbPW = "1234";
		
		try{
			Class.forName(driver);
			System.out.println("<h1>JDBC 드라이버 로딩 성공 </h1>");
			conn = DriverManager.getConnection(url,dbID,dbPW);
			System.out.println("<h1>Oracle 접속 성공</h1>");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("오라클 접속 실패");
		}
		return conn;
	}
	
	public ArrayList<BoardDTO> getAllBoardList() throws Exception { 
/*		
  		System.out.print("페이지 번호 입력 : ");
		int pageNumber = Integer.parseInt(request.getParameter("page"));
		int bnoStart = pageNumber * 20 - 19;
	 	int bnoEnd = pageNumber * 20;
		String sql = "select * from "
				+ " (select rownum rnum, t1.* " 
				+ " from (select * from simple_board order by bno DESC)t1 )t2"
				+ " where rnum >=? and rnum <=?";
		pstmt.setInt(1, bnoStart);
		pstmt.setInt(2, bnoEnd);
*/
		
		Connection conn = getConnection();
		ArrayList<BoardDTO> listBoard =  new ArrayList<BoardDTO>();
		
		String sql = "select * from simple_board ORDER BY bno DESC";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			int bno = rs.getInt("bno");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writer = rs.getString("writer");
			String writedate = rs.getString("writedate");
			listBoard.add(new BoardDTO(bno ,writer ,title ,content ,writedate));
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listBoard;
	}
	
	public void insertBoard(BoardDTO dto) throws Exception {
		
		Connection conn = getConnection();
		
		String sql = "INSERT INTO simple_board(bno, title, content, writer)"
				+ " VALUES (simple_board_seq.nextval,? ,? ,?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,dto.getTitle());
		pstmt.setString(2,dto.getContent());
		pstmt.setString(3,dto.getWriter());
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	
	// getNextBno() : 이번에 insert되는 bno값을 리턴.(currval+1)
	public int getNextBno() throws Exception {
		Connection conn = getConnection();
		String sql="SELECT MAX(bno)+1 FROM simple_board";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int ret = 0;
		if(rs.next()) {
			ret = rs.getInt(1);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return ret;
		
	}
	public BoardDetailDTO getBoardDetailByBno(int bno) throws Exception {
		String sql = "select *"
				+ " from simple_board s, member m"
				+ " where s.writer=m.id AND bno = ?";
		
		Connection conn = getConnection();
		BoardDetailDTO dto = null;
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bno);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int bno2 = rs.getInt("bno");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writer = rs.getString("writer");
			String name = rs.getString("name");
			String writedate = rs.getString("writedate");
			dto = new BoardDetailDTO(bno2, title, content, writer, name, writedate);
			
		}
		
		conn.close();
		return dto;
	}
}
