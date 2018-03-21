@global
Feature: Create portfolio
As a user I would like to create a new portfolio so that i can manage my Crypto-Currencies


Scenario: Create new portfolio 
Given I have logged in 
When I enter the portfolio section 
And I choose to add a new portfolio
Then I should see my new portfolio 

#Portfolio will be deleted to avoid duplicates
