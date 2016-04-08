Feature: Create new vendor model
  As a vendor, I want to be able to input
  the form information and create a vendor model
  
  Scenario: Create food vendor model
    Given I am on the homepage
    When I go to the food page
    And I fill in "Contact Name" with "John Doe" 
    And I fill in "Address" with "123 Easy St."
    And I fill in "City" with "Anytown"
    And I fill in "Zip Code" with "69420"
    And I fill in "Organization Name" with "Cool company"
    And I fill in "Email" with "cc@gmail.com" 
    And I fill in "Business Phone" with "2222222222" 
    And I fill in "Cell Phone" with "3333333333" 
    And I fill in "Website" with "www.frat.org"
    And I fill in "Business ID" with "12321"
    And I press "Continue"
    Then the user of "Cool company" should be "John Doe"
    And the address of "Cool company" should be "123 Easy St."
    And the city of "Cool company" should be "Anytown"
    And the zip of "Cool company" should be "69420"
    And the orgname of "Cool company" should be "Cool company"
    And the email of "Cool company" should be "cc@gmail.com"
    And the busphone of "Cool company" should be "2222222222" 
    And the cell of "Cool company" should be "3333333333" 
    And the website of "Cool company" should be "www.frat.org"
    And the busID of "Cool company" should be "12321"



Scenario: Cant create food vendor if required fields not completed (Sad Path)
    Given I am on the homepage
    When I go to the food page
    And I fill in "Contact Name" with "John Doe"
    And I press "Continue"
    Then I should see "Missing Fields"

