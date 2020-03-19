# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    User.create(name: Faker::Name.name)
end

10.times do
    Gossip.create(title: Faker::Book.title, content: Faker::Lorem.paragraph, user_id: rand(1..20))
end

10.times do
    Comment.create(comment: Faker::Lorem.sentences, user_id: rand(1..20), gossip_id: rand(1..10))
end

10.times do
    Like.create(user_id: rand(1..20), gossip_id: rand(1..10))
end

10.times do
    Tag.create(content: Faker::Lorem.word)
end

