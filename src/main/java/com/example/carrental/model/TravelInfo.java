package com.example.carrental.model;

public class TravelInfo {

    public String location;
    public String pickupData;
    public String dropOffDate;
    public int age;


    public TravelInfo(String location, String pickupData, String dropOffDate, int age) {
        this.location = location;
        this.pickupData = pickupData;
        this.dropOffDate = dropOffDate;
        this.age = age;
    }

    public TravelInfo() {
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPickupData() {
        return pickupData;
    }

    public void setPickupData(String pickupData) {
        this.pickupData = pickupData;
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
