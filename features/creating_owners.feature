Feature: Creating owners
  In order to have cars to assign to
  As a user
  I want to create them easily

  Scenario: Creating an owner
    Given I am on the homepage
    When I follow "New Owner"
    And I fill in "Name" with "Eddie Vader"
    And I fill in "Telephone" with "0123456789"
    And I fill in "Address" with "1, Taman Bukit Tipu, 69012 Kuala Tipu"
    And I press "Create Owner"
    Then I should see "Owner has been created."
