# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'brittanylcrocker@gmail.com', :username => 'sleepySalamander', :password => 'chicken', :blog_title => "BC's Adventures", :about_me => "Welcome to my blog"
u2 = User.create :email => 'huddy@ga.co', :username => 'hudling', :password => 'chicken', :blog_title => "Huddy's Adventures"
puts "#{User.count} users."

Article.destroy_all
a1 = Article.create :title => "Harry Potter", :topic => "Fantasy Novels", :body => "Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry", :image => 'https://hips.hearstapps.com/digitalspyuk.cdnds.net/16/48/1480508469-harry-potter-in-90-minutes-1480436463.jpg'
a2 = Article.create :title => "Doom Eternal", :topic => "Video Games", :body => "Doom Eternal is a first-person shooter video game developed by id Software and published by Bethesda Softworks.", :image => 'https://images.ctfassets.net/rporu91m20dc/2OJbYNR1jGuKc0akweMGQK/5ec7e4aaddb887a9478d5c412296f659/DOOM-Eternal_KeyArt_3_1920x1080.jpg'
puts "#{Article.count} articles"

puts "Users and articles"
u1.articles << a1
u2.articles << a2
