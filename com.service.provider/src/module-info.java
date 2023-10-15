import impls.HelloWorldAlgorithm;

module com.service.provider {
    exports impls to com.service.locator;
    requires com.service.interfaces;
    provides algorithms.Algorithm with HelloWorldAlgorithm;
}