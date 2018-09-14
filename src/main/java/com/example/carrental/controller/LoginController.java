package com.example.carrental.controller;

import com.example.carrental.model.Registration;
import com.example.carrental.service.Loginservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;

@Controller
@SessionAttributes("registrations")
public class LoginController {
    @Autowired
    Loginservice loginservice;

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject(new Registration());
        return modelAndView;
    }

//    @RequestMapping(value = "/Logindetails", method = RequestMethod.POST)
//    public ModelAndView logindetails(@ModelAttribute("registrations") Registration registration, Errors errors) {
//        if (errors.hasErrors()) {
//
//            ModelAndView modelAndView = new ModelAndView("login");
//            modelAndView.addObject("error", errors.getAllErrors());
//            return modelAndView;
//        }
//        ModelAndView modelAndView = new ModelAndView();
//        return modelAndView;
//    }
//}
@RequestMapping(value = "/validatelogin")
    public ModelAndView validatelogin(@ModelAttribute Registration registration){

    Boolean validation = loginservice.validatelogin(registration);
    if (validation.equals(true)) {
        return new ModelAndView("loginhome");
    }
    else
        {
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject("validationError", "Invalid Username or Password");
        return modelAndView;
        }
}
}
