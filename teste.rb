require 'cucumber'
require 'httparty'
require 'json'
require 'rspec'

$url_base = 'https://7eb984w4j4.execute-api.us-east-1.amazonaws.com/dev/lambdastresstest'
    
    @response = HTTParty.post(

    $url_base,
    :body => {

        :mensagem => "mensagem de teste", :num_destinatario => "123456789123"
	
    }.to_json)

# expect(@response.body).to eq("Numero inválido")
puts "response code #{@response.code}"
puts "response body #{@response.body}"
puts "response message #{@response.message}"
