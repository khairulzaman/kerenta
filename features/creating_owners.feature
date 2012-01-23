Feature: Creating owners
  In order to have cars to assign to
  As a user
  I want to create them easily

  Background: 
    Given I am on the homepage
    When I follow "New Owner"

  Scenario: Creating an owner
    And I fill in "Name" with "Eddie Vader"
    And I fill in "Telephone" with "0123456789"
    And I press "Create Owner"
    Then I should see "Owner has been created."
    And I should be on the owner page for "Eddie Vader"
    And I should see "Eddie Vader - Owners - Kerenta"

  Scenario: Creating an owner without attributes is bad
    And I press "Create Owner"
    Then I should see "Owner has not been created."
    And I should see "Name can't be blank"
