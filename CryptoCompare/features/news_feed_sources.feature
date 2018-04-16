@wip
Feature: User is able to change news sources
As a user I would like to select or deselect news sources that I would like to view articles from 

Scenario: Change source to CryptoCompare
Given I change the news source to only include articles from CryptoCompare
Then I should only see articles from CryptoCompare
