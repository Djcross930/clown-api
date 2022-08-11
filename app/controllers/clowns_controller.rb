class ClownsController < ApplicationController
  def index
    clowns = Clown.all
    render json: clowns.as_json
  end
  
  def show
    @clown = Clown.find_by(id: params[:id])
    render template: "clowns#show"
  end

end
