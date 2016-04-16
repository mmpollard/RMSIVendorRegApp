Feature: Downloadable food vendor forms

As a food vendor for the RMSI
I want to upload the forms specific to us
So that I can easily fill it out for the application


Scenario: Upload a food facility operator form
  Given I am on the food page
  And I attach the file "test1.pdf" to "form_facility_op_form"
  Then the "form[facility_op_form]" field should contain "test1.pdf"
  Then I attach the file "test2.doc" to "form_facility_op_form"
  Then the "form[facility_op_form]" field should contain "test2.doc"
  
  
  
Scenario: Upload a opy of contract for commercial kitchen used to prepare food
  Given I am on the food page
  And I attach the file "test1.pdf" to "form_kitchen_contract"
  Then the "form[kitchen_contract]" field should contain "test1.pdf"
  Then I attach the file "test2.doc" to "form_kitchen_contract"
  Then the "form[kitchen_contract]" field should contain "test2.doc"
  
Scenario: Upload a DD214
  Given I am on the food page
  And I attach the file "test1.pdf" to "form_DD214"
  Then the "form[DD214]" field should contain "test1.pdf"
  Then I attach the file "test2.doc" to "form_DD214"
  Then the "form[DD214]" field should contain "test2.doc" 
