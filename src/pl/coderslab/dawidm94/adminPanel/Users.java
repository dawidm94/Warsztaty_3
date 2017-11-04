package pl.coderslab.dawidm94.adminPanel;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.User;

@WebServlet("/panel/users")
public class Users extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> users = User.loadAll();
		request.setAttribute("users", users);
		getServletContext().getRequestDispatcher("/panelUsers.jsp").forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//adding user from add_user.jsp
				String userName = request.getParameter("userName");
				String userEmail = request.getParameter("userEmail");
				String userPassword = request.getParameter("userPassword");
				int groupId = Integer.parseInt(request.getParameter("userGroupId"));
				User newUser = new User(userName, userPassword, userEmail, groupId);
				newUser.saveToDB();
				doGet(request, response);
	}

}
