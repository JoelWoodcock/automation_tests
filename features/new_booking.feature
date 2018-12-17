Feature: Creating a new booking

Background:
  Given I am logged in

Scenario: Creating a new booking
  Given I am on the calendar page
  And I click the Widget link
  And choose the next available time
  And fill in the New Customer fields
  And I click Next button
  And I click Confirm button
  Then the booking should be created
