User.destroy_all
UserGroup.destroy_all
Membership.destroy_all
Invite.destroy_all

puts "Creating Users..."
first_user = User.create(email: "helene.ziemendorf@gmail.com", password: "123456", first_name: "Hélène", last_name: "Ziemendorf")
second_user = User.create(email: "eric.ziemendorf@gmail.com", password: "123456", first_name: "Eric", last_name: "Ziemendorf")
third_user = User.create(email: "selma.ziemendorf@gmail.com", password: "123456", first_name: "Selma", last_name: "Ziemendorf")
fourth_user = User.create(email: "joachim.ziemendorf@gmail.com", password: "123456", first_name: "Joachim", last_name: "Ziemendorf")
fifth_user = User.create(email: "annemarie.ziemendorf@gmail.com", password: "123456", first_name: "Anne-Marie", last_name: "Ziemendorf")
sixth_user = User.create(email: "claire.ziemendorf@gmail.com", password: "123456", first_name: "Claire", last_name: "Ziemendorf")

puts "Creating Colocations..."
first_group = UserGroup.create(name: "9 avenue de la ferme des Hézards", admin: sixth_user)

puts "Creating Memberships..."
Membership.create(user_group: first_group, user: first_user)
Membership.create(user_group: first_group, user: second_user)
Membership.create(user_group: first_group, user: third_user)
Membership.create(user_group: first_group, user: fourth_user)
Membership.create(user_group: first_group, user: fifth_user)
Membership.create(user_group: first_group, user: sixth_user)
