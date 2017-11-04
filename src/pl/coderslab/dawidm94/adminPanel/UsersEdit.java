package pl.coderslab.dawidm94.adminPanel;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.User;
import pl.coderslab.dawidm94.model.UserGroup;


@WebServlet("/panel/users/edit")
public class UsersEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = User.loadById(userId);
		List<UserGroup> userGroups = UserGroup.loadAll();
		request.setAttribute("userGroups", userGroups);
		request.setAttribute("user", user);
		getServletContext().getRequestDispatcher("/edit_user.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String newUserName = request.getParameter("userName");
		String newUserEmail = request.getParameter("userEmail");
		String newUserPassword = request.getParameter("userPassword");
		int newPersonGroupId = Integer.parseInt(request.getParameter("userGroupId"));
		int userId = Integer.parseInt(request.getParameter("userId"));
		User user = User.loadById(userId);
		user.setUsername(newUserName);
		user.setEmail(newUserEmail);
		user.setPassword(newUserPassword);
		user.setPersonGroupId(newPersonGroupId);
		user.saveToDB();
		response.sendRedirect(request.getContextPath() + "/panel/users");
		}catch(NumberFormatException e) {
			response.getWriter().append("Select user group!!");
		}
	}

}
