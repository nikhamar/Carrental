package com.example.carrental.model;

public class PaymentInfo {

    public String cardName;
    public int cardNum;
    public int cardMonth;
    public int cardYear;


    public PaymentInfo(String cardName, int cardNum, int cardMonth, int cardYear) {
        this.cardName = cardName;
        this.cardNum = cardNum;
        this.cardMonth = cardMonth;
        this.cardYear = cardYear;
    }

    public PaymentInfo() {
    }

    public String getCardName() {
        return cardName;
    }

    public void setCardName(String cardName) {
        this.cardName = cardName;
    }

    public int getCardNum() {
        return cardNum;
    }

    public void setCardNum(int cardNum) {
        this.cardNum = cardNum;
    }

    public int getCardMonth() {
        return cardMonth;
    }

    public void setCardMonth(int cardMonth) {
        this.cardMonth = cardMonth;
    }

    public int getCardYear() {
        return cardYear;
    }

    public void setCardYear(int cardYear) {
        this.cardYear = cardYear;
    }
}
