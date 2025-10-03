package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
@WebServlet("/TestStudentWithDB")
public class TestStudentWithDB extends HttpServlet {

	@Resource(name="jdbc/connection")
	 private DataSource dataSource;
	
	public TestStudentWithDB () {
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   PrintWriter pw = response.getWriter();
	        pw.append("<h1>Do Get</h1>");
	        
	        try (Connection con = dataSource.getConnection()) {
	            pw.println("<h1>✅ Connection Success via JNDI!</h1>");
	        } catch (Exception e) {
	            pw.println("<h1>❌ Connection Failed</h1>");
	            e.printStackTrace(pw);
	        }
	        
	        Connection connection = null;
	        Statement statement = null;
	        ResultSet resultSet = null;

	        try {
	            connection = dataSource.getConnection();
	            statement = connection.createStatement();
	            String query = "SELECT * FROM Students"; 
	            resultSet = statement.executeQuery(query);

	            while(resultSet.next()) {
	                pw.append("<h1>" + resultSet.getString("id") + "</h1>");
	                pw.append("<h1>" + resultSet.getString("name") + "</h1>");
	            }

	        } catch(SQLException e) {
	            e.printStackTrace(pw);
	        } finally {
	            try { if(resultSet != null) resultSet.close(); } catch(Exception e) {}
	            try { if(statement != null) statement.close(); } catch(Exception e) {}
	            try { if(connection != null) connection.close(); } catch(Exception e) {}
	        }
	        
	      

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   PrintWriter pw = response.getWriter();
	        pw.append("<h1>Do post</h1>");
	        
	        try{
	        	pw.append("<h1>"+dataSource.getConnection()+"</h1>");
	        }
	        catch(SQLException e) {
	        	pw.append("<h1>"+e.toString()+"</h1>");
	        }
	}

}
