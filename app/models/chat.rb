class Chat < ApplicationRecord
  has_many :messages
  has_many :user_chats
  has_many :users, through: :user_chats

  def message_with_usernames

    self.messages.map { |message|
      message.slice(:id, :username, :content, :chat_id, :created_at)
    }
  end
end
