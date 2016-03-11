Feature: Vendor specific app forms
  
As a vendor for the RMSI
I want to fill out the app form specifically for my type of vendor
So that I can provide all the special vendor information needed

Scenario: view the food vendor form page
  When I go to the food page
  Then I should see the following fields: Name, Address, City, Zip Code, Business Phone, Cell Phone, Email, Website, Business ID
  And I should see the following buttons: Continue
  

Scenario: view the nonfood vendor form page
  When I go to the nonfood page
  Then I should see the following fields: Name, Address, City, Zip Code, Business Phone, Cell Phone, Email, Website, Business ID
  And I should see the following buttons: Continue