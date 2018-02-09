class Api::V1::ChatsController < ApplicationController

  def create
    chat = Chat.create()
    render json: chat
  end

  def new
    render json
  end

  def show

    render json
  end

  def edit

    render json
  end

  def destroy

  end
end
