# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |index|
  user = User.create(provider: "facebook", uid: index)
  profile = Profile.create(user_id: user.id,
                           email: "paco#{index}@dentistas.com",
                           username: "dentista#{index}",
                           name: "Paco",
                           image: "http://www.renaissancedental.com/getmedia/01415272-3342-4c4b-b795-716d55e8b2f0/Dentist_caucasian_man.aspx?width=180&height=180",
                           location: "Madrid, Spain",
                           age: 21 + 3*index,
                           gender: "male",
                           job: "Dentista",
                           web: "www.destistasunited.com",
                           summary: "Hello, I am Paco. I have been working as a dentist for 5 years. I am also interested in theatre and arts.",
                           what_i_look_for: "I am here to help and share my experience.",
                           offer_help?: true,
                           receive_help?: false)
  Test.create(profile_id: profile.id,
              openness: rand(1..5),
              conscientiousness: rand(1..5),
              extraversion: rand(1..5),
              agreeableness: rand(1..5),
              neuroticism: rand(1..5))
end
