class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.as_json
  end

  def show
    @user = User.find_by(id: params[:id])
    render template: "users/show"
  end

  def create
    user = User.new
    user.name = params[:name]
    user.address = params[:address]
    user.save
    render json: user.as_json
  end
end
