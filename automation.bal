import ballerina/log;

public function main() returns error? {
    do {
        log:printInfo("Automation task is trigged.");
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}
