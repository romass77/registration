
package lt.bit.registration.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("login")

public class LoginFormController {
     
    @GetMapping
    public String index() {
        return "login";
    }
    
    
}
