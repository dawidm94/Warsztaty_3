package pl.coderslab.dawidm94.adminPanel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.coderslab.dawidm94.model.Exercise;

@WebServlet("/panel/exercises/edit")
public class ExercisesEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int exerciseId = Integer.parseInt(request.getParameter("id"));
		Exercise exercise = Exercise.loadById(exerciseId);
		request.setAttribute("exercise", exercise);
		getServletContext().getRequestDispatcher("/edit_exercise.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String newExerciseTitle = request.getParameter("title");
		String newExerciseDescription = request.getParameter("description");
		int exerciseId = Integer.parseInt(request.getParameter("exerciseId"));
		Exercise exercise = Exercise.loadById(exerciseId);
		exercise.setTitle(newExerciseTitle);
		exercise.setDescription(newExerciseDescription);
		exercise.saveToDB();
		response.sendRedirect(request.getContextPath() + "/panel/exercises");

	}

}
