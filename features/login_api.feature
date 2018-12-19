Feature: Login via api

Scenario:Login as an Admin
  Given I have valid credentials
  When I call the login api with the valid credentials
  Then I am logged in as an Admin 
