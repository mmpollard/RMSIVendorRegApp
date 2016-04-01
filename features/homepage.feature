Feature: Homepage that links to all the different app forms

As a vendor for the RMSI
I want to select the appropriate app form from the homepage
So that I can provide all the unique vendor information needed

Scenario: Homepage to Food Vendor page
    Given I am on the homepage
    And I press "Food"
    Then I am on the food page

Scenario: Homepage to Retail/Artisan Page
    Given I am on the homepage
    And I press "Retail/Artisan"
    Then I am on the retail page
    
Scenario: Homepage to Non-Profit page
    Given I am on the homepage
    And I press "Non-Profit"
    Then I am on the nonprofit page  

Scenario: Homepage to Commercial Information page
    Given I am on the homepage
    And I press "Commercial Information"
    Then I am on the commercialInfo page  
