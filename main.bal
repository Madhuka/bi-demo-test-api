import ballerina/http;
import ballerina/log;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /testdemo on httpDefaultListener {
    resource function get greeting(string name) returns error|json|http:InternalServerError {
        do {
            log:printInfo("Testdemo is called");
            return "Hello Demo Test!!" + name;
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
