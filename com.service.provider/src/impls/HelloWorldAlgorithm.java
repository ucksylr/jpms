package impls;

import algorithms.Algorithm;

public class HelloWorldAlgorithm implements Algorithm<String> {

    @Override
    public String apply() {
        return "Hello World from Service Provider 1!";
    }
}
