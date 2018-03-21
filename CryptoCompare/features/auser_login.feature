@global @login
Feature: Manage account
As a user I would like to log in so that i can manage my account settings


Scenario: Login
Given I am on the homepage 
When I select login
And I enter a valid username and password
Then I should be successfully logged in 

