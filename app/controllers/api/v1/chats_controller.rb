class Api::V1::ChatsController < ApplicationController

  def create
    chat = Chat.create()
    render json: chat
  end

  def new
    render json
  end

  def show
    messages = Message.all.where(chat_id: params[:id])
    render json: {messages: messages}
  end

  def edit

    render json
  end

  def destroy

  end
end
