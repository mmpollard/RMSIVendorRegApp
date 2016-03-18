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
  
  
Scenario: Dropdown equipment rentals
  When I go to the food page
  Then I should see "Equipment Rental (Optional)"
  And I should see the following dropdowns: 6' table ($10), Folding Chair ($5), 10'x10' Food Service Tent: ($110), 11' Market Umbrella ($50)
  
  
Scenario: File upload fields
  When I go to the food page
  Then I should see "Registration Forms"
  And I should see the following forms: Food facility operator form:, Copy of contract for commercial kitchen used to prepare food:, DD214