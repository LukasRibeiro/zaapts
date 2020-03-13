
#Cenario 02

When("I enter the message and the same recipient number") do

  @response = HTTParty.post(
  
  $url_base,
  :body =>{:mensagem =>"Mensagem de teste", :num_destinatario =>"12345678901"}.to_json)

end

Then("i should see error to send message") do

  expect(@response.code).to eq(200)
  puts "response code #{@response.code}"

  expect(@response.body).to eq("{\"statusCode\":400,\"body\":\"\\\"Numero invalido\\\"\"}")
  puts "response body #{@response.body}"

end