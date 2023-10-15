package services;

import algorithms.Algorithm;

import java.util.List;
import java.util.ServiceLoader;

public class AlgorithmServices {
    public static List<ServiceLoader.Provider<Algorithm>> getServices() {
        return ServiceLoader.load(Algorithm.class).stream().toList();
    }
}
