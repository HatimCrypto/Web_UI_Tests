@global 
Feature: Delete portfolio
As a user I would like to delete my portfolio if I no longer need it 

#Deletes portfolio created in create_portfolio.feature

Scenario: Delete the portfolio
Given I have logged in
And I would like to delete my portfolio
When I delete my portfolio
Then it should no longer appear 