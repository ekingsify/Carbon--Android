Feature: Airtime recharge

  Scenario: An error response is returned when no phone number is entered
    Given I have the following data in the system:
      | phone_number           | pin             |
      | encrypted(08990001100) | encrypted(1234) |
    When I send the following request:
      | phoneNumber | null |
    Then the following response is returned:
      | error.msg | Input your phone number|
