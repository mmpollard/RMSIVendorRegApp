Feature: Vendor specific app forms
  
As a vendor for the RMSI
I want to fill out the app form specifically for my type of vendor
So that I can provide all the special vendor information needed

Scenario: view the food vendor form page
  When I go to the food page
  Then I should see the following fields: Name, Address, City, Zip Code, Business Phone, Cell Phone, Email, Website, Business ID
  And I should see the following buttons: Create Form
  

Scenario: view the retail vendor form page
  When I go to the retail page
  Then I should see the following fields: Organization Name, Contact Name, Address, City, Zip Code, Business Phone, Cell Phone, Email, Website, Business ID, Resale Permit, Product(s)/Services
  
Scenario: view the nonprofit vendor form page
  When I go to the nonprofit page
  Then I should see the following fields: Organization Name, Address, City, Zip Code, Business Phone, Cell Phone, Email, Website, Tax ID
  
Scenario: view the commercial info vendor form page
  When I go to the commercialInfo page
  Then I should see the following fields: Organization Name, Address, City, Zip Code, Business Phone, Cell Phone, Email, Website, Business ID 
  
Scenario: Dropdown equipment rentals
  When I go to the food page
  Then I should see "Equipment Rental (Optional)"
  And I should see the following dropdowns: 6' Table ($10), Folding Chair ($5), 10'x10' Food Service Tent: ($110), 11' Market Umbrella ($50)
  
  
Scenario: File upload fields
  When I go to the food page
  Then I should see "Registration Forms"
  And I should see the following forms: Food facility operator form:, Copy of contract for commercial kitchen used to prepare food:, DD214