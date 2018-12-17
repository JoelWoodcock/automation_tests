Feature: Logging in

Scenario: Login with valid credentials
  Given I open the login page
  And the login page is open
  When I enter the email
  And I enter the password
  And I click login
  Then I am successfully logged in

Scenario: Fail to login with invalid credentials
  Given I open the login page
  And the login page is open
  When I enter a wrong email
  And I enter a wrong password
  And I click login
  Then I am not logged in

Scenario: Fail to login with invalid email
  Given I open the login page
  And the login page is open
  When I enter an invalid email
  And I enter a valid password
  And I click login
  Then I am not logged in

Scenario: Fail to login with invalid password
  Given I open the login page
  And the login page is open
  When I enter a valid email
  And I enter an invalid password
  And I click login
  Then I am not logged in

Scenario: Fail to login with just the email
  Given I open the login page
  And the login page is open
  When I enter a valid email
  And I click login
  Then I am not logged in

Scenario: Fail to login with just the password
  Given I open the login page
  And the login page is open
  When I enter a valid password
  And I click login
  Then I am not logged in
