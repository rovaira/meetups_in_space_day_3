# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
corgi_meetup = Meetup.create(name: 'Boston Corgi', description: 'All things corgi',
                            location: 'Launch Mission Control')
lab_meetup = Meetup.create(name: 'Livermore Labs', description: 'Scientist dogs',
                          location: 'Livermore, CA')
yorkie_meetup = Meetup.create(name: 'Yapping Yorkies', description: 'The Yorki Whisperer',
                              location: 'York, England')

user_2 = User.create(provider: "No Idea", uid: 2, username: "user_2",
                    email: "user_2@fakemail.com", avatar_url: "https://www.google.com/images/nav_logo195_hr.png")
user_3 = User.create(provider: "No Idea", uid: 3, username: "user_3",
                    email: "user_3@fakemail.com", avatar_url: "https://www.google.com/images/nav_logo195_hr.png")
user_4 = User.create(provider: "No Idea", uid: 4, username: "user_4",
                    email: "user_4@fakemail.com", avatar_url: "https://www.google.com/images/nav_logo195_hr.png")
user_5 = User.create(provider: "No Idea", uid: 5, username: "user_5",
                    email: "user_5@fakemail.com", avatar_url: "https://www.google.com/images/nav_logo195_hr.png")
user_6 = User.create(provider: "No Idea", uid: 6, username: "user_6",
                    email: "user_6@fakemail.com", avatar_url: "https://www.google.com/images/nav_logo195_hr.png")
user_7 = User.create(provider: "No Idea", uid: 7, username: "user_7",
                    email: "user_7@fakemail.com", avatar_url: "https://www.google.com/images/nav_logo195_hr.png")

corgi_membership_1 = Membership.create(user: user_2, meetup: corgi_meetup)
corgi_membership_2 = Membership.create(user: user_3, meetup: corgi_meetup)
lab_membership_1 = Membership.create(user: user_4, meetup: lab_meetup)
lab_membership_2 = Membership.create(user: user_5, meetup: lab_meetup)
yorkie_membership_1 = Membership.create(user: user_6, meetup: yorkie_meetup)
yorkie_membership_2 = Membership.create(user: user_7, meetup: yorkie_meetup)
