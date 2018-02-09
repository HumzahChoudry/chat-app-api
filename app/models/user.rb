class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :user_chats
  has_many :chats, through: :user_chats
  has_many :messages

end
