package impls2;

import algorithms.Algorithm;

public class HelloWorldAlgorithm2 implements Algorithm<String> {

    @Override
    public String apply() {
        return "Hello World from Service Provider 2!";
    }
}
