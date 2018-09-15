package com.example.carrental.controller;

import com.example.carrental.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ViewsController {
    @Autowired
    RestTemplate restTemplate;
    @RequestMapping(value = "/views")
    public ModelAndView viewbooking(){
       ModelAndView modelAndView=new ModelAndView();
       modelAndView.setViewName("views");
       return modelAndView;
    }
@RequestMapping(value = "/traveldetails")
    public ModelAndView bookingdetails(@ModelAttribute TravelInfo travelInfo ){
        ModelAndView modelAndView= new ModelAndView("views");
        ResponseEntity<CarInfo[]> responseEntity= restTemplate.getForEntity("http://localhost:8080/cars", CarInfo[].class);
        int statusCode= responseEntity.getStatusCodeValue();
        if(statusCode >=200 && statusCode<=299){
            CarInfo[] carInfo=responseEntity.getBody();
//            List<TravelInfo> travelInfos=new ArrayList<TravelInfo>();

            modelAndView.addObject("carinfoArray",carInfo );
            modelAndView.addObject("pickuploc",travelInfo.getPickuplocation());
            modelAndView.addObject("dropofloc", travelInfo.getDropofflocation());
            modelAndView.addObject("pickupday",travelInfo.getPickupDate());
            modelAndView.addObject("dropoffday",travelInfo.getDropOffDate());
            modelAndView.addObject("age",travelInfo.getAge());
        }else{
    System.out.println(travelInfo.getPickupDate());
            modelAndView.addObject("Server is temporarily down");
        }
        return modelAndView;
    }
@RequestMapping(value = "/paymentinfo")
public ModelAndView paymentInfo(@ModelAttribute CarInfo carInfo, @ModelAttribute TravelInfo travelInfo){

    ModelAndView modelAndView= new ModelAndView("payment");
    modelAndView.addObject("pickuploc",travelInfo.getPickuplocation());
    modelAndView.addObject("dropofloc", travelInfo.getDropofflocation());
    modelAndView.addObject("pickupday",travelInfo.getPickupDate());
    modelAndView.addObject("dropoffday",travelInfo.getDropOffDate());
    modelAndView.addObject("age",travelInfo.getAge());
    modelAndView.addObject("cartype",carInfo.getCarType());
    modelAndView.addObject("carname", carInfo.getCarName());
    modelAndView.addObject("passangercap",carInfo.getPassengerCap());
    modelAndView.addObject("geartype", carInfo.getGearType());
    modelAndView.addObject("caramount",carInfo.getCaramount());

    return modelAndView;

}

@RequestMapping(value = "/confirmbooking", method =RequestMethod.POST)
public  ModelAndView confirmBooking(@ModelAttribute Userdata  userdata, @ModelAttribute PaymentInfo paymentInfo){

    System.out.println(userdata.caramount);
        ModelAndView modelAndView=new ModelAndView("booking");
    ResponseEntity<PaymentInfo> responseEntity=
            restTemplate.postForEntity("http://localhost:8080/payments", paymentInfo,PaymentInfo.class);
    int statusCode= responseEntity.getStatusCodeValue();
    if(statusCode >=200 && statusCode<=299){
        System.out.println("Payment details uploaded succesfully ");
    }else {
        System.out.println("internal server error");
    }
    ResponseEntity<Userdata> responseEntity1=
            restTemplate.postForEntity("http://localhost:8080/travelinfo", userdata,Userdata.class);
    int statusCode1= responseEntity1.getStatusCodeValue();
    if(statusCode1 >=200 && statusCode1<=299){
        System.out.println(" reservation details uploaded succesfully ");
    }else {
        System.out.println("internal server error");
    }

    modelAndView.addObject("dropofloc", userdata.getDropofflocation());
    modelAndView.addObject("pickupday",userdata.getPickupDate());
    modelAndView.addObject("dropoffday",userdata.getDropOffDate());
    modelAndView.addObject("age",userdata.getAge());
    modelAndView.addObject("cartype",userdata.getCarType());
    modelAndView.addObject("caramount",userdata.getCaramount());
    modelAndView.addObject("username",paymentInfo.getUserName());


    System.out.println(userdata.caramount + userdata.dropOffDate+ userdata.age);
        return modelAndView;
}
  public  ModelAndView viewBookings(){
return  new ModelAndView();
  }
}
