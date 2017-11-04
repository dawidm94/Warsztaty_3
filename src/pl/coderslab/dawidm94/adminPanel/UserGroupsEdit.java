package pl.coderslab.dawidm94.adminPanel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.UserGroup;


@WebServlet("/panel/usergroups/edit")
public class UserGroupsEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int groupId = Integer.parseInt(request.getParameter("id"));
		UserGroup userGroup = UserGroup.loadById(groupId);
		request.setAttribute("userGroup", userGroup);
		getServletContext().getRequestDispatcher("/edit_usergroup.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newGroupName = request.getParameter("groupName");
		int groupId = Integer.parseInt(request.getParameter("groupId"));
		UserGroup userGroup = UserGroup.loadById(groupId);
		userGroup.setName(newGroupName);
		userGroup.saveToDB();
		response.sendRedirect(request.getContextPath() + "/panel/usergroups");
	}

}
