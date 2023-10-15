import impls2.HelloWorldAlgorithm2;

module com.service.provider2 {
    exports impls2 to com.service.locator;
    requires com.service.interfaces;
    provides algorithms.Algorithm with HelloWorldAlgorithm2;
}