class BirdsController < ApplicationController
  def index
    birds = Bird.all # - instance variables are not used in json
    @birds = Bird.all
    # render plain: "Hello #{@birds[3].name}"
    # render 'birds/index.html.erb'
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # plain: "Hello #{@birds[3].name}"
    #  render json: ['As','well','as','arrays']
    #  render json: @birds #- instance variables are not used in json
    #  json: birds
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json 
    #--we dont need instance methods (render json: @birds) when we use json. 
    # use a local varible(render json: birds)
    #to_json
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
