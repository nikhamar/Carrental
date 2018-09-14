package com.example.carrental.controller;

import com.example.carrental.model.Registration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class RegistrationController {
@Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/Registration")
    public ModelAndView registration(){
        ModelAndView modelAndView= new ModelAndView("registration");
        return modelAndView;
    }
    @RequestMapping(value = "/Registrationdetails", method = RequestMethod.POST)
    public ModelAndView registerdetails(@Valid @ModelAttribute Registration registration, Errors errors)
    {

        if(errors.hasErrors()){

        ModelAndView modelAndView= new ModelAndView("registration");
        modelAndView.addObject("error", errors.getAllErrors());
        return modelAndView;
    }
        ModelAndView modelAndView= new ModelAndView();
        ResponseEntity<Registration[]> responseEntity=
                restTemplate.postForEntity("http://localhost:8080/users", registration,Registration[].class);

        int statusCode= responseEntity.getStatusCodeValue();

        if(statusCode >=200 && statusCode<=299){
            System.out.println("Registration details uploaded succesfully ");
            return  new ModelAndView("login");
        }else{
            System.out.println("internal server error");
            modelAndView.setViewName("home");
            return modelAndView;
        }

    }
}
