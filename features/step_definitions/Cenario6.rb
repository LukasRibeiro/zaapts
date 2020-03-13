
# Cenario 6

When("I enter the recipient's number exceeding the allowed limit") do
    
    @response = HTTParty.post(

    $url_base,
    :body =>{

        :mensagem =>"Mensagem de teste", :num_destinatario =>"14456452345678978"}.to_json)

end
  
  Then("I should see error because the limit was exceded") do
    
    expect(@response.body).to match("400")
    puts "response body #{@response.body}"

  end