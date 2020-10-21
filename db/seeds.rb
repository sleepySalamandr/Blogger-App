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
a3 = Article.create :title => "Do Software Engineers Need to Consider Ethics?", :topic => "Tech", :body => "First, do no harm. This is the underlying message of the Hippocratic Oath, historically taken by physicians to show they will abide by an ethical code of conduct. Plumbers, construction workers, law enforcement — almost any professional whose work impacts the public must abide by some sort of ethical code of conduct.

There’s one fairly notable exception: technology. While there are organization- and company-specific codes of conduct — like these guidelines from the Association for Computing Machinery (ACM) and the Institute of Electrical and Electronics Engineers – Computer Science (IEEE-CS) joint task force on software engineering ethics professional practices, there’s no one all-encompassing set of standards that includes the entire industry. Perhaps that’s because, as Yonatan Zunger writes in the Boston Globe, “… [T]he field of computer science, unlike other sciences, has not yet faced serious negative consequences for the work its practitioners do.", :image => "https://images.unsplash.com/photo-1531746790731-6c087fecd65a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1295&q=80"
a4 = Article.create :title => "After the Prestige: A Post-Modern Analysis", :topic => "Performance Magic",:body => "By mocking the magic community and revealing the secret behind some of their tricks, Penn and Teller perform a kind of parodic and post-modern “anti-magic.” Penn and Teller display an artful use of rhetoric; in exposing the secrets and shortcomings of conjuring, they are revolutionizing the way people think about both the art of magic and the magic community. Individuals such as Penn and Teller may use parody to subvert the hegemonic interpretations. However, we also know that it is difficult to bring down a system while operating within that system. Thus, this article explores the way Penn and Teller are challenging the metanarrative of the magic community, using several of the duo’s more popular illusions as examples for analysis. Ultimately, this paper should help us gain a better understanding of the way parody can be used to challenge hegemonic conceptions, and the limitations of this type of rhetorical approach.", :image => "https://vignette.wikia.nocookie.net/disney/images/8/8c/The_Prestige.jpg/revision/latest/top-crop/width/360/height/450?cb=20120923034713"
puts "#{Article.count} articles"

puts "Users and articles"
u1.articles << a1
u2.articles << a2
u1.articles << a3
u2.articles << a4
