package loginPageJspServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/hello")
public class LoginForm extends HttpServlet {

	private static final String Email = "rajumoktan985@gmail.com";
	private static final String Password = "123456";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String email = req.getParameter("name");
		String password = req.getParameter("psw");

		if(Email.equals(email)&& Password.equals(password)) {
			resp.getWriter().println("Your username and password is correct congratulations");
		}else {
			resp.getWriter().println("Your username and password is incorrect try again");
		}

	}

}
