Feature: Logging in

Scenario: Login with valid credentials
  Given I open the login page
  And the login page is open
  When i enter the email
  And i enter the password
  And i click login
  Then i am successfully logged in

Scenario: Fail to login with invalid credentials
  Given I open the login page
  And the login page is open
  When i enter a wrong email
  And i enter a wrong password
  And i click login
  Then i am not logged in

Scenario: Fail to login with invalid email
  Given I open the login page
  And the login page is open
  When i enter an invalid email
  And i enter a valid password
  And i click login
  Then i am not logged in

Scenario: Fail to login with invalid password
  Given I open the login page
  And the login page is open
  When i enter a valid email
  And i enter an invalid password
  And i click login
  Then i am not logged in

Scenario: Fail to login with just the email
  Given i open the login page
  And the login page is open
  When i enter a valid email
  And i click login
  Then i am not logged in

Scenario: Fail to login with just the password
  Given i open the login page
  And the login page is open
  When i enter a valid password
  And i click login
  Then i am not logged in
