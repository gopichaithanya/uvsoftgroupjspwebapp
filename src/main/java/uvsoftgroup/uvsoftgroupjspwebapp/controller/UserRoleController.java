package uvsoftgroup.uvsoftgroupjspwebapp.controller;

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

import uvsoftgroup.uvsoftgroupjspwebapp.model.UserRole;
import uvsoftgroup.uvsoftgroupjspwebapp.service.UserRoleService;

@Controller
@RequestMapping("/userRole")
public class UserRoleController {
	
	@Autowired
    private UserRoleService userRoleService;
      
    @RequestMapping("/showUserRoles")
    public ModelAndView findAllUserRole() {
    	List<UserRole> userRoles =userRoleService.findAllUserRole();
        Map<String, Object> params = new HashMap<>();
        params.put("userRoles", userRoles);
        return new ModelAndView("showUserRoles",params);
    	
    }
   
    @RequestMapping(path = "/add", method = RequestMethod.POST)
    public String saveCreateUserRole(@ModelAttribute("userRole") UserRole userRole) throws Exception {
    	userRoleService.saveUserRole(userRole);
        return "redirect:/userRole/showUserRoles";
    }

    @RequestMapping(path = "/updateUserRole/{id}", method = RequestMethod.GET)
    public ModelAndView editUserRoleInfo(@PathVariable(value = "id") long id,@ModelAttribute("userRole") UserRole userRole) throws Exception {
    	
    	ModelAndView model = new ModelAndView();
    	UserRole userRoleExisting=userRoleService.findUserRole(id);
    	
    	if(userRoleExisting.getUserRoleId()!=null){
    		userRole.setUserRoleId(userRoleExisting.getUserRoleId());
    		userRole.setUserRoleName(userRoleExisting.getUserRoleName());
    		userRole.setUserRoleType(userRoleExisting.getUserRoleType());
    		userRole.setUserRoleDate(userRoleExisting.getUserRoleDate());
        	 model.addObject("editUserRole", userRole);
        	 model.setViewName("editUserRole");	
    	}
    	else{
    		model.addObject("editUserRole", userRole);
       	    model.setViewName("editUserRole");	
    	}
    	 return model;
    }

    @RequestMapping(path = "/delete/{id}", method = RequestMethod.GET)
    public String deleteUserRole(@PathVariable(name = "id") long id) {
    	userRoleService.deleteUserRole(id);
        return "redirect:/userRole/showUserRoles";
    }
    

}
