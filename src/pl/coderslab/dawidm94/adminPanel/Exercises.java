package pl.coderslab.dawidm94.adminPanel;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.Exercise;

@WebServlet("/panel/exercises")
public class Exercises extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Exercise> exercises = Exercise.loadAll();
		request.setAttribute("exercises", exercises);
		getServletContext().getRequestDispatcher("/panelExercises.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// adding exercise from add_exercise.jsp
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		Exercise exercise = new Exercise(title, description);
		exercise.saveToDB();
		doGet(request, response);
	}

}
