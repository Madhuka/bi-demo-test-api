import ballerina/lang.runtime;
import ballerina/log;
import ballerina/time;

public function main() returns error? {
    // Get start time
    time:Utc startTime = time:utcNow();
    int startSec = startTime[0];
    decimal startNano = startTime[1];
    log:printInfo("🟢 Start time (sec): " + startSec.toString());

    // Simulate task - sleep for 1 second
    runtime:sleep(1.0);

    // Get end time
    time:Utc endTime = time:utcNow();
    int endSec = endTime[0];
    decimal endNano = endTime[1];
    log:printInfo("✅ End time (sec): " + endSec.toString());

    // Calculate duration in milliseconds
    decimal totalStartTime = <
    decimal>
    startSec + startNano;
    decimal totalEndTime = <
    decimal>
    endSec + endNano;
    decimal durationSeconds = totalEndTime - totalStartTime;
    int durationMs = <
    int>
    (durationSeconds * 1000);

    log:printInfo("⏱️ Duration: " + durationMs.toString() + " ms");
}
