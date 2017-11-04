package pl.coderslab.dawidm94.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.User;
import pl.coderslab.dawidm94.model.UserGroup;


@WebServlet("/usersbygroupid")
public class UsersByGroupId extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int groupId = Integer.parseInt(request.getParameter("id"));
		List<User> users = User.loadAllByGroupId(groupId);
		UserGroup groupName = UserGroup.loadById(groupId);
		request.setAttribute("group", groupName);
		request.setAttribute("users", users);
		 getServletContext().getRequestDispatcher("/usersbygroupid.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
