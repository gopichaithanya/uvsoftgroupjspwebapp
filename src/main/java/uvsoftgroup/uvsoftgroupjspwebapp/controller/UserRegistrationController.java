package uvsoftgroup.uvsoftgroupjspwebapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import uvsoftgroup.uvsoftgroupjspwebapp.model.UserRegistration;
import uvsoftgroup.uvsoftgroupjspwebapp.service.UserRegistrationService;

@Controller
@RequestMapping("/userRegistration")
public class UserRegistrationController {
	@Autowired
    private UserRegistrationService userRegistrationService;
   
    @RequestMapping("/showUserRegistrations")
    public ModelAndView findAllUserRegistration() {
    	
    	List<UserRegistration> userRegistrations =userRegistrationService.findAllUserRegistration();
        Map<String, Object> params = new HashMap<>();
        params.put("userRegistrations", userRegistrations);
        return new ModelAndView("showUserRegistrations",params);
    	
    }
   
    @RequestMapping(path = "/add", method = RequestMethod.POST)
    public String saveCreateUserRegistration(@ModelAttribute("userRegistration") UserRegistration userRegistration) throws Exception {
    	userRegistrationService.saveUserRegistration(userRegistration);
        return "redirect:/userRegistration/showUserRegistrations";
    }

    @RequestMapping(path = "/updateUserRegistration/{id}", method = RequestMethod.GET)
    public ModelAndView editUserRegistrationInfo(@PathVariable(value = "id") long id,@ModelAttribute("userRegistration") UserRegistration userRegistration) throws Exception {
    	
    	ModelAndView model = new ModelAndView();
    	UserRegistration userRegistrationExisting=userRegistrationService.findUserRegistration(id);
    	
    	if(userRegistrationExisting.getUserRegistrationId()!=null){
    		userRegistration.setUserRegistrationId(userRegistrationExisting.getUserRegistrationId());
    		userRegistration.setUserAddressId(userRegistrationExisting.getUserAddressId());
    		userRegistration.setUserRegistrationFName(userRegistrationExisting.getUserRegistrationFName());
    		userRegistration.setUserRegistrationMName(userRegistrationExisting.getUserRegistrationMName());
    		userRegistration.setUserRegistrationLName(userRegistrationExisting.getUserRegistrationLName());
    		userRegistration.setUserRegistrationfullName(userRegistrationExisting.getUserRegistrationfullName());
    		userRegistration.setUserRegistrationName(userRegistrationExisting.getUserRegistrationName());
    		userRegistration.setUserRegistrationPassword(userRegistrationExisting.getUserRegistrationPassword());
    		userRegistration.setUserRegistrationCrDate(userRegistrationExisting.getUserRegistrationCrDate());
    		userRegistration.setUserRegistrationLDate(userRegistrationExisting.getUserRegistrationLDate());
        	 model.addObject("editUserRegistration", userRegistration);
        	 model.setViewName("editUserRegistration");	
    	}
    	else{
    		model.addObject("editUserRegistration", userRegistration);
       	    model.setViewName("editUserRegistration");	
    	}
    	
    	 return model;
    }

    @RequestMapping(path = "/delete/{id}", method = RequestMethod.GET)
    public String deleteUserRegistration(@PathVariable(name = "id") long id) {
    	System.out.println("Delete Record Id:"+id);
    	userRegistrationService.deleteUserRegistration(id);
        return "redirect:/userRegistration/showUserRegistrations";
    }
    
    @ModelAttribute("pCount")
    public List<String> pConter(){
    	int total=20;
    	List<String> pCount=new ArrayList<>();
    	
    	int count=userRegistrationService.findAllUserRegistration().size();
    	int result=((count/total)+(count%total));
    	for(int k=0;k<result;k++){
    		pCount.add(new Integer(k).toString());
    	}
    	return pCount;
    }
    
}
