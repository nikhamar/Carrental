package com.example.carrental.model;

import javax.validation.constraints.NotNull;

public class Registration {
    @NotNull(message = "First Name should not be null")
    public String firstName;
    @NotNull(message = "Last Name should not be null")
    public String lastName;

    public String gender;
    @NotNull(message = "Email should not be null")
    public String email;

    @NotNull
    public String userName;
    @NotNull
    public String password;


    public Registration(String firstName, String lastName, String gender, String email,
                        String userName, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.email = email;

        this.userName = userName;
        this.password = password;
    }

    public Registration() {
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
