Feature: Creating cars
	In order to create cars for owners
	As a user
	I want to be able to select an owner and do that

  Background:
    Given there is an owner named "Eddie Vader"
    And I am on the homepage
    When I follow "Eddie Vader"
    And I follow "New Car"

  Scenario: Creating a car
    When I fill in "Make" with "Proton"
    And I fill in "Model" with "Persona"
    And I fill in "Registration number" with "WNF1234"
    And I fill in "Hourly rate" with "4.00"
    And I press "Create Car"
    Then I should see "Car has been created."

  Scenario: Creating a car without valid attributes
    When I fill in "Make" with ""
    And I fill in "Model" with ""
    And I fill in "Registration number" with ""
    And I fill in "Hourly rate" with ""
    And I press "Create Car"
    Then I should see "Car has not been created."
    And I should see "Make can't be blank"
    And I should see "Model can't be blank"
    And I should see "Registration number can't be blank"
    And I should see "Hourly rate is not a number"

  Scenario: Hourly rate should be a number
    When I fill in "Make" with "Proton"
    And I fill in "Model" with "Persona"
    And I fill in "Registration number" with "WNF1234"
    And I fill in "Hourly rate" with "Not a number"
    And I press "Create Car"
    Then I should see "Car has not been created."
    And I should see "Hourly rate is not a number"
