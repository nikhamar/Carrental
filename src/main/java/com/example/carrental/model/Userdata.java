package com.example.carrental.model;

public class Userdata {

    public String pickuplocation;
    public String dropofflocation;
    public String pickupDate;
    public String dropOffDate;
    public int age;
    public String userName;
    public String carType;
    public int caramount;

    public Userdata(String pickuplocation, String dropofflocation, String pickupDate, String dropOffDate, int age, String userName, String carType, int caramount) {
        this.pickuplocation = pickuplocation;
        this.dropofflocation = dropofflocation;
        this.pickupDate = pickupDate;
        this.dropOffDate = dropOffDate;
        this.age = age;
        this.userName = userName;
        this.carType = carType;
        this.caramount = caramount;
    }

    public Userdata() {
    }

    public String getPickuplocation() {
        return pickuplocation;
    }

    public void setPickuplocation(String pickuplocation) {
        this.pickuplocation = pickuplocation;
    }

    public String getDropofflocation() {
        return dropofflocation;
    }

    public void setDropofflocation(String dropofflocation) {
        this.dropofflocation = dropofflocation;
    }

    public String getPickupDate() {
        return pickupDate;
    }

    public void setPickupDate(String pickupDate) {
        this.pickupDate = pickupDate;
    }

    public String getDropOffDate() {
        return dropOffDate;
    }

    public void setDropOffDate(String dropOffDate) {
        this.dropOffDate = dropOffDate;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public int getCaramount() {
        return caramount;
    }

    public void setCaramount(int caramount) {
        this.caramount = caramount;
    }
}
