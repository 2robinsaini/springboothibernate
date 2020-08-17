package rob.in.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import rob.in.model.Address;
import rob.in.model.Student;
import rob.in.service.StudentService;

@Controller
public class StudentController {

	private String nextView = null;

	@Autowired
	private StudentService stdService;

	@GetMapping("/students")
	public String getAllStudents(Model model) {
		nextView = "students";
		List<Student> allStudent = stdService.getAllStudents();
		model.addAttribute("studentList", allStudent);
		return nextView;
	}

	@GetMapping("/addStudent")
	public String addStudent(ModelMap map) {
		nextView = "addNewStudent";
		Student student = new Student();
		Address address = new Address();
		map.addAttribute("student", student);
		map.addAttribute("address", address);
		return nextView;
	}

	@PostMapping("/addNewStd")
	public String addNewStd(@Valid @ModelAttribute("student") Student student,BindingResult br,
			Model model) {

		
		System.out.println("************** " + student);
		
		
		if (br.hasErrors()) {
			nextView = "addNewStudent";
			Address address = new Address();
			model.addAttribute("student", student);
			model.addAttribute("address", address);
			model.addAttribute("message", "Please Provide Proper Data!!");
			return nextView;
		} else {
			nextView = "students";
			stdService.addStudent(student);
			List<Student> allStudent = stdService.getAllStudents();
			model.addAttribute("studentList", allStudent);
			return nextView;
		}

	}

	@GetMapping("/showAddress")
	public String showAddressForID(Model model, @RequestParam("addId") String addId) {
		nextView = "address";
		Address add = stdService.getAddressFromAddId(addId);
		model.addAttribute("add", add);
		return nextView;
	}

	@GetMapping("/updateAddress")
	public String updateAddress(Model model, @RequestParam("addId") String addId) {
		nextView = "updateAddress";
		Address add = stdService.getAddressFromAddId(addId);
		model.addAttribute("add", add);
		Address address = new Address();
		model.addAttribute("address", address);
		return nextView;
	}

	@PostMapping("/updateStdAdd")
	public String updateStdAdd(Model model, @ModelAttribute("address") Address address) {

		System.out.println("AddId to be update: " + address.getId());
		System.out.println("City to be update: " + address.getCity());
		stdService.updateAddress(address);
		nextView = "address";
		Address add = stdService.getAddressFromAddId(address.getId().toString());
		model.addAttribute("add", add);
		return nextView;
	}

}
