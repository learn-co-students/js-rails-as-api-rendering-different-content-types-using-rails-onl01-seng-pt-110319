class BirdsController < ApplicationController

  # PLAIN TEXT
  # def index
  #   @birds = Bird.all
  #   render plain: "Hello #{@birds[3].name}" # this renders plain text from the controller.
  # end

  #JSON
  # def index
  #   @birds = Bird.all
  #   render json: 'Remember that JSON is just object notation converted to string data, so strings also work here.' 
  #   # this line above renders json from the cnotroller, you specify json: followed by data that can be converted to valid JSON:
  # end

# JSON WITH HASHES & OTHER DATA TYPES BELOW:

  # def index 
  #   @birds = Bird.all
  #   render json: {message: 'Hashes of data will get converted to JSON.'} # hash example
  # end

  # def index 
  #   @birds = Bird.all 
  #   render json: ['As', 'well', 'as', 'arrays'] # array example 
  # end

  # #REFACTOR OF ABOVE CODE EXAMPLES
  # def index 

  #   @birds = Bird.all 
  #   render json: @birds # this will give us all the data available from the Bird records in JSON format
  # end

  # def index 
  #   @birds = Bird.all 
  #   render json: {birds: @birds, messages: ['Hello Birds','Goodbye Birds']}.to_json
  #   # the .to_json is available for both arrays and hashes. it takes whatever array or hash it is called on and converts it to json
  # end

  # since we arent working with ERB anymore in the view, we dont need instance variables

  def index 
    birds = Bird.all 
    render json: birds
  end




end

