# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Pos
# x =  1
# y =  500
# while x < y do
#   Post.create({ name: Faker::Name.name, title: Faker::Book.title,
#                 content: Faker::Quote.famous_last_words })
#   x +=1
# end

a =  1
b =  50
while a < b do
  Post.all.each do |post|
    Comment.create(commenter: Faker::Name.name,
                   body: Faker::Quote.famous_last_words,
                   post_id: post.id)
  end
end
