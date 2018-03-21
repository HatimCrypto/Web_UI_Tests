@global
Feature: Search for a coin
As a user I would like to use the search feature to find a particular coin


Scenario: Search for Bitcoin
Given I have entered Bitcoin in the search field
When I select Bitcoin
Then I should be taken to the correct coin page
