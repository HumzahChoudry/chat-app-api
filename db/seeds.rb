# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create(username: Faker::Overwatch.hero)
end

10.times do
  Friendship.create(user_id: User.all.sample.id, friend_id: User.all.sample.id)
end

3.times do
  Chat.create(title: Faker::Overwatch.location)
end

Chat.all.each do |c|
  UserChat.create(user_id: User.all.sample.id, chat_id: c.id)
  UserChat.create(user_id: User.all.sample.id, chat_id: c.id)
end

20.times do
  chat = Chat.all.sample.id
  user = User.all.sample.id
  Message.create(content: Faker::Overwatch.quote, chat_id: chat, user_id: user)
end
