package pl.coderslab.dawidm94.adminPanel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.Exercise;

@WebServlet("/panel/exercises/delete")
public class ExercisesDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int exerciseId = Integer.parseInt(request.getParameter("id"));
		Exercise exercise = Exercise.loadById(exerciseId);
		request.setAttribute("exercise", exercise);
		getServletContext().getRequestDispatcher("/delete_exercise.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int exerciseId = Integer.parseInt(request.getParameter("exerciseId"));
		Exercise.deleteById(exerciseId);
		response.sendRedirect(request.getContextPath() + "/panel/exercises");
	}

}
