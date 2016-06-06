package com.db;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.h2.tools.DeleteDbFiles;
import org.h2.tools.RunScript;

import com.pojo.Submissions;

public class H2DatabaseConnection2 {
	private static final String DB_DRIVER = "org.h2.Driver";
	private static final String DB_CONNECTION = "jdbc:h2:~/test";
	private static final String DB_USER = "";
	private static final String DB_PASSWORD = "";

	// Preparing Database
	public List<Submissions> insertWithStatement() throws SQLException {
		DeleteDbFiles.execute("~", "test", true);
		List<Submissions> submissionList = new ArrayList<>();
		Connection connection = getDBConnection();
		Statement stmt = null;
		try {
			RunScript.execute(connection, new FileReader("coders.sql"));
			connection.setAutoCommit(false);
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select * from submissions");
			while (rs.next()) {
				Submissions submission = new Submissions();
				submission.setSubmission_id(String.valueOf(rs.getInt("submission_id")));
				submission.setTitle(rs.getString("title"));
				submission.setMetadata(rs.getString("metadata"));
				submission.setSource(rs.getString("source"));
				submission.setStatus(rs.getString("status"));
				submission.setLanguage(rs.getString("language"));
				
				submissionList.add(submission);
			}
			stmt.close();
			connection.commit();
		} catch (IOException | SQLException e) {
			System.out.println("Exception Message " + e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return submissionList;
	}

	// Database connection
	private static Connection getDBConnection() {
		Connection dbConnection = null;
		try {
			Class.forName(DB_DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		try {
			dbConnection = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
			return dbConnection;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return dbConnection;
	}
}