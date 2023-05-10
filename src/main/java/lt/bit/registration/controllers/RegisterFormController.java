package lt.bit.registration.controllers;

import static com.fasterxml.jackson.databind.util.ClassUtil.name;
import java.text.ParseException;
import java.util.Optional;
import lt.bit.registration.dao.RegisterDAO;
import lt.bit.registration.data.Form;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    @GetMapping("users_list")
    public ModelAndView sarasas() {
        ModelAndView mav = new ModelAndView("users");
        mav.addObject("list", registerDAO.findAll());
        return mav;
    }

    @GetMapping("edit")
    public ModelAndView edit(@RequestParam(value = "id", required = false) Integer id) {
        ModelAndView mav;
        if (id == null) {
            mav = new ModelAndView("register");
        } else {
            Optional<Form> oForm = registerDAO.findById(id);
            if (oForm.isPresent()) {
                mav = new ModelAndView("register");
                mav.addObject("value", oForm.get());
            } else {
                mav = sarasas();
            }
        }
        return mav;
    }
    @PostMapping("save")
    @Transactional
    public ModelAndView save(
            @RequestParam(value = "id", required = false) Integer id,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("type") String type
    ) {
        if (id == null) {
            Form c = new Form();
            c.setName(name);
            c.setEmail(email);
            c.setPassword(password);
            c.setType(type);
            registerDAO.save(c);
        } else {
            Optional<Form> oForm = registerDAO.findById(id);
            if (oForm.isPresent()) {
                Form c = oForm.get();
                c.setName(name);
                c.setEmail(email);
                c.setPassword(password);
                c.setType(type);
                registerDAO.save(c);
            }
        }
        return sarasas();
    }

}
