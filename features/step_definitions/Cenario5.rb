
#cenario 5

When("I enter the recipient's number but do not enter the message field") do

    @response = HTTParty.post(

    $url_base,
    :body =>{

        :mensagem =>"", :num_destinatario =>"12345678978"}.to_json)
end
  
  Then("i should see error because message field was mandatory") do
    
    expect(@response.body).to match("400")
    puts "response body #{@response.body}"

end