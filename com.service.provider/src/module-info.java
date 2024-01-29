import impls.HelloWorldAlgorithm;

module com.service.provider {
    requires com.service.interfaces;
    exports impls to com.service.locator;
    provides algorithms.Algorithm with HelloWorldAlgorithm;
}