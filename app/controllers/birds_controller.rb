class BirdsController < ApplicationController
  def index
    # birds = Bird.all # - instance variables are not used in json
    # @birds = Bird.all
    # render 'birds/index.html.erb'
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    # json: { message: 'Hashes of data will get converted to JSON' }
    # json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # plain: "Hello #{@birds[3].name}"
    #  json: ['As','well','as','arrays']
    #  json: @birds - instance variables are not used in json
    #  json: birds
    # json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    # json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json --we dont need to_json
  end
end


# FETCH EXAMPLES FROM THE LAB
# JSON
# fetch('http://localhost:3000/birds')
# .then(response => response.json())
# .then(object => console.log(object))

# TEXT
# fetch('http://localhost:3000/birds')
# .then(response => response.text())
# .then(text => console.log(text))
