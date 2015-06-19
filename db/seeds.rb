# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
corgi_meetup = Meetup.create(name: 'Boston Corgi', description: 'All things corgi',
                            location: 'Launch Mission Control, MA')
lab_meetup = Meetup.create(name: 'Livermore Labs', description: 'Scientist dogs',
                          location: 'Livermore, CA')
yorkie_meetup = Meetup.create(name: 'Yapping Yorkies', description: 'The Yorki Whisperer',
                              location: 'York, MS')

user_2 = User.create(provider: "No Idea", uid: 2, username: "user_2",
                    email: "user_2@fakemail.com", avatar_url: "http://www.launchacademy.com/assets/headshots/alex-9d58355dd884939a6bc83c9a9b8caccc.jpg")
user_3 = User.create(provider: "No Idea", uid: 3, username: "user_3",
                    email: "user_3@fakemail.com", avatar_url: "http://www.launchacademy.com/assets/headshots/drf-d0026ab2fcb43567574756cf5a2b08a2.jpg")
user_4 = User.create(provider: "No Idea", uid: 4, username: "user_4",
                    email: "user_4@fakemail.com", avatar_url: "http://www.launchacademy.com/assets/headshots/vikram-0bedfa397f56738de9c424f77b7d1165.jpg")
user_5 = User.create(provider: "No Idea", uid: 5, username: "user_5",
                    email: "user_5@fakemail.com", avatar_url: "http://www.launchacademy.com/assets/headshots/richard-e0b7a8d298cee8df24e53c1bad9f5f46.jpg")
user_6 = User.create(provider: "No Idea", uid: 6, username: "user_6",
                    email: "user_6@fakemail.com", avatar_url: "http://www.launchacademy.com/assets/headshots/christina-3825de46d63e54fc7030e90c4a3d6ca6.jpg")
user_7 = User.create(provider: "No Idea", uid: 7, username: "user_7",
                    email: "user_7@fakemail.com", avatar_url: "http://www.launchacademy.com/assets/headshots/dt-92b7d662f1bfc87aa57813ea5f0cb1e7.jpg")
user_8 = User.create(provider: "No Idea", uid: 8, username: "user_8",
                    email: "user_7@fakemail.com", avatar_url: "http://www.launchacademy.com/assets/headshots/dt-92b7d662f1bfc87aa57813ea5f0cb1e7.jpg")

corgi_membership_1 = Membership.create(user: user_2, meetup: corgi_meetup)
corgi_membership_2 = Membership.create(user: user_3, meetup: corgi_meetup)
lab_membership_1 = Membership.create(user: user_4, meetup: lab_meetup)
lab_membership_2 = Membership.create(user: user_5, meetup: lab_meetup)
yorkie_membership_1 = Membership.create(user: user_6, meetup: yorkie_meetup)
yorkie_membership_2 = Membership.create(user: user_7, meetup: yorkie_meetup)
yorkie_membership_3 = Membership.create(user: user_8, meetup: yorkie_meetup)
