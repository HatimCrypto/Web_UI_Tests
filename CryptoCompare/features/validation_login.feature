@global @validation
Feature: Form validation for login 
As a user I should get the appropriate error messages when the login form has not been filled in correctly

Background: Enter the login form 
Given I am on the login form


Scenario: Empty Email field 
Given I leave the email field blank and enter a valid password 
Then I should get an error message for the missing email 


Scenario: Empty password field 
Given I enter a valid email and leave the password field blank
Then I should get an error message for the missing password


Scenario: Failed Log in using invalid email 
Given I have entered an invalid email
And I have entered a valid password
Then I should see an error message regarding the invalid email


Scenario: Failed Log in using invalid password
Given I have entered a valid email 
And I have entered an invalid password
Then I should see an error message regarding the invalid password
