Feature: Deleting owners
  In order to remove owners that no longer exist
  As a user
  I want to make them disappear

  Scenario: Deleting a project
    Given there is an owner named "Eddie Vader"
    And I am on the homepage
    When I follow "Eddie Vader"
    And I follow "Delete Owner"
    Then I should see "Owner has been deleted."
    Then I should not see "Eddie Vader"
