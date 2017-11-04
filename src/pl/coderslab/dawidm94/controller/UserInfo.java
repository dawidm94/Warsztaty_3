package pl.coderslab.dawidm94.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.Solution;
import pl.coderslab.dawidm94.model.User;


@WebServlet("/user")
public class UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		User user = User.loadById(id);
		request.setAttribute("user", user);
		List<Solution> solutions = Solution.loadAllNotEmptyByUserId(id);
		request.setAttribute("list", solutions);

		 getServletContext().getRequestDispatcher("/userInfo.jsp").forward(request, response);
			}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
