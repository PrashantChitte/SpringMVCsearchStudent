package com.nareshit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nareshit.dto.SearchParams;
import com.nareshit.dto.SearchResults;
import com.nareshit.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "searchStudents", method = RequestMethod.GET)
	public String showSearchStudentsPage() {
		return "searchStudents";
	}

	@RequestMapping(value = "addStudents", method = RequestMethod.GET)
	public String addStudents() {
		return "addStudent";
	}

	@RequestMapping(value = "searchStudents", method = RequestMethod.POST)
	public ModelAndView searchStudents(@RequestParam("studentId") Integer studentId, @RequestParam("name") String name,
			@RequestParam("course") String course, @RequestParam("mobile") String mobile) {
		SearchParams searchParams = new SearchParams();
		searchParams.setStudentId(studentId);
		searchParams.setName(name);
		searchParams.setMobile(mobile);
		searchParams.setCourse(course);

		List<SearchResults> searchResultsList = studentService.searchStudents(searchParams);
		ModelAndView modelAndView = new ModelAndView("searchResults");
		modelAndView.addObject("searchResultsList", searchResultsList);

		return modelAndView;
	}
}
