Feature: Pathalogy Lab

  Background :I am on the login page And I login with valid credentials

  Scenario: User logs in with valid credentials
    When  Verify that after login User lands on the Homepage
    Then Verify that user can view a list of todos and access the Cost Calculator for blood tests.
    Then Verify that the user can access cost calculator
    Then Verify that the user can click on Tests and click on Add Patients test
    Then Verify that the user can fill in Patients details
    Then Verify that the details can be added
    Then Verify that after adding the test it is reflected on the page 
