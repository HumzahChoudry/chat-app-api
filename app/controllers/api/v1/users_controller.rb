class Api::V1::UsersController < ApplicationController

  def create
    byebug

    #find or create by username

    #if exists retrieve freinds, chats

    #else
    render json: #something
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


    def show_friends
      friends = find_friends
      return friends
    end

    def show_chats
      chats = find_chats
      return chats
    end 

end
