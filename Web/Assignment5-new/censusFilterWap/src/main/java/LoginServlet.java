

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			 response.setContentType("text/html");
	         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	         String State_name = request.getParameter("state");
	         String category = request.getParameter("category");
	         Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:100;databaseName=Census2011;integratedSecurity=true");
	         PreparedStatement ps = con.prepareStatement("select State_name,"+category+" from FinalDerivedTable where State_name='"+State_name+"'");
	         
	         ResultSet rs= ps.executeQuery();
	         
	         PrintWriter out = response.getWriter();
		
	         out.println("<html><body><table border='1'><tr><td style=\"padding:5px\">State Name</td><td style=\"padding:5px\">"+category+"</td></tr>");
	         while(rs.next()) {
	        	 out.println("<tr><td style=\"padding:5px\">"+rs.getString(1)+"</td><td  style=\"padding:5px\">"+ rs.getString(2)+"</td><tr>");
	         }
		
	         out.println("</table></body></html>");
		
		
		} catch (Exception e) {
	         e.printStackTrace();
	     }
	}

}
