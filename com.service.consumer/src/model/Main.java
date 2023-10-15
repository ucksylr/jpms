package model;

import services.AlgorithmServices;

public class Main {
    public static void main(String[] args) {
        AlgorithmServices.getServices().forEach(e -> System.out.println(e.get().apply()));
    }
}