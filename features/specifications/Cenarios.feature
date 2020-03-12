@message

Feature: Test api
    
#o destinatario está recebendo varias mensagens e nao apenas uma, o correto seria receber 
#apenas uma mensagem no mes

@sendMessage
Scenario: 01 - Send a message to a recipient
    Given the address of the api
    When I put the message data to be sent
    Then I should see the response body and status code with 200
 

#mesmo quando a menssagem é enviada sem o numero do destinatario, a resposta é de sucesso, 
#sendo que na verdade deveria ser de falha.
@messageWithoutNumber
Scenario: 02 - Send a message to a recipient without number
    Given the address of the api
    When I put the message and I don't put the number data
    Then I should see error because recipient dont have number

#a api não tem limite de caracter o que causa outro erro tambem
@character
Scenario:03 - Sending a message to the recipient exceeding the character limit
    Given the address of the api
    When i put the message exceeding limit of character
    Then i should see error because the limit of character was exceeded
