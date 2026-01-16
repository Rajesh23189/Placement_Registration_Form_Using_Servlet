import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet("/register")
public class Register extends HttpServlet {

    public Register()
    {
        System.out.println("Register From Start");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

         //get Attribute in Form
         String   fname  = request.getParameter("fname");
         String  lname  = request.getParameter("lname");
         String   email  = request.getParameter("email");
         String  deperment  = request.getParameter("dept");
         String  year =  request.getParameter("year");
         String skills = request.getParameter("skills");


        System.out.println(fname);
        System.out.println(lname);
        System.out.println(email);
        System.out.println(deperment);
        System.out.println(year);
        System.out.println(skills);

        //RequestDispatcher requestDispatcher = request.getRequestDispatcher()

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            final String URL  = "jdbc:mysql://localhost:3306/ Register";
            final String USERNAME = "root";
            final String PASSWORD = "Rajesh@289";
            try
            {
                Connection connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
                PreparedStatement preparedStatement = connection.prepareStatement(
                        "INSERT INTO RegistrationTable( fname,lname,email,deperment,year,skills) VALUES(?,?,?,?,?,?)");
                preparedStatement.setString(1,fname);
                preparedStatement.setString(2,lname);
                preparedStatement.setString(3,email);
                preparedStatement.setString(4,deperment);
                preparedStatement.setString(5,year);
                preparedStatement.setString(6,skills);
                preparedStatement.executeUpdate();
                preparedStatement.close();

                System.out.println("Insert In DataBase Successfully");

            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }

        }
        catch (ClassNotFoundException e)
        {
            throw new RuntimeException(e);
        }


        response.sendRedirect("/RegisterWebApplication/index.jsp");


    }
}
