Feature: Downloadable food vendor forms

As a food vendor for the RMSI
I want to upload the forms specific to us
So that I can easily fill it out for the application


Scenario: Upload a food facility operator form
  Given I am on the food page
  And I press "Browse"
  And I attach the file "test1.pdf"
  And I press "Upload"
  Then the "input-7" field should contain "test1.pdf"
  And I press "Remove"
  Then the "input-7" field should not contain "test1.pdf"
  When I attach the file "test2.doc"
  And I press "Upload"
  Then the "input-7" field should contain "test2.doc"
  And I press "Remove"
  Then the "input-7" field should not contain "test2.doc"
  When I attach the file "test3.txt"
  And I press "Upload"
  Then the "input-7" field should have the error "Invalid file format. Please upload a .pdf or .doc." 
  
Scenario: Upload a opy of contract for commercial kitchen used to prepare food
  Given I am on the food page
  And I press "Browse"
  And I attach the file "test1.pdf"
  And I press "Upload"
  Then the "input-8" field should contain "test1.pdf"
  And I press "Remove"
  Then the "input-8" field should not contain "test1.pdf"  
  When I attach the file "test2.doc"
  And I press "Upload"
  Then the "input-8" field should contain "test2.doc"
  And I press "Remove"
  Then the "input-8" field should not contain "test2.doc"    
  When I attach the file "test3.txt"
  And I press "Upload"
  Then the "input-8" field should have the error "Invalid file format. Please upload a .pdf or .doc." 
  
Scenario: Upload a DD214
  Given I am on the food page
  And I press "Browse"
  And I attach the file "test1.pdf"
  And I press "Upload"
  Then the "input-9" field should contain "test1.pdf"
  And I press "Remove"
  Then the "input-9" field should not contain "test1.pdf"  
  When I attach the file "test2.doc"
  And I press "Upload"
  Then the "input-9" field should contain "test2.doc"
  And I press "Remove"
  Then the "input-9" field should not contain "test2.doc"    
  When I attach the file "test3.txt"
  And I press "Upload"
  Then the "input-9" field should have the error "Invalid file format. Please upload a .pdf or .doc."   
