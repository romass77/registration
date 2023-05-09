package lt.bit.registration.controllers;

import lt.bit.registration.dao.RegisterDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("register")

public class RegisterFormController {
    
     @Autowired
    private RegisterDAO registerDAO;

    @GetMapping
    public String index() {
        return "register";
    }
    
    public ModelAndView sarasas() {
        ModelAndView mav = new ModelAndView("Form");
        mav.addObject("list", registerDAO.findAll());
        return mav;
    }
}
