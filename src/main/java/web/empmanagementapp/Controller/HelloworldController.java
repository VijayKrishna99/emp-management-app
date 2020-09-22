package web.empmanagementapp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import javax.validation.Valid;

import web.empmanagementapp.Model.Employee;
import web.empmanagementapp.dao.EmployeeDAOImpl;

@Controller
@RequestMapping("/")
public class HelloworldController {
	
	public EmployeeDAOImpl getEmpdao() {
		return empdao;
	}

	@Autowired
	public void setEmpdao(EmployeeDAOImpl empdao) {
		this.empdao = empdao;
	}
	
	@Autowired
	private EmployeeDAOImpl empdao;
	
	@ModelAttribute()
	public void addmodel(Model model) {
		model.addAttribute("employee", new Employee());
		
	}
	

	@RequestMapping(method=RequestMethod.GET)
	public String welcome() {
		return "home";
	}
	
	@RequestMapping(value="getemplist", method=RequestMethod.GET)
	public ModelAndView emp() {
		ModelAndView view = new ModelAndView();
		view.setViewName("employees");
		List<Employee> list = empdao.listEmployees();
		view.addObject("userlist", list);
		return view;
	}
	
	
	
	@RequestMapping(value="editemp", method=RequestMethod.POST)
	public String emplist(@Valid @ModelAttribute("employeeedit") Employee emp, BindingResult bs) {
		
		if(bs.hasErrors()) {
			return "redirect:/getemplist";
		}
		else {
			empdao.updateEmployee(emp);
			return "redirect:/getemplist";
		}
	}
	
	@RequestMapping(value="addemp", method=RequestMethod.POST)
	public String addemp(@Valid @ModelAttribute("employee") Employee emp, BindingResult bs) {
		if(bs.hasErrors())
			return "addemp";
	
	else {
		empdao.addEmployee(emp);
		return "redirect:/getemplist";
	}
		}
	
	@RequestMapping(value="edit", method=RequestMethod.GET)
	public ModelAndView editemp(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("empedit");
		mv.addObject("employeeedit",empdao.getEmployeeById(id));
		return mv;
	}
	
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public String deleteemp(@RequestParam("id")int id) {
		 empdao.removeEmployee(id);
		return "redirect:/getemplist";
	}
	
	@RequestMapping(value="add", method=RequestMethod.GET)
	public String add() {
		
		return "addemp";
		
	}
	
}