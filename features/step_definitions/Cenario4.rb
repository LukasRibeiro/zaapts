#Cenario 4


When("i enter the message exceeding limit of character") do
    
    @response = HTTParty.post(

    $url_base,
    :body =>{

        :mensagem =>"
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Amet justo donec enim diam. Augue interdum velit euismod in. Mollis nunc sed id semper. 
        Dignissim sodales ut eu sem integer. Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci.
        Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Ac turpis egestas sed tempus urna.
        Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc. 
        Sit amet consectetur adipiscing elit pellentesque.

        Netus et malesuada fames ac. Rutrum tellus pellentesque eu tincidunt. Neque gravida in fermentum et sollicitudin ac orci phasellus egestas. 
        Consectetur adipiscing elit ut aliquam purus sit. At ultrices mi tempus imperdiet. Blandit aliquam etiam erat velit. 
        Neque egestas congue quisque egestas diam in. Quis varius quam quisque id diam. Orci sagittis eu volutpat odio facilisis. 
        Non consectetur a erat nam at lectus urna. Adipiscing elit duis tristique sollicitudin nibh sit amet.

    ", :num_destinatario =>"12345678978"}.to_json)
end
  
 
Then("i should see error because the limit of character was exceeded") do
    
  expect(@response.body).to match("400")
  puts "response body #{@response.body}"
    
end