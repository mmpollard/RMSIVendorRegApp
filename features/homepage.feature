Feature: Homepage that links to food and nonfood vendor app forms

As a vendor for the RMSI
I want to select the appropriate app form from the homepage
So that I can provide all the special food vendor information needed

Given I am on the RMSI home page
And I press "Food Vendor"
Then I am on "Food Vendor Application"

Given I am on the RMSI home page
And I press "Retail/Artisan or Nonprofit Vendor"
Then I am on "Retail/Artisan or Nonprofit Application"
