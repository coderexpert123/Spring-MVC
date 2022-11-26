package mynotes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mynotes.entities.Notes;

@Controller
public class HomeController {
	@RequestMapping("/home")
	public String home(Model m) {
		String str = "home";
		m.addAttribute("str", str);

		return "home";

	}

	@RequestMapping("/add")
	public String addTodo(Model m) {
		Notes notes = new Notes();

		m.addAttribute("str", "add");
		m.addAttribute("todo", notes);

		return "home";

	}

}
