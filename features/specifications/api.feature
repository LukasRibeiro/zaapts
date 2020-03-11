@api
Feature: scenarios for testing at api

Scenario: Send a message to a recipient
    Given the address of the api
    When I put the message data to be sent
    Then I should see the response body and status code with ok
 
