Given("the address of the api") do

    $url_base = "https://7eb984w4j4.execute-api.us-east-1.amazonaws.com/dev/lambdastresstest"
    
end
  
When("I put the message data to be sent") do

    @response = HTTParty.post(
    
    $url_base,
    :body =>{:mensagem =>"Mensagem de teste", :num_destinatario =>"12345678901"}.to_json)

end
  
Then("I should see the response body and status code with ok") do
    
    puts "response code #{@response.code}"
    puts "response code #{@response.body}"

end
  







