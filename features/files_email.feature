Feature: Attach uploaded files to confirmation email

As an admin
When a vendor submits there form
And I receive my confirmation email
Then I should also receive any uploaded documents

Background: The vendor has filled out the food form
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

Scenario: Attach a food facility operator form to the confirmation email
    And I attach the file "test1.pdf" to "form_facility_op_form"
    Then the admin should receive a confirmation email containing the file "test1.pdf"
    
Scenario: Attach a copy of contract for commercial kitchen used to prepare food form to the confirmation email
    And I attach the file "test2.doc" to "form_kitchen_contract"
    Then the admin should receive a confirmation email containing the file "test2.doc"
    
Scenario: Attach a DD214 form to the confirmation email
    And I attach the file "test1.pdf" to "form_DD214"
    Then the admin should receive a confirmation email containing the file "test1.pdf"
  
