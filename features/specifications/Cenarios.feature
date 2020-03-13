@message
Feature: Test send messages 

@Cenario1
Scenario: 01 - Send a message to a recipient
    Given the address of the api
    When I enter the message data to be sent
    Then I should see the response body and status code with 200

@Cenario2
Scenario: 02 - Sending a message to the same destination number as scenario 1
    Given the address of the api
    When I enter the message and the same recipient number
    Then i should see error to send message

@Cenario3
Scenario: 03 - Send a message to a recipient without number
    Given the address of the api
    When I enter the message and I don't put the number data
    Then I should see error because recipient dont have number

# @Cenario4
# Scenario: 04 - Sending a message to the recipient exceeding the character limit
#     Given the address of the api
#     When i enter the message exceeding limit of character
#     Then i should see error because the limit of character was exceeded

# @Cenario5
# Scenario: 05 - Sending a message without the message field, only recipient number.
#     Given the address of the api
#     When I enter the recipient's number but do not enter the message field
#     Then i should see error because message field was mandatory

# @Cenario6
# Scenario: 06 - Sending a message exceeding the limit of the recipient number field
#     Given the address of the api
#     When I enter the recipient's number exceeding the allowed limit
#     Then I should see error because the limit was exceded

# @Cenario7
# Scenario: 07 - Sending a message with a field number less than 11 digits
#     Given the address of the api
#     When I enter the recipient number less than 11 digits
#     Then i shoul see error because recipient numbers less than 11 digits
