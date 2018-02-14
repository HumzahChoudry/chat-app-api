# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.find_or_create_by(username: Faker::Overwatch.hero)
end

User.all.each do |user|
  friend = User.all.sample
  if friend.id != user.id
    Friendship.create(user_id: user.id, friend_id: friend.id)
    Friendship.create(user_id: friend.id, friend_id: user.id)
  end
end

3.times do
  Chat.create(title: Faker::Overwatch.location)
end

Chat.all.each do |c|
  person = User.all.sample
  UserChat.create(user_id: person.id, chat_id: c.id)
  UserChat.create(user_id: person.friends.sample.id, chat_id: c.id)
end

20.times do
  chat = Chat.all.sample.id
  user = User.all.sample.id
  Message.create(content: Faker::Overwatch.quote, chat_id: chat, user_id: user)
end
