import impls2.HelloWorldAlgorithm2;

module com.service.provider2 {
    requires com.service.interfaces;
    exports impls2 to com.service.locator;
    provides algorithms.Algorithm with HelloWorldAlgorithm2;
}
