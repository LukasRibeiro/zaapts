
#Cenario 03

When("i put the message exceeding limit of character") do

    @response03 = HTTParty.post(
    
    $url_base,
    :body =>{
        :mensagem =>"Lorem ipsum dolor sit amet, 
    consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
    Proin libero nunc consequat interdum varius sit amet mattis vulputate. 
    Dui nunc mattis enim ut tellus elementum. Nulla pellentesque dignissim enim sit amet venenatis urna. 
    Sapien et ligula ullamcorper malesuada proin. Consectetur purus ut faucibus pulvinar elementum integer enim neque. 
    Id porta nibh venenatis cras sed felis. Vitae congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque. 
    Mattis nunc sed blandit libero. Purus non enim praesent elementum facilisis leo. 
    Vel risus commodo viverra maecenas accumsan. Fames ac turpis egestas maecenas pharetra convallis posuere. Gravida dictum fusce ut placerat orci nulla. 
    Nisi quis eleifend quam adipiscing vitae. Urna nunc id cursus metus aliquam. Facilisis gravida neque convallis a cras semper auctor neque. 
    Et odio pellentesque diam volutpat commodo sed egestas egestas fringilla. 
    Purus ut faucibus pulvinar elementum. Pharetra magna ac placerat vestibulum lectus mauris.
    
    Convallis posuere morbi leo urna molestie at elementum eu facilisis. 
    Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. 
    Sapien faucibus et molestie ac feugiat sed lectus. Leo integer malesuada nunc vel risus commodo 
    viverra maecenas. Eget egestas purus viverra accumsan. Hendrerit gravida rutrum quisque non tellus orci.
    Maecenas accumsan lacus vel facilisis volutpat. A iaculis at erat pellentesque. Neque sodales ut etiam 
    sit. Urna neque viverra justo nec ultrices. Magna fermentum iaculis eu non diam phasellus.
    
    Facilisi cras fermentum odio eu feugiat pretium nibh ipsum consequat. 
    Imperdiet massa tincidunt nunc pulvinar. Suspendisse interdum consectetur libero id. 
    Sem viverra aliquet eget sit amet tellus cras adipiscing enim. Et netus et malesuada fames ac turpis egestas maecenas pharetra. 
    Congue nisi vitae suscipit tellus mauris a diam. Maecenas volutpat blandit aliquam etiam.
    Fringilla phasellus faucibus scelerisque eleifend. Risus viverra adipiscing at in. 
    Orci dapibus ultrices in iaculis nunc sed. Enim nulla aliquet porttitor lacus luctus accumsan
    
    Ornare suspendisse sed nisi lacus sed viverra. Amet massa vitae tortor condimentum lacinia quis. 
    Consequat nisl vel pretium lectus. Est placerat in egestas erat imperdiet sed euismod nisi.
    Arcu dictum varius duis at consectetur. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui. 
    Eget duis at tellus at urna condimentum mattis pellentesque. Nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit. 
    Nunc mi ipsum faucibus vitae aliquet nec. Pharetra convallis posuere morbi leo urna molestie at. 
    Vitae aliquet nec ullamcorper sit amet risus nullam eget felis.
    ", 

    :num_destinatario =>"12345678910"}.to_json)
end
  
  Then("i should see error because the limit of character was exceeded") do

    expect(@response03.code).to eq(400)
    puts "response code #{@response03.code}"
    
end