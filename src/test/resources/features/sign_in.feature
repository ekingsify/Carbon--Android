Feature: Sign in

  Scenario: Display error when no sign in data is entered
    Given sign in fields are left blank
    When I click on Sign in button
    Then the following response is displayed:
      | error.phoneNumber | Input your phone number |
      | error.pin         | Input PIN               |

  Scenario: Display error when phone number is entered but pin is not entered
    Given I enter the following data:
      | phoneNumber | 08990001100 |
    When I click on Sign in button
    Then the following response is displayed:
      | error.pin | Input PIN |

  Scenario: Display error when pin is entered but phone number is not entered
    Given I enter the following data:
      | pin | 1234 |
    When I click on Sign in button
    Then the following response is displayed:
      | error.phoneNumber | Input phone number |

  Scenario: An error response is returned for an invalid data
    Given I have the following data in the system:
      | phone_number           | pin             |
      | encrypted(08990001100) | encrypted(1234) |
    When I send the following request:
      | phoneNumber | 08990001100 |
      | pin         | 1111        |
    Then the following response is returned:
      | error.msg | Invalid phone number of pin |


