package br.com.lux.model;

public class Car {

    private String id;
    private String name;
    private String Txt;
    private Double Price;
    private int hp;

    public Car(String id, String name) {
        this.id = id;
        this.name = name;
        this.Txt = Txt;
        this.hp = hp;
        this.Price = Price;
    }

    public Car()
    {}


    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

}