
#Cenario 7

When("I enter the recipient number less than {int} digits") do |int|
    
    @response = HTTParty.post(

    $url_base,
    :body =>{

        :mensagem =>"Mensagem de teste", :num_destinatario =>"5678978"}.to_json)
end
  
  Then("i shoul see error because recipient numbers less than {int} digits") do |int|
    
    expect(@response.body).to match("400")
    puts "response body #{@response.body}"
end