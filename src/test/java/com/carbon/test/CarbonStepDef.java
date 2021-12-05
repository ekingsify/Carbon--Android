package com.carbon.test;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;

public class CarbonStepDef {

    @Given("^I send the following request:$")
    public void testSendRequest(DataTable dataTable) {

    }

    @And("^I receive a verification code ([0-9]+)$")
    public void iReceiveVerificationCode(String verificationCode) {

    }
}
