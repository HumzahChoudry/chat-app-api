class Api::V1::UsersController < ApplicationController

  def create
    byebug
    render json
  end

  def new

    render json
  end

  def index
    users = User.all
    render json: users
  end

  def edit

    render json
  end

  def destroy

  end

end
