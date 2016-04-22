Feature: confirmation email automation to admin

As an admin
When a vendor submits a form
I should receive an email with their details/telling me of their submission

Scenario: Send a confirmation email to the admin after a form gets submitted
  Given a form is submitted successfully
  Then "as the admin", I should receive a confirmation at "at the admin email"
  And I should also be able to see their submission
