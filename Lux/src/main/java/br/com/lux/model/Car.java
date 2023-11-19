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
    private String image;
    private String title;
    private String page;

    public Car(String id, String name, String motor, String cil, String acel, String hp, String torque, String speed, String doors, String seats, String val, String price, String image, String title, String page) {
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
        this.image = image;
        this.title = title;
        this.page = page;
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

    public String getImage() {
        return image;
    }

    public String getTitle() {
        return title;
    }

    public String getPage() {
        return page;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setMotor(String motor) {
        this.motor = motor;
    }

    public void setCil(String cil) {
        this.cil = cil;
    }

    public void setAcel(String acel) {
        this.acel = acel;
    }

    public void setHp(String hp) {
        this.hp = hp;
    }

    public void setTorque(String torque) {
        this.torque = torque;
    }

    public void setSpeed(String speed) {
        this.speed = speed;
    }

    public void setDoors(String doors) {
        this.doors = doors;
    }

    public void setSeats(String seats) {
        this.seats = seats;
    }

    public void setVal(String val) {
        this.val = val;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setLink(String image) {
        this.image = image;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setPage(String page) {
        this.page = page;
    }
}