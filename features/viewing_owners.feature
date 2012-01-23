Feature: Viewing owners
  In order to assign cars to an owner
  As a user
  I want to be able to see a list of available owners

  Scenario: Listing all owners
    Given there is an owner named "Eddie Vader"
    And I am on the homepage
    When I follow "Eddie Vader"
    Then I should be on the owner page for "Eddie Vader"
