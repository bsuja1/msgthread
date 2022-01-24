# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all()
Msgthread.destroy_all()
Message.destroy_all()

user1 = User.create!(name:"u1")
user2 = User.create!(name:"u2")
user3 = User.create!(name:"u3")
user4 = User.create!(name:"u4")


msgthread1 = Msgthread.create(user_id: user1.id, title:"u1/u2" )
msgthread2 = Msgthread.create(user_id: user1.id, title:"FullTeam")

isDel = false;

Message.create(user_id: user1.id , msgthread_id: msgthread1.id , messagetext: "t1 u1", isDeleted: isDel)
Message.create(user_id: user2.id , msgthread_id: msgthread1.id , messagetext: "t1 u2", isDeleted: isDel)

Message.create(user_id: user1.id , msgthread_id: msgthread2.id , messagetext: "t2 u1", isDeleted: isDel)
Message.create(user_id: user2.id , msgthread_id: msgthread2.id , messagetext: "t2 u2", isDeleted: isDel)
