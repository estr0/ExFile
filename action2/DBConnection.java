package com.yg.action2;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbID = "test1017";
		String dbPW = "1234";
		
		Connection conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,dbID,dbPW);
			System.out.println("DB접속완료");
		}catch(Exception e){ e.printStackTrace();}
		
		return conn;
	}
}
