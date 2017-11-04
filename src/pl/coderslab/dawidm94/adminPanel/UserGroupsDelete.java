package pl.coderslab.dawidm94.adminPanel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.UserGroup;


@WebServlet("/panel/usergroups/delete")
public class UserGroupsDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int groupId = Integer.parseInt(request.getParameter("id"));
		UserGroup userGroup = UserGroup.loadById(groupId);
		request.setAttribute("userGroup", userGroup);
		getServletContext().getRequestDispatcher("/delete_usergroup.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int groupId = Integer.parseInt(request.getParameter("groupId"));
		UserGroup.deleteById(groupId);
		response.sendRedirect(request.getContextPath() + "/panel/usergroups");
	}

}
