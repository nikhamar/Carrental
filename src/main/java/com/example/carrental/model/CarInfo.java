package com.example.carrental.model;

public class CarInfo {
    public String carType;
    public String carName;
    public String passengerCap;
    public String gearType;
    public int baggage;

    public CarInfo(String carType, String carName, String passengerCap, String gearType, int baggage) {
        this.carType = carType;
        this.carName = carName;
        this.passengerCap = passengerCap;
        this.gearType = gearType;
        this.baggage = baggage;
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

    public String getPassengerCap() {
        return passengerCap;
    }

    public void setPassengerCap(String passengerCap) {
        this.passengerCap = passengerCap;
    }

    public String getGearType() {
        return gearType;
    }

    public void setGearType(String gearType) {
        this.gearType = gearType;
    }

    public int getBaggage() {
        return baggage;
    }

    public void setBaggage(int baggage) {
        this.baggage = baggage;
    }
}
