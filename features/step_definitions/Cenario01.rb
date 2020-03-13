
#Cenario 01

Given("the address of the api") do

    $url_base = "https://7eb984w4j4.execute-api.us-east-1.amazonaws.com/dev/lambdastresstest"
    
end
  
When("I enter the message data to be sent") do
    
    @response = HTTParty.post(
    
    $url_base,
    :body =>{:mensagem =>"Mensagem de teste", :num_destinatario =>"12345678901"}.to_json)
end

Then("I should see the response body and status code with {int}") do |int|
    
    expect(@response.code).to eq(200)
    puts "response code #{@response.code}"
    
    expect(@response.body).to match("200")
    puts "response message #{@response.body}"
end