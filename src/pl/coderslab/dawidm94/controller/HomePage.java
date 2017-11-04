package pl.coderslab.dawidm94.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.Solution;


@WebServlet(urlPatterns = "/index", initParams = 
			{@WebInitParam(name = "number-solutions", value="5")} )
public class HomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int numberSolution = Integer.parseInt(getInitParameter("number-solutions"));
		
		List<Solution> sol2 = Solution.loadAll(numberSolution);
		request.setAttribute("list", sol2);
		int num = 10000;
		request.setAttribute("number", num);
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
