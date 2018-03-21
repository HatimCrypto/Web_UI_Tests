@global
Feature: Search for a user
As a user I would like to use the search feature to find a particular user


Scenario: Search for user
Given I have entered cryptoqween in the search field
When I select cryptoqween
Then I should be taken to the correct user page
