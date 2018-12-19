Feature: Logging in

Scenario: Login with valid credentials
  Given I open the login page
  And the login page is open
  When I enter "qa+automation@bookingbug.com" into the email field
  And I enter "Automation123" into the password field
  And I click "Login"
  Then I am successfully logged in

Scenario: Fail to login with invalid credentials
  Given I open the login page
  And the login page is open
  When I enter "wrong@bookingbug.com" into the email field
  And I enter "wrong" into the password field
  And I click "Login"
  Then "Failed to log in, please try again" is displayed

Scenario: Fail to login with invalid email
  Given I open the login page
  And the login page is open
  When I enter "wrong@bookingbug.com" into the email field
  And I enter "Automation123" into the password field
  And I click "Login"
  Then "Failed to log in, please try again" is displayed

Scenario: Fail to login with invalid password
  Given I open the login page
  And the login page is open
  When I enter "qa+automation@bookingbug.com" into the email field
  And I enter "wrong" into the password field
  And I click "Login"
  Then "Failed to log in, please try again" is displayed

Scenario: Fail to login with just the email
  Given I open the login page
  And the login page is open
  When I enter "qa+automation@bookingbug.com" into the email field
  And I click "Login"
  Then "Failed to log in, please try again" is displayed

Scenario: Fail to login with just the password
  Given I open the login page
  And the login page is open
  When I enter "Automation123" into the password field
  And I click "Login"
  Then "Failed to log in, please try again" is displayed
