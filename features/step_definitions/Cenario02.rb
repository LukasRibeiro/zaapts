
#Cenario 02

When("I put the message and I don't put the number data") do
    
    @response02 = HTTParty.post(
    
    $url_base,
    :body =>{:mensagem =>"Mensagem de teste"}.to_json)
end    

    
  Then("I should see error because recipient dont have number") do
    
    expect(@response02.code).to eq(400)
    puts "response code #{@response02.code}"

    expect(@response02.message).to eq("Numero invalido")
    puts "response body #{@response02.body}"
end
