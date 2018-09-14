package com.example.carrental.model;

public class TravelInfo {

    public String pickuplocation;
    public String dropofflocation;
    public String pickupDate;
    public String dropOffDate;
    public int age;

    public TravelInfo() {
    }

    public TravelInfo(String pickuplocation, String dropofflocation, String pickupDate, String dropOffDate, int age) {
        this.pickuplocation = pickuplocation;
        this.dropofflocation = dropofflocation;
        this.pickupDate = pickupDate;
        this.dropOffDate = dropOffDate;
        this.age = age;
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
}