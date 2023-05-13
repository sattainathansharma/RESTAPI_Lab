package com.greatlearning.studentManagement.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.greatlearning.studentManagement.entity.Student;
import com.greatlearning.studentManagement.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/list")
	public String getStudents(Model theModel)
	{
		List <Student> students = studentService.findAll();
		theModel.addAttribute("Students", students);
		return "list-Students";
	}
	
	@RequestMapping("/showFormForAdd")
	public String showFormForAddingStudents(Model theModel) 
	{
		Student student = new Student();
		theModel.addAttribute("Student", student);
		return "Student-form";
	}
	
	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("studentId") int theId, Model theModel) 
	{
		Student student = studentService.findById(theId);
		theModel.addAttribute("Student", student);
		return "Student-form";
	}
	
	@PostMapping("/save")
	public String saveStudent(@RequestParam("id") int id,
							  @RequestParam("firstName") String fname,
							  @RequestParam("lastName") String lname,
							  @RequestParam("course") String course,
							  @RequestParam("country") String country) 
	{
		Student theStudent;
		if(id!=0) {
			theStudent = studentService.findById(id);
			theStudent.setFirstName(fname);
			theStudent.setLastName(lname);
			theStudent.setCourse(course);
			theStudent.setCountry(country);
		}
		else
		{
			theStudent = new Student(fname,lname,course,country);
		}
		studentService.save(theStudent);
		return "redirect:/student/list";
	}
	
	@DeleteMapping("/delete")
	public String deleteStudent(@RequestParam("studentId") int theId, Model theModel) 
	{
		studentService.deleteById(theId);
		return "redirect:/student/list";
	}
	
	@RequestMapping(value = "/403")
	public ModelAndView accessDenied(Principal user) 
	{
		ModelAndView model = new ModelAndView();
		if(user!=null) {
			model.addObject("msg", "Hi" + user.getName()+", you do not have permission to access this page!");
		} else {
			model.addObject("msg","You do not have permission to access this page!");
		}
		
		model.setViewName("403");
		return model;
	}
	
	

}
