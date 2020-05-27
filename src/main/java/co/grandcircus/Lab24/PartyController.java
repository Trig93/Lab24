package co.grandcircus.Lab24;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.Lab24.dao.PartyOptionRepo;
import co.grandcircus.Lab24.dao.PartyRepo;
import co.grandcircus.Lab24.entity.PartyOption;

@Controller
public class PartyController {
	
	@Autowired
	private PartyRepo partyRepository;
	@Autowired
	private PartyOptionRepo partyOptionRepository;
	
	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("listofparties", partyRepository.findAll(Sort.by("name")));
		return "home";
	}
	
	@RequestMapping("/review")
	public String review(Model model) {
		model.addAttribute("listofpartyoptions", partyOptionRepository.findAll(Sort.by("name")));
		return "review";
	}
	
	@RequestMapping("/vote")
	public String vote(Model model) {
		model.addAttribute("listofpartyoptions", partyOptionRepository.findAll(Sort.by("name")));
		return "vote";
	}
		
	@RequestMapping("/add-vote")
	public String showAddVote(@RequestParam Long id) {
		partyOptionRepository.addVote(id);
		return "redirect:/vote";
	}
	
	@RequestMapping("/submit-add-option")
	public String submitAddOptionForm(@RequestParam("name") String name, @RequestParam("description") String description) {
		PartyOption partyoption = new PartyOption();
		partyoption.setName(name);
		partyoption.setDescription(description);
		partyOptionRepository.save(partyoption);
		return "redirect:/vote";
	}
	
	

}
