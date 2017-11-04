package pl.coderslab.dawidm94.adminPanel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.User;

@WebServlet("/panel/users/delete")
public class UsersDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = User.loadById(userId);
		request.setAttribute("user", user);
		getServletContext().getRequestDispatcher("/delete_user.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
		User.deleteById(userId);
		response.sendRedirect(request.getContextPath() + "/panel/users");
	}

}
