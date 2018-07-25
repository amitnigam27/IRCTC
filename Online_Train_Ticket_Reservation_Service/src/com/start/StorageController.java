package com.start;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("/store")
public class StorageController {
	
	@RequestMapping("/")
	public String welcomePage() {
		return "WelcomePage";
	}
	
	
@RequestMapping("/showForm")
	public String showForm(Model themodel) {

Storage theStorage=new Storage();

themodel.addAttribute("storage", theStorage);
//themodel.addAttribute("destination", theStorage);
	
	
	return "search-trains";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("storage") Storage theStorage) {
		
		System.out.println("Source is :" +theStorage.getSource() );
		System.out.println("Destination is :" +theStorage.getDestination());
		System.out.println("Date is: "+theStorage.getJdate());
	
//	String sourcei=request.getParameter("source");
//	String destinationi=request.getParameter("destination");
		
		return "train-confirmation";
	
	
}
}