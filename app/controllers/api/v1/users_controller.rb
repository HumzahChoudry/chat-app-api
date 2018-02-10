class Api::V1::UsersController < ApplicationController

  def create
    user = User.find_or_create_by(username: params[:user][:username])
    friends = user.friends
    chats = user.chats
    user_info = {user: user, friends: friends, chats: chats}

    render json: user_info
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

  #helper methods

    # def show_friends
    #   friends = find_friends
    #   return friends
    # end
    #
    # def show_chats
    #   chats = find_chats
    #   return chats
    # end

end
