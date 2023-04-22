package techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import techorda.db.DBConnection;
import techorda.entity.Users;

import java.io.IOException;

@WebServlet(value = "/sign")
public class SignInServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Users user = null;

        if(DBConnection.getUser(email, password) != null){

            user = DBConnection.getUser(email, password);

            request.setAttribute("user", user);
            request.getRequestDispatcher("/userprofile.jsp").forward(request, response);

        }else{

            response.sendRedirect("loginerror.jsp");

        }
    }
}
