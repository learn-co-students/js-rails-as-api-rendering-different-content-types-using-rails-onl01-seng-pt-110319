class BirdsController < ApplicationController
  def index
    birds = Bird.all #now we are directly rending to josn in the same action, we no longer need to deal with instance variables.
    # @birds = Bird.all
    # render plain: "Hello #{@birds[3].name}"
    # render 'birds/index.html.erb'
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: {message: 'Hasses of data will get converted to JSON'}
    # render json: ['As', 'well', 'as', 'arrays']
    # render json: @birds
    render json: {birds: birds, message: ['Hello Birds', 'Goodby Birds']}.to_json
  end
end
