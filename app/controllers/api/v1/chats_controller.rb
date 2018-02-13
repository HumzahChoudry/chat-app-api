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

  def send_message

   @chat = Chat.find(params[:id])

   @new_message = Message.create(content: params[:messages][:content], chat_id: params[:messages][:chat_id], user_id: params[:messages][:user_id], chat: @chat)
   ActionCable.server.broadcast('my_feed', @chat)
   return_json = @chat.messages

   render json: return_json

  end
end
