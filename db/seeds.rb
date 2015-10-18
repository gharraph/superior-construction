# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.find_or_create_by(name: 'T. J. McFadden', email: 't.j.McFadden@superior_construction.com')
user2 = User.find_or_create_by(name: 'Marcus Stavola', email: 'm.stavola@superior_construction.com')
user3 = User.find_or_create_by(name: 'test', email: 'test@test.com')
user4 = User.find_or_create_by(name: 'Phoenix Dabrid', email: 'firebird@superior_construction.com')
user4 = User.find_or_create_by(name: 'Jerry Bombard', email: 'jerry.bombard@superior_construction.com')
user5 = User.find_or_create_by(name: 'Josh Brown', email: 'jb@superior_construction.com')
user6 = User.find_or_create_by(name: 'Test', email: 'test@test.com')
user7 = User.find_or_create_by(name: 'Marcus Stavola', email: 'M.Stavola@superior_construction.com')
user8 = User.find_or_create_by(name: 'Aaron Pharel', email: 'aaPharel@superior_construction.com')
user9 = User.find_or_create_by(name: 'Steve Ferriola', email: 'stevey@superior_construction.com')
user10 = User.find_or_create_by(name: 'Woofy Wooferson', email: 'woofy.wooferson@superior_construction.com')
user11 = User.find_or_create_by(name: 'Don O Van', email: 'Don.O.Van@superior_construction.com')
user12 = User.find_or_create_by(name: 'Fred Black', email: 'freddy@superior_construction.com')
user13 = User.find_or_create_by(name: 'Jill McDuff', email: 'jill.mcDuff@superior_construction.com')
user14 = User.find_or_create_by(name: 'Jill Henry', email: 'jill_number_2@superior_construction.com')
user15 = User.find_or_create_by(name: 'Janine Hill', email: 'j.hill@superior_construction.com')

project1 = Project.find_or_create_by(name: "Donna's Patio", description: "Donna is requesting a new patio")
project2 = Project.find_or_create_by(name: "Jake's House", description: "A ranch style house with a 2 door garage")
project3 = Project.find_or_create_by(name: "Phils Moving Van", description: "Phil needs a custom van to move his stuff back to Ohio")

user1.projects << project1
user2.projects << project1
user3.projects << project1
user4.projects << project1
user5.projects << project1
user6.projects << project2
user7.projects << project2
user8.projects << project2
user9.projects << project2
user10.projects << project2
user11.projects << project3
user12.projects << project3
user13.projects << project3
user14.projects << project3
user1.projects << project2
user2.projects << project3
user3.projects << project2
user4.projects << project3
user5.projects << project1
user6.projects << project3
user7.projects << project1
user8.projects << project3
user9.projects << project2
user10.projects << project3
user11.projects << project2
user12.projects << project1
user13.projects << project2
user14.projects << project1
user1.projects << project3
user15.projects << project1