package com.example.carrental.controller;

import com.example.carrental.model.Registration;
import com.example.carrental.service.Loginservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;

@Controller
@SessionAttributes("registrations")
public class LoginController {
    @Autowired
    Loginservice loginservice;
    RestTemplate restTemplate;
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
@RequestMapping(value = "/validatelogin", method =RequestMethod.POST)
    public ModelAndView validatelogin(@ModelAttribute Registration registration ){
    System.out.println(registration.getUserName()+registration.getPassword());
    Boolean validation = loginservice.validatelogin(registration);
    System.out.println(validation);
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
