class ClownsController < ApplicationController
  def index
    clowns = Clown.all
    render json: clowns.as_json
  end
end
