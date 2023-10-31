package br.com.lux.model;

public class Car {
    private String id;
    private String name;
    private String motor;
    private String cil;
    private String acel;
    private String hp;
    private String torque;
    private String speed;
    private String doors;
    private String seats;
    private String val;
    private String price;
    private String link;
    private String title;

    public Car(String id, String name, String motor, String cil, String acel, String hp, String torque, String speed, String doors, String seats, String val, String price, String link, String title) {
        this.id = id;
        this.name = name;
        this.motor = motor;
        this.cil = cil;
        this.acel = acel;
        this.hp = hp;
        this.torque = torque;
        this.speed = speed;
        this.doors = doors;
        this.seats = seats;
        this.val = val;
        this.price = price;
        this.link = link;
        this.title = title;
    }

    public Car(String name) { this.name = name;}


    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getMotor() {
        return motor;
    }

    public String getCil() {
        return cil;
    }

    public String getAcel() {
        return acel;
    }

    public String getHp() {
        return hp;
    }

    public String getTorque() {
        return torque;
    }

    public String getSpeed() {
        return speed;
    }

    public String getDoors() {
        return doors;
    }

    public String getSeats() {
        return seats;
    }

    public String getVal() {
        return val;
    }

    public String getPrice() {
        return price;
    }

    public String getLink() {
        return link;
    }

    public String getTitle() {
        return title;
    }
}