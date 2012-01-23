Feature: Editing owners
  In order to update owner information
  As a user
  I want to be able to do that through an interface

  Background:
		Given there is an owner named "Eddie Vader"
		And I am on the homepage
		When I follow "Eddie Vader"
		And I follow "Edit Owner"

  Scenario: Updating owner information
    And I fill in "Name" with "Eddie bin Vader"
    And I press "Update Owner"
		Then I should see "Owner has been updated."
		Then I should be on the owner page for "Eddie bin Vader"

  Scenario: Updating owner information with invalid attributes is bad
    And I fill in "Name" with ""
    And I press "Update Owner"
		Then I should see "Owner has not been updated."
