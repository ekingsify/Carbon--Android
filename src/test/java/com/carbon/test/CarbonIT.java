package com.carbon.test;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"com.carbon.test"},
        features = {"src/test/resources/features"}
)
public class CarbonIT {
}
