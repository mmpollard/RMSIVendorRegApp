Feature: Create new vendor model
  As a vendor, I want to be able to input
  the form information and create a vendor model


Scenario: Cant create food vendor if required fields not completed (Sad Path)
    Given I am on the homepage
    When I go to the food page
    And I fill in "Contact Name" with "John Doe"
    And I press "Continue"
    Then I should see "Missing Fields"


Scenario: Cant create retail vendor if required fields not completed (Sad Path)
    Given I am on the homepage
    When I go to the retail page
    And I fill in "Contact Name" with "John Doe"
    And I press "Continue"
    Then I should see "Missing Fields"