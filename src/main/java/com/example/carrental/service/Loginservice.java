package com.example.carrental.service;

import com.example.carrental.model.Registration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class Loginservice {

    @Autowired
    RestTemplate restTemplate;
    public Boolean validatelogin(Registration registration){

        ResponseEntity<Registration> responseEntity=restTemplate.postForEntity("http://localhost:8080/user", registration, Registration.class);

        return (registration.getUserName().equals(responseEntity.getBody().getUserName()) && registration.getPassword().equals(responseEntity.getBody().getPassword()));

    }
}
