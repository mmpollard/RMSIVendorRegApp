Feature: confirmation email automation to vendor

As a vendor
After I upload a form successfully
I should receive a confirmation email saying submission was successful

Scenario: Send a confirmation email to the vendor after submitting a form
  Given a form is submitted successfully
  And I use the email "aaaa@bbbb.org"
  # And I press "submit"
  Then as "a vendor", I should receive a confirmation at "aaaa@bbbb.org"

  
