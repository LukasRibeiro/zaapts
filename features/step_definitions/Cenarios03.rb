
#Cenario 03

When("I enter the message and I don't put the number data") do

@response = HTTParty.post(

  $url_base,
  :body =>{:mensagem =>"mensagem de teste", :num_destinatario =>""}.to_json)

end
  
Then("I should see error because recipient dont have number") do
  
  expect(@response.body).to match("400")
  puts "response body #{@response.body}"

end






