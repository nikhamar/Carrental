package com.example.carrental.controller;

import com.example.carrental.model.CarInfo;
import com.example.carrental.model.TravelInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;


@Controller
public class HomeController {

    @Autowired
    RestTemplate restTemplate;


    @RequestMapping(value = "/")
    public ModelAndView viewHomePage() {

        ModelAndView modelAndView = new ModelAndView("home1");
        return modelAndView;

    }

    @RequestMapping(value = "/Loginhome")
    public ModelAndView viewLoginHomePage() {

        ModelAndView modelAndView = new ModelAndView("loginhome");
        return modelAndView;

    }

    @RequestMapping(value = "/bookingdetails", method = RequestMethod.POST)
            public ModelAndView traveldetails( @ModelAttribute TravelInfo travelInfo, CarInfo carInfo) {

        ModelAndView modelAndView = new ModelAndView();
        ResponseEntity<TravelInfo[]> responseEntity=restTemplate.postForEntity("",travelInfo, TravelInfo[].class);
        int statusCode= responseEntity.getStatusCodeValue();
        if(statusCode >=200 && statusCode<=299){
            System.out.println("travel details uploaded successfully");
        }else{
            System.out.println("internal server error");
            modelAndView.setViewName("home");
            return modelAndView;
        }
       return modelAndView;
    }
}