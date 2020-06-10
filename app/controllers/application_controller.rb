class ApplicationController < ActionController::Base
  class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds
  end
end
end
