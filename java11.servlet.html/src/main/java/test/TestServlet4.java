package test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import test.common.PropertiesManagerSingleton;

/**
 * Servlet implementation class TestServlet3
 */
@WebServlet("/TestServlet4")
public class TestServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public TestServlet4() {
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet - START");
		
		//Connessione al database
		String output = "" ;
		try {
			output = selectFromDatabase();
			
			
			testProperties();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//
		System.out.println("doGet - END: " + output);
		response.getWriter().append(output);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private String selectFromDatabase () throws SQLException, ClassNotFoundException {
		
		System.out.println("START selectFromDatabase");
		StringBuilder sb = new StringBuilder () ;

		String driver = "org.mariadb.jdbc.Driver";
		Class.forName(driver);
		
		System.out.println("La classe " + driver + " e' nel cp");

		// Connessione JDBC e invio credenziali
		String url = "jdbc:mariadb://centauri.proximainformatica.com:193/academyfs07";
		Connection con = DriverManager.getConnection(url, "acfs07", "acfs07");

		System.out.println("sono riuscito a connettermi al database urs: " + url);

		Statement cmd = con.createStatement();
		String query = "select * from messages;";
		ResultSet res = cmd.executeQuery(query);
		
        System.out.println("DEBUG result set fetch size: " + res.getFetchSize());
        
		while (res.next()) {
			sb.append(res.getString(1));
			sb.append(" - ");
			sb.append(res.getString(2));
			sb.append("\n");
		}
		
		res.close();
		cmd.close();
		
		System.out.println("doGet - END: " + sb.toString ());
		return sb.toString () ;
	}
	
	private void testProperties() throws IOException {
		System.out.println(PropertiesManagerSingleton.getInstance().getProperty("database.mysql.host"));
	}

}