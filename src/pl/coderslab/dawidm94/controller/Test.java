package pl.coderslab.dawidm94.controller;

import java.util.List;

import pl.coderslab.dawidm94.model.Solution;

public class Test {

	public static void main(String[] args) {
		List<Solution> solutions = Solution.loadAll();
		for (Solution sol : solutions) {
			System.out.println(sol);
		}

	}

}
