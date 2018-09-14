package com.example.carrental.model;

public class CarInfo {
    public String carType;
    public String carName;
    public int passengerCap;
    public String gearType;
    public int caramount;

    public CarInfo(String carType, String carName, int passengerCap, String gearType, int caramount) {
        this.carType = carType;
        this.carName = carName;
        this.passengerCap = passengerCap;
        this.gearType = gearType;
        this.caramount = caramount;
    }

    public CarInfo() {
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public int getPassengerCap() {
        return passengerCap;
    }

    public void setPassengerCap(int passengerCap) {
        this.passengerCap = passengerCap;
    }

    public String getGearType() {
        return gearType;
    }

    public void setGearType(String gearType) {
        this.gearType = gearType;
    }

    public int getCaramount() {
        return caramount;
    }

    public void setCaramount(int caramount) {
        this.caramount = caramount;
    }
}