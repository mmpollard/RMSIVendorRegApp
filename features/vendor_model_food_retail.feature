Feature: Create new vendor model
  As a vendor, I want to be able to input
  the form information and create a vendor model
  
  Scenario: Create food vendor model
    Given I am on the homepage
    When I go to the food page
    And I fill in "form[user]" with "John Doe" 
    And I fill in "form[address]" with "123 Easy St."
    And I fill in "form[city]" with "Anytown"
    And I fill in "form[zip]" with "69420"
    And I fill in "form[name]" with "Cool company"
    And I fill in "form[email]" with "cc@gmail.com" 
    And I fill in "form[busphone]" with "2222222222" 
    And I fill in "form[cell]" with "3333333333" 
    And I fill in "form[website]" with "www.frat.org"
    And I fill in "form[busID]" with "12321"
    And I press "Create Form"
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
    And the numTables of "Cool company" should be "0"
    And the numbrellas of "Cool company" should be "0"
    And the numChairs of "Cool company" should be "0"
    And the numTents of "Cool company" should be "0"



Scenario: Cant create food vendor if required fields not completed (Sad Path)
    Given I am on the homepage
    When I go to the food page
    And I fill in "form[user]" with "John Doe"
    And I press "Create Form"
    Then I should see "missing fields"

Scenario: Create retail vendor model
    Given I am on the retail page
    And I fill in "form[user]" with "John Doe" 
    And I fill in "form[address]" with "123 Easy St."
    And I fill in "form[city]" with "Anytown"
    And I fill in "form[zip]" with "69420"
    And I fill in "form[name]" with "Cool company"
    And I fill in "form[email]" with "cc@gmail.com" 
    And I fill in "form[busphone]" with "2222222222" 
    And I fill in "form[cell]" with "3333333333" 
    And I fill in "form[website]" with "www.frat.org"
    And I fill in "form[busID]" with "12321"
    And I fill in "form[permitNum]" with "1111"
    And I fill in "form[product]" with "conalingus"
    And I press "Create Form"
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
    And the permitNum of "Cool company" should be "1111"
    And the product of "Cool company" should be "conalingus"
    And the numTables of "Cool company" should be "0"
    And the numChairs of "Cool company" should be "0"
    And the numbrellas of "Cool company" should be "0"
    And the numTents of "Cool company" should be "0"
    And the npType of "Cool company" should be "information"

Scenario: Cant create retail vendor if required fields not completed (Sad Path)
    Given I am on the homepage
    When I go to the retail page
    And I fill in "form[user]" with "John Doe"
    And I press "Create Form"
    Then I should see "missing fields"
