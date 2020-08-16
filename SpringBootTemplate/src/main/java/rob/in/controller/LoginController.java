package rob.in.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	private String nextView = null;

	@GetMapping("/")
	public String login(Model model) {
		nextView = "login";
		System.out.println("In Login page");
		return nextView;
	}

	@GetMapping("hello")
	public String helloPage(Model model) {
		nextView = "hello";
		System.out.println("In Hello page");
		return nextView;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showHomePage(Model model) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		username = (username == null ? "" : username);
		model.addAttribute("username", username);
		return "home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String showHomePagePost(ModelMap model) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		username = (username == null ? "" : username);
		model.addAttribute("username", username);
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showWelcomePage(ModelMap model, @RequestParam String username, @RequestParam String password) {

		return "welcome";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";// You can redirect wherever you want, but generally it's a good practice to
										// show login screen again.
	}

	
}
